
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct display {int number; scalar_t__ enabled_p; struct display* next; } ;


 struct display* display_chain ;
 int printf_unfiltered (char*,int) ;

void
disable_display (int num)
{
  struct display *d;

  for (d = display_chain; d; d = d->next)
    if (d->number == num)
      {
 d->enabled_p = 0;
 return;
      }
  printf_unfiltered ("No display number %d.\n", num);
}
