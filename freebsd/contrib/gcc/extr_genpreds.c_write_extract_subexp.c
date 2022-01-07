
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ISDIGIT (char const) ;
 scalar_t__ ISLOWER (char const) ;
 int fputs (char*,int ) ;
 int gcc_unreachable () ;
 int printf (char*,char const) ;
 int stdout ;
 int strlen (char const*) ;

__attribute__((used)) static void
write_extract_subexp (const char *path)
{
  int len = strlen (path);
  int i;



  for (i = len - 1; i >= 0; i--)
    {
      if (ISLOWER (path[i]))
 fputs ("XVECEXP (", stdout);
      else if (ISDIGIT (path[i]))
 fputs ("XEXP (", stdout);
      else
 gcc_unreachable ();
    }

  fputs ("op", stdout);

  for (i = 0; i < len; i++)
    {
      if (ISLOWER (path[i]))
 printf (", 0, %d)", path[i] - 'a');
      else if (ISDIGIT (path[i]))
 printf (", %d)", path[i] - '0');
      else
 gcc_unreachable ();
    }
}
