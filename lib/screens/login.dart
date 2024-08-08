import 'package:coffee_app/common/app_routes.dart';
import 'package:coffee_app/screens/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 50),
                Image.asset(
                  'assets/images/logo_order_cafe.png',
                  width: 150,
                  height: 100,
                ),
                SizedBox(height: 30),
                Text('Đăng Nhập',
                    style: GoogleFonts.sora(
                        fontSize: 40,
                        fontWeight: FontWeight.w400,
                        color: Colors.brown)),
                SizedBox(height: 20),
                SizedBox(
                  width: 300,
                  child: TextFormField(
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'Email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.brown, // Màu viền khi focus
                          width: 2.0,
                        ),
                      ),
                      prefixIcon: Icon(Icons.email),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                SizedBox(
                  width: 300,
                  child: TextFormField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Mật khẩu',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.brown, // Màu viền khi focus
                          width: 2.0,
                        ),
                      ),
                      prefixIcon: Icon(Icons.lock),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 45),
                    child: TextButton(
                      onPressed: () {
                        // Navigate to the sign up screen
                      },
                      child: Text('Quên mật khẩu ?'),
                    ),
                  ),
                ),
                SizedBox(height: 24),
                CustomButton(
                  title: 'Đăng Nhập',
                  onPressed: () => Navigator.pushNamed(
                    context,
                    Routes.home,
                  ),
                ),
                SizedBox(height: 25),
                TextButton(
                  onPressed: () => Navigator.pushNamed(
                    context,
                    Routes.signup,
                  ),
                  child: Text(
                    'Bạn chưa có tài khoản ? Đăng ký',
                    style: GoogleFonts.sora(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.blue),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
