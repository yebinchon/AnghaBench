
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symtab_and_line {int pc; int section; } ;
struct execution_control_state {int remove_breakpoints_on_following_step; int another_trap; } ;


 scalar_t__ INNER_THAN (int ,int ) ;
 int bp_through_sigtramp ;
 scalar_t__ breakpoints_inserted ;
 int find_pc_overlay (int ) ;
 int init_sal (struct symtab_and_line*) ;
 int insert_breakpoints () ;
 int null_frame_id ;
 scalar_t__ pc_in_sigtramp (int ) ;
 int prev_pc ;
 int read_sp () ;
 int set_momentary_breakpoint (struct symtab_and_line,int ,int ) ;
 int step_sp ;
 int stop_pc ;
 int through_sigtramp_breakpoint ;
 scalar_t__ trap_expected ;

__attribute__((used)) static void
check_sigtramp2 (struct execution_control_state *ecs)
{
  if (trap_expected
      && pc_in_sigtramp (stop_pc)
      && !pc_in_sigtramp (prev_pc)
      && INNER_THAN (read_sp (), step_sp))
    {
      struct symtab_and_line sr_sal;

      init_sal (&sr_sal);
      sr_sal.pc = prev_pc;
      sr_sal.section = find_pc_overlay (sr_sal.pc);


      through_sigtramp_breakpoint =
 set_momentary_breakpoint (sr_sal, null_frame_id, bp_through_sigtramp);
      if (breakpoints_inserted)
 insert_breakpoints ();

      ecs->remove_breakpoints_on_following_step = 1;
      ecs->another_trap = 1;
    }
}
