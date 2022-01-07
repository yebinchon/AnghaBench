
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NO_STOP_QUIETLY ;
 scalar_t__ STARTUP_WITH_SHELL ;
 int STOP_QUIETLY ;
 scalar_t__ TARGET_SIGNAL_0 ;
 scalar_t__ TARGET_SIGNAL_TRAP ;
 int clear_proceed_status () ;
 scalar_t__ inferior_ignoring_leading_exec_events ;
 int inferior_ignoring_startup_exec_events ;
 int init_wait_for_inferior () ;
 int resume (int ,scalar_t__) ;
 scalar_t__ stop_signal ;
 int stop_soon ;
 scalar_t__ target_reported_exec_events_per_exec_call () ;
 int target_terminal_inferior () ;
 int target_terminal_init () ;
 int wait_for_inferior () ;

void
startup_inferior (int ntraps)
{
  int pending_execs = ntraps;
  int terminal_initted;





  clear_proceed_status ();

  init_wait_for_inferior ();

  terminal_initted = 0;

  if (STARTUP_WITH_SHELL)
    inferior_ignoring_startup_exec_events = ntraps;
  else
    inferior_ignoring_startup_exec_events = 0;
  inferior_ignoring_leading_exec_events =
    target_reported_exec_events_per_exec_call () - 1;

  while (1)
    {

      stop_soon = STOP_QUIETLY;
      wait_for_inferior ();
      if (stop_signal != TARGET_SIGNAL_TRAP)
 {


   resume (0, stop_signal);
 }
      else
 {

   if (!terminal_initted)
     {






       target_terminal_init ();


       target_terminal_inferior ();

       terminal_initted = 1;
     }

   pending_execs = pending_execs - 1;
   if (0 == pending_execs)
     break;

   resume (0, TARGET_SIGNAL_0);
 }
    }
  stop_soon = NO_STOP_QUIETLY;
}
