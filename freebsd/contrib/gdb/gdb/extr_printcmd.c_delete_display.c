
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct display {int number; struct display* next; } ;


 struct display* display_chain ;
 int error (char*,int) ;
 int free_display (struct display*) ;

__attribute__((used)) static void
delete_display (int num)
{
  struct display *d1, *d;

  if (!display_chain)
    error ("No display number %d.", num);

  if (display_chain->number == num)
    {
      d1 = display_chain;
      display_chain = d1->next;
      free_display (d1);
    }
  else
    for (d = display_chain;; d = d->next)
      {
 if (d->next == 0)
   error ("No display number %d.", num);
 if (d->next->number == num)
   {
     d1 = d->next;
     d->next = d1->next;
     free_display (d1);
     break;
   }
      }
}
