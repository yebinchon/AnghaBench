
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct display {int enabled_p; int number; struct display* next; } ;


 int atoi (char*) ;
 struct display* display_chain ;
 int error (char*) ;
 int printf_unfiltered (char*,int) ;

__attribute__((used)) static void
enable_display (char *args, int from_tty)
{
  char *p = args;
  char *p1;
  int num;
  struct display *d;

  if (p == 0)
    {
      for (d = display_chain; d; d = d->next)
 d->enabled_p = 1;
    }
  else
    while (*p)
      {
 p1 = p;
 while (*p1 >= '0' && *p1 <= '9')
   p1++;
 if (*p1 && *p1 != ' ' && *p1 != '\t')
   error ("Arguments must be display numbers.");

 num = atoi (p);

 for (d = display_chain; d; d = d->next)
   if (d->number == num)
     {
       d->enabled_p = 1;
       goto win;
     }
 printf_unfiltered ("No display number %d.\n", num);
      win:
 p = p1;
 while (*p == ' ' || *p == '\t')
   p++;
      }
}
