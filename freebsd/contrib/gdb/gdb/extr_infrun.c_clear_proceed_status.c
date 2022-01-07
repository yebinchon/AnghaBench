
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NO_STOP_QUIETLY ;
 int STEP_OVER_UNDEBUGGABLE ;
 int bpstat_clear (int *) ;
 int breakpoint_proceeded ;
 int null_frame_id ;
 scalar_t__ proceed_to_finish ;
 int step_frame_id ;
 int step_over_calls ;
 scalar_t__ step_range_end ;
 scalar_t__ step_range_start ;
 scalar_t__ stop_after_trap ;
 int stop_bpstat ;
 int stop_soon ;
 scalar_t__ trap_expected ;

void
clear_proceed_status (void)
{
  trap_expected = 0;
  step_range_start = 0;
  step_range_end = 0;
  step_frame_id = null_frame_id;
  step_over_calls = STEP_OVER_UNDEBUGGABLE;
  stop_after_trap = 0;
  stop_soon = NO_STOP_QUIETLY;
  proceed_to_finish = 0;
  breakpoint_proceeded = 1;


  bpstat_clear (&stop_bpstat);
}
