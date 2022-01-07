
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int acquire_console_sem () ;
 int console_sem ;
 int console_suspend_enabled ;
 int console_suspended ;
 int printk (char*) ;
 int up (int *) ;

void suspend_console(void)
{
 if (!console_suspend_enabled)
  return;
 printk("Suspending console(s) (use no_console_suspend to debug)\n");
 acquire_console_sem();
 console_suspended = 1;
 up(&console_sem);
}
