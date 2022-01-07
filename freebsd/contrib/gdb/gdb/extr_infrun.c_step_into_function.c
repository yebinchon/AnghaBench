
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct symtab_and_line {scalar_t__ pc; int section; } ;
struct symtab {scalar_t__ language; } ;
struct TYPE_2__ {scalar_t__ end; scalar_t__ pc; } ;
struct execution_control_state {scalar_t__ stop_func_start; scalar_t__ stop_func_end; TYPE_1__ sal; } ;


 int END_STEPPING_RANGE ;
 scalar_t__ SKIP_PROLOGUE (scalar_t__) ;
 int bp_step_resume ;
 scalar_t__ breakpoints_inserted ;
 int check_for_old_step_resume_breakpoint () ;
 int current_gdbarch ;
 TYPE_1__ find_pc_line (scalar_t__,int ) ;
 int find_pc_overlay (scalar_t__) ;
 struct symtab* find_pc_symtab (scalar_t__) ;
 scalar_t__ gdbarch_adjust_breakpoint_address (int ,scalar_t__) ;
 scalar_t__ gdbarch_adjust_breakpoint_address_p (int ) ;
 int init_sal (struct symtab_and_line*) ;
 int insert_breakpoints () ;
 int keep_going (struct execution_control_state*) ;
 scalar_t__ language_asm ;
 int null_frame_id ;
 int print_stop_reason (int ,int ) ;
 int set_momentary_breakpoint (struct symtab_and_line,int ,int ) ;
 int step_range_end ;
 int step_range_start ;
 int step_resume_breakpoint ;
 scalar_t__ stop_pc ;
 int stop_step ;
 int stop_stepping (struct execution_control_state*) ;

__attribute__((used)) static void
step_into_function (struct execution_control_state *ecs)
{
  struct symtab *s;
  struct symtab_and_line sr_sal;

  s = find_pc_symtab (stop_pc);
  if (s && s->language != language_asm)
    ecs->stop_func_start = SKIP_PROLOGUE (ecs->stop_func_start);

  ecs->sal = find_pc_line (ecs->stop_func_start, 0);






  if (ecs->sal.end
      && ecs->sal.pc != ecs->stop_func_start
      && ecs->sal.end < ecs->stop_func_end)
    ecs->stop_func_start = ecs->sal.end;
  if (gdbarch_adjust_breakpoint_address_p (current_gdbarch))
    {
      ecs->stop_func_start
 = gdbarch_adjust_breakpoint_address (current_gdbarch,
                                      ecs->stop_func_start);
    }

  if (ecs->stop_func_start == stop_pc)
    {

      stop_step = 1;
      print_stop_reason (END_STEPPING_RANGE, 0);
      stop_stepping (ecs);
      return;
    }
  else
    {

      init_sal (&sr_sal);
      sr_sal.pc = ecs->stop_func_start;
      sr_sal.section = find_pc_overlay (ecs->stop_func_start);



      check_for_old_step_resume_breakpoint ();
      step_resume_breakpoint =
 set_momentary_breakpoint (sr_sal, null_frame_id, bp_step_resume);
      if (breakpoints_inserted)
 insert_breakpoints ();


      step_range_end = step_range_start;
    }
  keep_going (ecs);
}
