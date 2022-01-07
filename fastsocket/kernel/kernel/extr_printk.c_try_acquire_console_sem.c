
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int console_locked ;
 scalar_t__ console_may_schedule ;
 int console_sem ;
 scalar_t__ console_suspended ;
 scalar_t__ down_trylock (int *) ;
 int up (int *) ;

int try_acquire_console_sem(void)
{
 if (down_trylock(&console_sem))
  return -1;
 if (console_suspended) {
  up(&console_sem);
  return -1;
 }
 console_locked = 1;
 console_may_schedule = 0;
 return 0;
}
