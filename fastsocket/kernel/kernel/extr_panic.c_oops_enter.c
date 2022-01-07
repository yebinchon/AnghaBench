
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int debug_locks_off () ;
 int do_oops_enter_exit () ;
 int tracing_off () ;

void oops_enter(void)
{
 tracing_off();

 debug_locks_off();
 do_oops_enter_exit();
}
