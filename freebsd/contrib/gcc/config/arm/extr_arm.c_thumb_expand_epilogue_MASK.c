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
typedef  int /*<<< orphan*/  rtx ;
struct TYPE_3__ {int outgoing_args; int saved_regs; int locals_base; } ;
typedef  TYPE_1__ arm_stack_offsets ;
typedef  int HOST_WIDE_INT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 size_t LAST_ARG_REGNUM ; 
 size_t LR_REGNUM ; 
 int /*<<< orphan*/  SImode ; 
 int /*<<< orphan*/  TARGET_SCHED_PROLOG ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__* FUNC3 () ; 
 int /*<<< orphan*/ * call_used_regs ; 
 scalar_t__ current_function_profile ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ frame_pointer_needed ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hard_frame_pointer_rtx ; 
 scalar_t__* regs_ever_live ; 
 int /*<<< orphan*/  stack_pointer_rtx ; 

void
FUNC13 (void)
{
  HOST_WIDE_INT amount;
  arm_stack_offsets *offsets;
  int regno;

  /* Naked functions don't have prologues.  */
  if (FUNC1 (FUNC2 ()))
    return;

  offsets = FUNC3 ();
  amount = offsets->outgoing_args - offsets->saved_regs;

  if (frame_pointer_needed)
    {
      FUNC4 (FUNC8 (stack_pointer_rtx, hard_frame_pointer_rtx));
      amount = offsets->locals_base - offsets->saved_regs;
    }

  FUNC5 (amount >= 0);
  if (amount)
    {
      if (amount < 512)
	FUNC4 (FUNC6 (stack_pointer_rtx, stack_pointer_rtx,
			       FUNC0 (amount)));
      else
	{
	  /* r3 is always free in the epilogue.  */
	  rtx reg = FUNC11 (SImode, LAST_ARG_REGNUM);

	  FUNC4 (FUNC8 (reg, FUNC0 (amount)));
	  FUNC4 (FUNC6 (stack_pointer_rtx, stack_pointer_rtx, reg));
	}
    }

  /* Emit a USE (stack_pointer_rtx), so that
     the stack adjustment will not be deleted.  */
  FUNC4 (FUNC9 (stack_pointer_rtx));

  if (current_function_profile || !TARGET_SCHED_PROLOG)
    FUNC4 (FUNC7 ());

  /* Emit a clobber for each insn that will be restored in the epilogue,
     so that flow2 will get register lifetimes correct.  */
  for (regno = 0; regno < 13; regno++)
    if (regs_ever_live[regno] && !call_used_regs[regno])
      FUNC4 (FUNC10 (VOIDmode, FUNC11 (SImode, regno)));

  if (! regs_ever_live[LR_REGNUM])
    FUNC4 (FUNC12 (VOIDmode, FUNC11 (SImode, LR_REGNUM)));
}