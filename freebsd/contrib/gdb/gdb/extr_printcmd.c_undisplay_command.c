
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atoi (char*) ;
 int clear_displays () ;
 int delete_display (int) ;
 int dont_repeat () ;
 int error (char*) ;
 scalar_t__ query (char*) ;

__attribute__((used)) static void
undisplay_command (char *args, int from_tty)
{
  char *p = args;
  char *p1;
  int num;

  if (args == 0)
    {
      if (query ("Delete all auto-display expressions? "))
 clear_displays ();
      dont_repeat ();
      return;
    }

  while (*p)
    {
      p1 = p;
      while (*p1 >= '0' && *p1 <= '9')
 p1++;
      if (*p1 && *p1 != ' ' && *p1 != '\t')
 error ("Arguments must be display numbers.");

      num = atoi (p);

      delete_display (num);

      p = p1;
      while (*p == ' ' || *p == '\t')
 p++;
    }
  dont_repeat ();
}
