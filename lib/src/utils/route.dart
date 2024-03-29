import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:talk/src/screen/login_screen.dart';
import 'package:talk/src/screen/sign_up_screen.dart';
import 'package:talk/src/server/phone_auth_repository.dart';
import 'package:talk/src/screen/phon_auth_screen.dart';
import 'package:talk/src/screen/main_screen.dart';
import 'package:talk/src/widgets/privacy_policy_screen.dart';

class Routes {
  static final userRepository =
      UserRepository(firebaseAuth: FirebaseAuth.instance);

  static Map<String, WidgetBuilder> getRoute() {
    return <String, WidgetBuilder>{
      PhoneAuthScreen.route: (_) => PhoneAuthScreen(
            userRepository: userRepository,
          ),
      MainScreen.route: (_) => MainScreen(),
      LoginPage.route: (_) => LoginPage(),
      SignUpScreen.route: (_) => SignUpScreen(),
      PrivacyPolicyScreen.route: (_) => PrivacyPolicyScreen(),
    };
  }
}
