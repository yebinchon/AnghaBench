
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ __debug_locks_off () ;
 int console_verbose () ;
 int debug_locks_silent ;

int debug_locks_off(void)
{
 if (__debug_locks_off()) {
  if (!debug_locks_silent) {
   console_verbose();
   return 1;
  }
 }
 return 0;
}
