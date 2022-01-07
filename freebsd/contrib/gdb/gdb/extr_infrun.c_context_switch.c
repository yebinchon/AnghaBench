
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct execution_control_state {int ptid; int current_symtab; int current_line; int stepping_through_sigtramp; int stepping_through_solib_catchpoints; int stepping_through_solib_after_catch; int another_trap; int handling_longjmp; } ;


 scalar_t__ in_thread_list (int ) ;
 int inferior_ptid ;
 int load_infrun_state (int ,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *) ;
 int prev_pc ;
 int save_infrun_state (int ,int ,int ,int ,int ,int ,int ,int *,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int step_frame_id ;
 int step_range_end ;
 int step_range_start ;
 int step_resume_breakpoint ;
 int step_sp ;
 int through_sigtramp_breakpoint ;
 int trap_expected ;

__attribute__((used)) static void
context_switch (struct execution_control_state *ecs)
{






  if (in_thread_list (inferior_ptid) && in_thread_list (ecs->ptid))
    {

      save_infrun_state (inferior_ptid, prev_pc,
    trap_expected, step_resume_breakpoint,
    through_sigtramp_breakpoint, step_range_start,
    step_range_end, &step_frame_id,
    ecs->handling_longjmp, ecs->another_trap,
    ecs->stepping_through_solib_after_catch,
    ecs->stepping_through_solib_catchpoints,
    ecs->stepping_through_sigtramp,
    ecs->current_line, ecs->current_symtab, step_sp);


      load_infrun_state (ecs->ptid, &prev_pc,
    &trap_expected, &step_resume_breakpoint,
    &through_sigtramp_breakpoint, &step_range_start,
    &step_range_end, &step_frame_id,
    &ecs->handling_longjmp, &ecs->another_trap,
    &ecs->stepping_through_solib_after_catch,
    &ecs->stepping_through_solib_catchpoints,
    &ecs->stepping_through_sigtramp,
    &ecs->current_line, &ecs->current_symtab, &step_sp);
    }
  inferior_ptid = ecs->ptid;
}
