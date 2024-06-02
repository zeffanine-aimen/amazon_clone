import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/utils/colors.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mobileBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SvgPicture.asset(
              'assets/ic_instagram.svg',
              height: 50.0,
              color: primaryColor,
            ),
            SizedBox(height: 50.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                labelStyle: TextStyle(color: secondaryColor),
                filled: true,
                fillColor: mobileSearchColor,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide.none,
                ),
              ),
              style: TextStyle(color: primaryColor),
            ),
            SizedBox(height: 20.0),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(color: secondaryColor),
                filled: true,
                fillColor: mobileSearchColor,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide.none,
                ),
              ),
              style: TextStyle(color: primaryColor),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Handle login logic
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: blueColor,
                minimumSize: Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              child: Text(
                'Login',
                style: TextStyle(color: primaryColor),
                ),
            ),
            SizedBox(height: 100.0),
            RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Don\'t have an account? ',
                  style: TextStyle(color: secondaryColor),
                ),
                TextSpan(
                  text: 'Sign up',
                  style: TextStyle(
                    color: primaryColor,
                    decoration: TextDecoration.underline,
                  ),
                  // recognizer: TapGestureRecognizer()
                  // ..onTap = () {
                  //     // Handle navigation to sign up screen
                  //   },
                ),
              ],
            ),
          ),
          ],
        ),
      ),
    );
  }
}