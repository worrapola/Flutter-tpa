import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
//Explicit

//Method
  Widget uploadButton() {
    return IconButton(
      icon: Icon(Icons.cloud_upload),
      onPressed: () {},
    );
  }

  Widget nameText() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Name :',
        labelStyle: TextStyle(
          color: Colors.blue,
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
        ),
        helperText: 'FisrtName and LastName',
        helperStyle: TextStyle(
          color: Colors.blue[200],
          fontSize: 14.0,
          fontStyle: FontStyle.italic,
        ),
        icon: Icon(
          Icons.person,
          size: 48.0,
          color: Colors.blue,
        ),
      ),
    );
  }

  Widget emailText() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Email :',
        labelStyle: TextStyle(
          color: Colors.green,
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
        ),
        helperText: 'Email format',
        helperStyle: TextStyle(
          color: Colors.green[200],
          fontSize: 14.0,
          fontStyle: FontStyle.italic,
        ),
        icon: Icon(
          Icons.email,
          size: 48.0,
          color: Colors.green,
        ),
      ),
    );
  }

  Widget passwordText() {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Password :',
        labelStyle: TextStyle(
          color: Colors.red,
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
        ),
        helperText: 'More 6 Characters',
        helperStyle: TextStyle(
          color: Colors.red[200],
          fontSize: 14.0,
          fontStyle: FontStyle.italic,
        ),
        icon: Icon(
          Icons.lock,
          size: 48.0,
          color: Colors.red,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[uploadButton()],
        backgroundColor: Colors.orange[700],
        title: Text('Register'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 30.0),
        alignment: Alignment.topCenter,
        child: Container(
          width: 250.0,
          child: Column(
            children: <Widget>[
              nameText(),
              emailText(),
              passwordText(),
            ],
          ),
        ),
      ),
    );
  }
}
