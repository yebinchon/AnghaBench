
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct console {int flags; struct console* next; } ;


 int CON_BRL ;
 int CON_CONSDEV ;
 int acquire_console_sem () ;
 int braille_unregister_console (struct console*) ;
 struct console* console_drivers ;
 int release_console_sem () ;

int unregister_console(struct console *console)
{
        struct console *a, *b;
 int res = 1;






 acquire_console_sem();
 if (console_drivers == console) {
  console_drivers=console->next;
  res = 0;
 } else if (console_drivers) {
  for (a=console_drivers->next, b=console_drivers ;
       a; b=a, a=b->next) {
   if (a == console) {
    b->next = a->next;
    res = 0;
    break;
   }
  }
 }





 if (console_drivers != ((void*)0) && console->flags & CON_CONSDEV)
  console_drivers->flags |= CON_CONSDEV;

 release_console_sem();
 return res;
}
