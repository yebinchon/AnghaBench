#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ rtx ;
struct TYPE_6__ {TYPE_2__* machine; } ;
struct TYPE_4__ {scalar_t__ total_size; scalar_t__ args_size; int mask; int fmask; } ;
struct TYPE_5__ {TYPE_1__ frame; } ;
typedef  scalar_t__ HOST_WIDE_INT ;

/* Variables and functions */
 scalar_t__ EH_RETURN_STACKADJ_RTX ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ GP_REG_FIRST ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MIPS_MAX_FIRST_STACK_STEP ; 
 int /*<<< orphan*/  Pmode ; 
 int RA_MASK ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ TARGET_ABICALLS ; 
 int /*<<< orphan*/  TARGET_EXPLICIT_RELOCS ; 
 scalar_t__ TARGET_MIPS16 ; 
 scalar_t__ TARGET_NEWABI ; 
 TYPE_3__* cfun ; 
 scalar_t__ current_function_calls_eh_return ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  frame_pointer_needed ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ hard_frame_pointer_rtx ; 
 scalar_t__ FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mips_restore_reg ; 
 scalar_t__ stack_pointer_rtx ; 

void
FUNC14 (int sibcall_p)
{
  HOST_WIDE_INT step1, step2;
  rtx base, target;

  if (!sibcall_p && FUNC12 ())
    {
      FUNC5 (FUNC9 ());
      return;
    }

  /* Split the frame into two.  STEP1 is the amount of stack we should
     deallocate before restoring the registers.  STEP2 is the amount we
     should deallocate afterwards.

     Start off by assuming that no registers need to be restored.  */
  step1 = cfun->machine->frame.total_size;
  step2 = 0;

  /* Work out which register holds the frame address.  Account for the
     frame pointer offset used by mips16 code.  */
  if (!frame_pointer_needed)
    base = stack_pointer_rtx;
  else
    {
      base = hard_frame_pointer_rtx;
      if (TARGET_MIPS16)
	step1 -= cfun->machine->frame.args_size;
    }

  /* If we need to restore registers, deallocate as much stack as
     possible in the second step without going out of range.  */
  if ((cfun->machine->frame.mask | cfun->machine->frame.fmask) != 0)
    {
      step2 = FUNC1 (step1, MIPS_MAX_FIRST_STACK_STEP);
      step1 -= step2;
    }

  /* Set TARGET to BASE + STEP1.  */
  target = base;
  if (step1 > 0)
    {
      rtx adjust;

      /* Get an rtx for STEP1 that we can add to BASE.  */
      adjust = FUNC0 (step1);
      if (!FUNC3 (step1))
	{
	  FUNC6 (FUNC2 (Pmode), adjust);
	  adjust = FUNC2 (Pmode);
	}

      /* Normal mode code can copy the result straight into $sp.  */
      if (!TARGET_MIPS16)
	target = stack_pointer_rtx;

      FUNC4 (FUNC7 (target, base, adjust));
    }

  /* Copy TARGET into the stack pointer.  */
  if (target != stack_pointer_rtx)
    FUNC6 (stack_pointer_rtx, target);

  /* If we're using addressing macros for n32/n64 abicalls, $gp is
     implicitly used by all SYMBOL_REFs.  We must emit a blockage
     insn before restoring it.  */
  if (TARGET_ABICALLS && TARGET_NEWABI && !TARGET_EXPLICIT_RELOCS)
    FUNC4 (FUNC8 ());

  /* Restore the registers.  */
  FUNC13 (cfun->machine->frame.total_size - step2,
			   mips_restore_reg);

  /* Deallocate the final bit of the frame.  */
  if (step2 > 0)
    FUNC4 (FUNC7 (stack_pointer_rtx,
			      stack_pointer_rtx,
			      FUNC0 (step2)));

  /* Add in the __builtin_eh_return stack adjustment.  We need to
     use a temporary in mips16 code.  */
  if (current_function_calls_eh_return)
    {
      if (TARGET_MIPS16)
	{
	  FUNC6 (FUNC2 (Pmode), stack_pointer_rtx);
	  FUNC4 (FUNC7 (FUNC2 (Pmode),
				    FUNC2 (Pmode),
				    EH_RETURN_STACKADJ_RTX));
	  FUNC6 (stack_pointer_rtx, FUNC2 (Pmode));
	}
      else
	FUNC4 (FUNC7 (stack_pointer_rtx,
				  stack_pointer_rtx,
				  EH_RETURN_STACKADJ_RTX));
    }

  if (!sibcall_p)
    {
      /* The mips16 loads the return address into $7, not $31.  */
      if (TARGET_MIPS16 && (cfun->machine->frame.mask & RA_MASK) != 0)
	FUNC5 (FUNC10 (FUNC11 (Pmode,
							  GP_REG_FIRST + 7)));
      else
	FUNC5 (FUNC10 (FUNC11 (Pmode,
							  GP_REG_FIRST + 31)));
    }
}