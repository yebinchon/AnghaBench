
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf_unfiltered (int ,char*) ;
 int gdb_stdlog ;
 scalar_t__ monitor_debug_p ;
 int monitor_interrupt_twice ;
 scalar_t__ remote_debug ;
 int signal (int,int ) ;
 int target_stop () ;

__attribute__((used)) static void
monitor_interrupt (int signo)
{

  signal (signo, monitor_interrupt_twice);

  if (monitor_debug_p || remote_debug)
    fprintf_unfiltered (gdb_stdlog, "monitor_interrupt called\n");

  target_stop ();
}
