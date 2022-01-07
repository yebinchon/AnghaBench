
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct display {struct display* exp; } ;


 int xfree (struct display*) ;

__attribute__((used)) static void
free_display (struct display *d)
{
  xfree (d->exp);
  xfree (d);
}
