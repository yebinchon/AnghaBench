
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int shell_escape (char*,int) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 char* xmalloc (int) ;

__attribute__((used)) static void
make_command (char *arg, int from_tty)
{
  char *p;

  if (arg == 0)
    p = "make";
  else
    {
      p = xmalloc (sizeof ("make ") + strlen (arg));
      strcpy (p, "make ");
      strcpy (p + sizeof ("make ") - 1, arg);
    }

  shell_escape (p, from_tty);
}
