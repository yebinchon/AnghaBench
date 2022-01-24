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
typedef  scalar_t__ rtx ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  LINK_REGISTER_REGNUM ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ NULL_RTX ; 
 int /*<<< orphan*/  Pmode ; 
 int /*<<< orphan*/  REG_INC ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ current_function_is_thunk ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ FUNC10 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int
FUNC11 (void)
{
  rtx top;
  rtx reg;
  rtx insn;

  if (current_function_is_thunk)
    return 0;

  /* regs_ever_live has LR marked as used if any sibcalls are present,
     but this should not force saving and restoring in the
     pro/epilogue.  Likewise, reg_set_between_p thinks a sibcall
     clobbers LR, so that is inappropriate.  */

  /* Also, the prologue can generate a store into LR that
     doesn't really count, like this:

        move LR->R0
        bcl to set PIC register
        move LR->R31
        move R0->LR

     When we're called from the epilogue, we need to avoid counting
     this as a store.  */

  FUNC9 ();
  top = FUNC6 ();
  FUNC7 ();
  reg = FUNC5 (Pmode, LINK_REGISTER_REGNUM);

  for (insn = FUNC2 (top); insn != NULL_RTX; insn = FUNC2 (insn))
    {
      if (FUNC1 (insn))
	{
	  if (FUNC0 (insn))
	    {
	      if (!FUNC3 (insn))
		return 1;
	    }
	  else if (FUNC4 (insn, REG_INC, LINK_REGISTER_REGNUM))
	    return 1;
	  else if (FUNC10 (reg, insn) != NULL_RTX
		   && !FUNC8 (insn))
	    return 1;
    	}
    }
  return 0;
}