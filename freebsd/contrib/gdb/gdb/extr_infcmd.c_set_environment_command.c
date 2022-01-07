
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int error_no_arg (char*) ;
 int inferior_environ ;
 int printf_filtered (char*,...) ;
 char* savestring (char*,int) ;
 int set_in_environ (int ,char*,char*) ;
 scalar_t__ strchr (char*,char) ;
 int strlen (char*) ;
 int xfree (char*) ;

__attribute__((used)) static void
set_environment_command (char *arg, int from_tty)
{
  char *p, *val, *var;
  int nullset = 0;

  if (arg == 0)
    error_no_arg ("environment variable and value");


  p = (char *) strchr (arg, '=');
  val = (char *) strchr (arg, ' ');

  if (p != 0 && val != 0)
    {



      if (p > val)
 while (*val == ' ')
   val++;



      if (p > val)
 p = val - 1;
    }
  else if (val != 0 && p == 0)
    p = val;

  if (p == arg)
    error_no_arg ("environment variable to set");

  if (p == 0 || p[1] == 0)
    {
      nullset = 1;
      if (p == 0)
 p = arg + strlen (arg);
    }
  else
    {

      val = p + 1;
      while (*val == ' ' || *val == '\t')
 val++;
    }

  while (p != arg && (p[-1] == ' ' || p[-1] == '\t'))
    p--;

  var = savestring (arg, p - arg);
  if (nullset)
    {
      printf_filtered ("Setting environment variable ");
      printf_filtered ("\"%s\" to null value.\n", var);
      set_in_environ (inferior_environ, var, "");
    }
  else
    set_in_environ (inferior_environ, var, val);
  xfree (var);
}
