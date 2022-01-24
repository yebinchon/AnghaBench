#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct symtab_and_line {void* pc; int /*<<< orphan*/  section; } ;
struct execution_control_state {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  frame_id; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  bp_step_resume ; 
 scalar_t__ breakpoints_inserted ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct symtab_and_line*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 TYPE_1__* FUNC12 (struct symtab_and_line,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  step_frame_id ; 
 TYPE_1__* step_resume_breakpoint ; 

__attribute__((used)) static void
FUNC13 (struct execution_control_state *ecs)
{
  struct symtab_and_line sr_sal;

  FUNC10 (&sr_sal);		/* initialize to zeros */

  /* NOTE: cagney/2003-04-06:

     At this point the equality get_frame_pc() == get_frame_func()
     should hold.  This may make it possible for this code to tell the
     frame where it's function is, instead of the reverse.  This would
     avoid the need to search for the frame's function, which can get
     very messy when there is no debug info available (look at the
     heuristic find pc start code found in targets like the MIPS).  */

  /* NOTE: cagney/2003-04-06:

     The intent of DEPRECATED_SAVED_PC_AFTER_CALL was to:

     - provide a very light weight equivalent to frame_unwind_pc()
     (nee FRAME_SAVED_PC) that avoids the prologue analyzer

     - avoid handling the case where the PC hasn't been saved in the
     prologue analyzer

     Unfortunately, not five lines further down, is a call to
     get_frame_id() and that is guarenteed to trigger the prologue
     analyzer.
     
     The `correct fix' is for the prologe analyzer to handle the case
     where the prologue is incomplete (PC in prologue) and,
     consequently, the return pc has not yet been saved.  It should be
     noted that the prologue analyzer needs to handle this case
     anyway: frameless leaf functions that don't save the return PC;
     single stepping through a prologue.

     The d10v handles all this by bailing out of the prologue analsis
     when it reaches the current instruction.  */

  if (FUNC2 ())
    sr_sal.pc = FUNC0 (FUNC1 (FUNC8 ()));
  else
    sr_sal.pc = FUNC0 (FUNC7 (FUNC8 ()));
  sr_sal.section = FUNC5 (sr_sal.pc);

  FUNC4 ();
  step_resume_breakpoint =
    FUNC12 (sr_sal, FUNC9 (FUNC8 ()),
			      bp_step_resume);

  if (FUNC6 (step_frame_id)
      && !FUNC3 (sr_sal.pc))
    step_resume_breakpoint->frame_id = step_frame_id;

  if (breakpoints_inserted)
    FUNC11 ();
}