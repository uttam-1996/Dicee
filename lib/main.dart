import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    DiceApp(),
  );
}

class DiceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("Dicee"),
        ),
        body: DiceBody(),
      ),
    );
  }
}

class DiceBody extends StatefulWidget {
  @override
  _DiceBodyState createState() => _DiceBodyState();
}

class _DiceBodyState extends State<DiceBody> {
  int leftButton = 1;
  int rightButton = 2;
  void buttonClick() {
    setState(() {
      leftButton = Random().nextInt(6) + 1;
      rightButton = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: () {
                buttonClick();
              },
              child: Image.asset('images/dice$leftButton.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                buttonClick();
              },
              child: Image.asset('images/dice$rightButton.png'),
            ),
          )
        ],
      ),
    );
  }
}
