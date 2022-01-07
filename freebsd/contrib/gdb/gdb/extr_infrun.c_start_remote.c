
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STOP_QUIETLY ;
 int init_thread_list () ;
 int init_wait_for_inferior () ;
 int normal_stop () ;
 int stop_soon ;
 scalar_t__ trap_expected ;
 int wait_for_inferior () ;

void
start_remote (void)
{
  init_thread_list ();
  init_wait_for_inferior ();
  stop_soon = STOP_QUIETLY;
  trap_expected = 0;
  wait_for_inferior ();
  normal_stop ();
}
