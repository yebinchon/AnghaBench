
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct execution_control_state {scalar_t__ stepping_through_solib_after_catch; int handling_longjmp; } ;


 scalar_t__ bpstat_should_step () ;
 scalar_t__ step_range_end ;
 int * step_resume_breakpoint ;
 int * through_sigtramp_breakpoint ;
 scalar_t__ trap_expected ;

__attribute__((used)) static int
currently_stepping (struct execution_control_state *ecs)
{
  return ((through_sigtramp_breakpoint == ((void*)0)
    && !ecs->handling_longjmp
    && ((step_range_end && step_resume_breakpoint == ((void*)0))
        || trap_expected))
   || ecs->stepping_through_solib_after_catch
   || bpstat_should_step ());
}
