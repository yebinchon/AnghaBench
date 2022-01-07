
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef int intmax_t ;



__attribute__((used)) static intmax_t
postfix_to_mult(const char expr)
{
 intmax_t mult;

 mult = 0;
 switch (expr) {
 case 'B':
 case 'b':
  mult = 512;
  break;
 case 'K':
 case 'k':
  mult = 1 << 10;
  break;
 case 'M':
 case 'm':
  mult = 1 << 20;
  break;
 case 'G':
 case 'g':
  mult = 1 << 30;
  break;
 case 'T':
 case 't':
  mult = (uintmax_t)1 << 40;
  break;
 case 'P':
 case 'p':
  mult = (uintmax_t)1 << 50;
  break;
 case 'W':
 case 'w':
  mult = sizeof(int);
  break;
 }

 return (mult);
}
