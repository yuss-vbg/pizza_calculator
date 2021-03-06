import 'package:flutter/material.dart';
import 'package:pizza_calculator/auth_page.dart';

import 'nav_drawer.dart';
import 'navigation_drawer_screen.dart';

main() {
  runApp(const NavigationDemo());
}

class NavigationDemo extends StatefulWidget {
  const NavigationDemo({Key? key}) : super(key: key);

  @override
  _NavigationDemoState createState() => _NavigationDemoState();
}

class _NavigationDemoState extends State<NavigationDemo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: const MainScreen(),
      initialRoute: '/',
      routes: {
        '/': (context) => AuthPageScreen(),

        '/auth_page': (context) => AuthPageScreen(),
      },
    );
  }
}

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);

  final _messengerKey = GlobalKey<ScaffoldMessengerState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(titleStr: 'Pizza AppBar', buttonStyle: null),
        drawer: navDrawer(context, _messengerKey),
        body: const Center(
          child: Text('Главная станица'),
        ));
  }
}


