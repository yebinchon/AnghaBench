
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct execution_control_state {scalar_t__ another_trap; scalar_t__ remove_breakpoints_on_following_step; scalar_t__ update_step_sp; } ;


 size_t TARGET_SIGNAL_0 ;
 size_t TARGET_SIGNAL_TRAP ;
 scalar_t__ breakpoints_failed ;
 int breakpoints_inserted ;
 int currently_stepping (struct execution_control_state*) ;
 scalar_t__ insert_breakpoints () ;
 int prepare_to_wait (struct execution_control_state*) ;
 int prev_pc ;
 int read_pc () ;
 int read_sp () ;
 int remove_breakpoints () ;
 int resume (int ,size_t) ;
 int * signal_program ;
 int * step_resume_breakpoint ;
 int step_sp ;
 size_t stop_signal ;
 int stop_stepping (struct execution_control_state*) ;
 int * through_sigtramp_breakpoint ;
 scalar_t__ trap_expected ;

__attribute__((used)) static void
keep_going (struct execution_control_state *ecs)
{

  prev_pc = read_pc ();

  if (ecs->update_step_sp)
    step_sp = read_sp ();
  ecs->update_step_sp = 0;




  if (trap_expected && stop_signal != TARGET_SIGNAL_TRAP)
    {



      resume (currently_stepping (ecs), stop_signal);
    }
  else
    {
      if (step_resume_breakpoint == ((void*)0)
   && through_sigtramp_breakpoint == ((void*)0)
   && ecs->remove_breakpoints_on_following_step)
 {
   ecs->remove_breakpoints_on_following_step = 0;
   remove_breakpoints ();
   breakpoints_inserted = 0;
 }
      else if (!breakpoints_inserted &&
        (through_sigtramp_breakpoint != ((void*)0) || !ecs->another_trap))
 {
   breakpoints_failed = insert_breakpoints ();
   if (breakpoints_failed)
     {
       stop_stepping (ecs);
       return;
     }
   breakpoints_inserted = 1;
 }

      trap_expected = ecs->another_trap;
      if (stop_signal == TARGET_SIGNAL_TRAP && !signal_program[stop_signal])
 stop_signal = TARGET_SIGNAL_0;


      resume (currently_stepping (ecs), stop_signal);
    }

  prepare_to_wait (ecs);
}
