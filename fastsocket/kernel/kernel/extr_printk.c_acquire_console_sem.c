
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int ) ;
 int console_locked ;
 int console_may_schedule ;
 int console_sem ;
 scalar_t__ console_suspended ;
 int down (int *) ;
 int in_interrupt () ;

void acquire_console_sem(void)
{
 BUG_ON(in_interrupt());
 down(&console_sem);
 if (console_suspended)
  return;
 console_locked = 1;
 console_may_schedule = 1;
}
