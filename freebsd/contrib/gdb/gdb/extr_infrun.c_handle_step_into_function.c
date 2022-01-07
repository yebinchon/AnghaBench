
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symtab_and_line {scalar_t__ line; } ;
struct execution_control_state {scalar_t__ stop_func_start; } ;
typedef scalar_t__ CORE_ADDR ;


 int END_STEPPING_RANGE ;
 scalar_t__ IGNORE_HELPER_CALL (int ) ;
 scalar_t__ SKIP_TRAMPOLINE_CODE (int ) ;
 scalar_t__ STEP_OVER_ALL ;
 scalar_t__ STEP_OVER_NONE ;
 scalar_t__ STEP_OVER_UNDEBUGGABLE ;
 struct symtab_and_line find_pc_line (scalar_t__,int ) ;
 int frame_id_build (int ,int ) ;
 scalar_t__ frame_id_inner (int ,int ) ;
 scalar_t__ in_prologue (int ,scalar_t__) ;
 int keep_going (struct execution_control_state*) ;
 int null_frame_id ;
 scalar_t__ pc_in_sigtramp (int ) ;
 int prev_pc ;
 int print_stop_reason (int ,int ) ;
 int read_sp () ;
 scalar_t__ skip_language_trampoline (int ) ;
 int step_frame_id ;
 int step_into_function (struct execution_control_state*) ;
 scalar_t__ step_over_calls ;
 int step_over_function (struct execution_control_state*) ;
 int step_range_end ;
 scalar_t__ step_stop_if_no_debug ;
 int stop_pc ;
 int stop_step ;
 int stop_stepping (struct execution_control_state*) ;

__attribute__((used)) static void
handle_step_into_function (struct execution_control_state *ecs)
{
  CORE_ADDR real_stop_pc;

  if ((step_over_calls == STEP_OVER_NONE)
      || ((step_range_end == 1)
          && in_prologue (prev_pc, ecs->stop_func_start)))
    {






      stop_step = 1;
      print_stop_reason (END_STEPPING_RANGE, 0);
      stop_stepping (ecs);
      return;
    }

  if (step_over_calls == STEP_OVER_ALL || IGNORE_HELPER_CALL (stop_pc))
    {


      if (pc_in_sigtramp (stop_pc)
          && frame_id_inner (step_frame_id,
                             frame_id_build (read_sp (), 0)))
        step_frame_id = null_frame_id;

      step_over_function (ecs);
      keep_going (ecs);
      return;
    }






  real_stop_pc = skip_language_trampoline (stop_pc);
  if (real_stop_pc == 0)
    real_stop_pc = SKIP_TRAMPOLINE_CODE (stop_pc);
  if (real_stop_pc != 0)
    ecs->stop_func_start = real_stop_pc;







  {
    struct symtab_and_line tmp_sal;

    tmp_sal = find_pc_line (ecs->stop_func_start, 0);
    if (tmp_sal.line != 0)
      {
        step_into_function (ecs);
        return;
      }
  }




  if (step_over_calls == STEP_OVER_UNDEBUGGABLE && step_stop_if_no_debug)
    {
      stop_step = 1;
      print_stop_reason (END_STEPPING_RANGE, 0);
      stop_stepping (ecs);
      return;
    }

  step_over_function (ecs);
  keep_going (ecs);
  return;
}
