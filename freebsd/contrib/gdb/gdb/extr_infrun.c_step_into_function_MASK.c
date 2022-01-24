#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct symtab_and_line {scalar_t__ pc; int /*<<< orphan*/  section; } ;
struct symtab {scalar_t__ language; } ;
struct TYPE_2__ {scalar_t__ end; scalar_t__ pc; } ;
struct execution_control_state {scalar_t__ stop_func_start; scalar_t__ stop_func_end; TYPE_1__ sal; } ;

/* Variables and functions */
 int /*<<< orphan*/  END_STEPPING_RANGE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  bp_step_resume ; 
 scalar_t__ breakpoints_inserted ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  current_gdbarch ; 
 TYPE_1__ FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 struct symtab* FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct symtab_and_line*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct execution_control_state*) ; 
 scalar_t__ language_asm ; 
 int /*<<< orphan*/  null_frame_id ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct symtab_and_line,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  step_range_end ; 
 int /*<<< orphan*/  step_range_start ; 
 int /*<<< orphan*/  step_resume_breakpoint ; 
 scalar_t__ stop_pc ; 
 int stop_step ; 
 int /*<<< orphan*/  FUNC12 (struct execution_control_state*) ; 

__attribute__((used)) static void
FUNC13 (struct execution_control_state *ecs)
{
  struct symtab *s;
  struct symtab_and_line sr_sal;

  s = FUNC4 (stop_pc);
  if (s && s->language != language_asm)
    ecs->stop_func_start = FUNC0 (ecs->stop_func_start);

  ecs->sal = FUNC2 (ecs->stop_func_start, 0);
  /* Use the step_resume_break to step until the end of the prologue,
     even if that involves jumps (as it seems to on the vax under
     4.2).  */
  /* If the prologue ends in the middle of a source line, continue to
     the end of that source line (if it is still within the function).
     Otherwise, just go to end of prologue.  */
  if (ecs->sal.end
      && ecs->sal.pc != ecs->stop_func_start
      && ecs->sal.end < ecs->stop_func_end)
    ecs->stop_func_start = ecs->sal.end;

  /* Architectures which require breakpoint adjustment might not be able
     to place a breakpoint at the computed address.  If so, the test
     ``ecs->stop_func_start == stop_pc'' will never succeed.  Adjust
     ecs->stop_func_start to an address at which a breakpoint may be
     legitimately placed.
     
     Note:  kevinb/2004-01-19:  On FR-V, if this adjustment is not
     made, GDB will enter an infinite loop when stepping through
     optimized code consisting of VLIW instructions which contain
     subinstructions corresponding to different source lines.  On
     FR-V, it's not permitted to place a breakpoint on any but the
     first subinstruction of a VLIW instruction.  When a breakpoint is
     set, GDB will adjust the breakpoint address to the beginning of
     the VLIW instruction.  Thus, we need to make the corresponding
     adjustment here when computing the stop address.  */
     
  if (FUNC6 (current_gdbarch))
    {
      ecs->stop_func_start
	= FUNC5 (current_gdbarch,
	                                     ecs->stop_func_start);
    }

  if (ecs->stop_func_start == stop_pc)
    {
      /* We are already there: stop now.  */
      stop_step = 1;
      FUNC10 (END_STEPPING_RANGE, 0);
      FUNC12 (ecs);
      return;
    }
  else
    {
      /* Put the step-breakpoint there and go until there.  */
      FUNC7 (&sr_sal);	/* initialize to zeroes */
      sr_sal.pc = ecs->stop_func_start;
      sr_sal.section = FUNC3 (ecs->stop_func_start);
      /* Do not specify what the fp should be when we stop since on
         some machines the prologue is where the new fp value is
         established.  */
      FUNC1 ();
      step_resume_breakpoint =
	FUNC11 (sr_sal, null_frame_id, bp_step_resume);
      if (breakpoints_inserted)
	FUNC8 ();

      /* And make sure stepping stops right away then.  */
      step_range_end = step_range_start;
    }
  FUNC9 (ecs);
}