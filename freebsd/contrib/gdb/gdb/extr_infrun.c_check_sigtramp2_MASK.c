#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct symtab_and_line {int /*<<< orphan*/  pc; int /*<<< orphan*/  section; } ;
struct execution_control_state {int remove_breakpoints_on_following_step; int another_trap; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bp_through_sigtramp ; 
 scalar_t__ breakpoints_inserted ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct symtab_and_line*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  null_frame_id ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  prev_pc ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct symtab_and_line,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  step_sp ; 
 int /*<<< orphan*/  stop_pc ; 
 int /*<<< orphan*/  through_sigtramp_breakpoint ; 
 scalar_t__ trap_expected ; 

__attribute__((used)) static void
FUNC7 (struct execution_control_state *ecs)
{
  if (trap_expected
      && FUNC4 (stop_pc)
      && !FUNC4 (prev_pc)
      && FUNC0 (FUNC5 (), step_sp))
    {
      /* What has happened here is that we have just stepped the
         inferior with a signal (because it is a signal which
         shouldn't make us stop), thus stepping into sigtramp.

         So we need to set a step_resume_break_address breakpoint and
         continue until we hit it, and then step.  FIXME: This should
         be more enduring than a step_resume breakpoint; we should
         know that we will later need to keep going rather than
         re-hitting the breakpoint here (see the testsuite,
         gdb.base/signals.exp where it says "exceedingly difficult").  */

      struct symtab_and_line sr_sal;

      FUNC2 (&sr_sal);	/* initialize to zeroes */
      sr_sal.pc = prev_pc;
      sr_sal.section = FUNC1 (sr_sal.pc);
      /* We perhaps could set the frame if we kept track of what the
         frame corresponding to prev_pc was.  But we don't, so don't.  */
      through_sigtramp_breakpoint =
	FUNC6 (sr_sal, null_frame_id, bp_through_sigtramp);
      if (breakpoints_inserted)
	FUNC3 ();

      ecs->remove_breakpoints_on_following_step = 1;
      ecs->another_trap = 1;
    }
}