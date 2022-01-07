
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int abort () ;
 scalar_t__ pthread_self () ;
 int strlen (char const*) ;
 int write (int,char const*,int ) ;
 int write2 (char*) ;
 int write_itoa (int,unsigned int) ;

void
__assert_fail (const char *msg, const char *file, unsigned line, const char *func)
{

  write (2, ("mf"), strlen (("mf")));;





  write (2, (": assertion failure: `"), strlen ((": assertion failure: `")));;
  write (2, msg, strlen (msg));
  write (2, ("' in "), strlen (("' in ")));;
  write (2, func, strlen (func));
  write (2, (" at "), strlen ((" at ")));;
  write (2, file, strlen (file));
  write (2, (":"), strlen ((":")));;
  write_itoa (2, line);
  write (2, ("\n"), strlen (("\n")));;

  abort ();
}
