
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inferior_status {int selected_frame_id; scalar_t__ restore_stack_info; int registers; int stop_registers; int proceed_to_finish; int breakpoint_proceeded; int stop_bpstat; int stop_soon; int stop_after_trap; int step_over_calls; int step_frame_id; int step_range_end; int step_range_start; int trap_expected; int stopped_by_random_signal; int stop_stack_dummy; int stop_step; int stop_pc; int stop_signal; } ;


 int RETURN_MASK_ERROR ;
 int bpstat_clear (int *) ;
 int breakpoint_proceeded ;
 scalar_t__ catch_errors (int ,int *,char*,int ) ;
 int current_regcache ;
 int get_current_frame () ;
 int proceed_to_finish ;
 int regcache_cpy (int ,int ) ;
 int regcache_xfree (int ) ;
 int restore_selected_frame ;
 int select_frame (int ) ;
 int step_frame_id ;
 int step_over_calls ;
 int step_range_end ;
 int step_range_start ;
 int stop_after_trap ;
 int stop_bpstat ;
 int stop_pc ;
 int stop_registers ;
 int stop_signal ;
 int stop_soon ;
 int stop_stack_dummy ;
 int stop_step ;
 int stopped_by_random_signal ;
 scalar_t__ target_has_execution ;
 scalar_t__ target_has_stack ;
 int trap_expected ;
 int xfree (struct inferior_status*) ;

void
restore_inferior_status (struct inferior_status *inf_status)
{
  stop_signal = inf_status->stop_signal;
  stop_pc = inf_status->stop_pc;
  stop_step = inf_status->stop_step;
  stop_stack_dummy = inf_status->stop_stack_dummy;
  stopped_by_random_signal = inf_status->stopped_by_random_signal;
  trap_expected = inf_status->trap_expected;
  step_range_start = inf_status->step_range_start;
  step_range_end = inf_status->step_range_end;
  step_frame_id = inf_status->step_frame_id;
  step_over_calls = inf_status->step_over_calls;
  stop_after_trap = inf_status->stop_after_trap;
  stop_soon = inf_status->stop_soon;
  bpstat_clear (&stop_bpstat);
  stop_bpstat = inf_status->stop_bpstat;
  breakpoint_proceeded = inf_status->breakpoint_proceeded;
  proceed_to_finish = inf_status->proceed_to_finish;


  regcache_xfree (stop_registers);
  stop_registers = inf_status->stop_registers;



  if (target_has_execution)

    regcache_cpy (current_regcache, inf_status->registers);
  regcache_xfree (inf_status->registers);
  if (target_has_stack && inf_status->restore_stack_info)
    {



      if (catch_errors
   (restore_selected_frame, &inf_status->selected_frame_id,
    "Unable to restore previously selected frame:\n",
    RETURN_MASK_ERROR) == 0)


 select_frame (get_current_frame ());

    }

  xfree (inf_status);
}
