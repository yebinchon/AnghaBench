
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct display {struct display* next; struct display* exp; } ;


 struct display* display_chain ;
 int xfree (struct display*) ;

void
clear_displays (void)
{
  struct display *d;

  while ((d = display_chain) != ((void*)0))
    {
      xfree (d->exp);
      display_chain = d->next;
      xfree (d);
    }
}
