
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct symtab_and_line {void* pc; int section; } ;
struct execution_control_state {int dummy; } ;
struct TYPE_3__ {int frame_id; } ;


 void* ADDR_BITS_REMOVE (int ) ;
 int DEPRECATED_SAVED_PC_AFTER_CALL (int ) ;
 scalar_t__ DEPRECATED_SAVED_PC_AFTER_CALL_P () ;
 int IN_SOLIB_DYNSYM_RESOLVE_CODE (void*) ;
 int bp_step_resume ;
 scalar_t__ breakpoints_inserted ;
 int check_for_old_step_resume_breakpoint () ;
 int find_pc_overlay (void*) ;
 scalar_t__ frame_id_p (int ) ;
 int frame_pc_unwind (int ) ;
 int get_current_frame () ;
 int get_frame_id (int ) ;
 int init_sal (struct symtab_and_line*) ;
 int insert_breakpoints () ;
 TYPE_1__* set_momentary_breakpoint (struct symtab_and_line,int ,int ) ;
 int step_frame_id ;
 TYPE_1__* step_resume_breakpoint ;

__attribute__((used)) static void
step_over_function (struct execution_control_state *ecs)
{
  struct symtab_and_line sr_sal;

  init_sal (&sr_sal);
  if (DEPRECATED_SAVED_PC_AFTER_CALL_P ())
    sr_sal.pc = ADDR_BITS_REMOVE (DEPRECATED_SAVED_PC_AFTER_CALL (get_current_frame ()));
  else
    sr_sal.pc = ADDR_BITS_REMOVE (frame_pc_unwind (get_current_frame ()));
  sr_sal.section = find_pc_overlay (sr_sal.pc);

  check_for_old_step_resume_breakpoint ();
  step_resume_breakpoint =
    set_momentary_breakpoint (sr_sal, get_frame_id (get_current_frame ()),
         bp_step_resume);

  if (frame_id_p (step_frame_id)
      && !IN_SOLIB_DYNSYM_RESOLVE_CODE (sr_sal.pc))
    step_resume_breakpoint->frame_id = step_frame_id;

  if (breakpoints_inserted)
    insert_breakpoints ();
}
