
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int symtab; int line; } ;
struct execution_control_state {int ws; int * wp; int waiton_ptid; int infwait_state; TYPE_1__ sal; int current_symtab; int current_line; scalar_t__ stepping_through_sigtramp; scalar_t__ enable_hw_watchpoints_after_wait; int * stepping_through_solib_catchpoints; scalar_t__ stepping_through_solib_after_catch; scalar_t__ update_step_sp; scalar_t__ handling_longjmp; scalar_t__ remove_breakpoints_on_following_step; scalar_t__ random_signal; } ;


 TYPE_1__ find_pc_line (int ,int ) ;
 int infwait_normal_state ;
 int pid_to_ptid (int) ;
 int prev_pc ;

void
init_execution_control_state (struct execution_control_state *ecs)
{

  ecs->random_signal = 0;
  ecs->remove_breakpoints_on_following_step = 0;
  ecs->handling_longjmp = 0;
  ecs->update_step_sp = 0;
  ecs->stepping_through_solib_after_catch = 0;
  ecs->stepping_through_solib_catchpoints = ((void*)0);
  ecs->enable_hw_watchpoints_after_wait = 0;
  ecs->stepping_through_sigtramp = 0;
  ecs->sal = find_pc_line (prev_pc, 0);
  ecs->current_line = ecs->sal.line;
  ecs->current_symtab = ecs->sal.symtab;
  ecs->infwait_state = infwait_normal_state;
  ecs->waiton_ptid = pid_to_ptid (-1);
  ecs->wp = &(ecs->ws);
}
