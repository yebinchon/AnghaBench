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
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 int /*<<< orphan*/  BITS_PER_UNIT ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ CONST_INT ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__,int,int /*<<< orphan*/ ) ; 
 scalar_t__ MINUS ; 
 scalar_t__ MULT ; 
 int /*<<< orphan*/  NULL_RTX ; 
 scalar_t__ PLUS ; 
 int /*<<< orphan*/  Pmode ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__,int) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ const0_rtx ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  cse_not_expected ; 
 scalar_t__ FUNC10 (scalar_t__,scalar_t__*) ; 
 scalar_t__ flag_force_addr ; 
 scalar_t__ FUNC11 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  win ; 

rtx
FUNC17 (enum machine_mode mode, rtx x)
{
  rtx oldx = x;

  x = FUNC8 (Pmode, x);

  /* By passing constant addresses through registers
     we get a chance to cse them.  */
  if (! cse_not_expected && FUNC1 (x) && FUNC0 (x))
    x = FUNC12 (Pmode, x);

  /* We get better cse by rejecting indirect addressing at this stage.
     Let the combiner create indirect addresses where appropriate.
     For now, generate the code so that the subexpressions useful to share
     are visible.  But not if cse won't be done!  */
  else
    {
      if (! cse_not_expected && !FUNC5 (x))
	x = FUNC7 (x);

      /* At this point, any valid address is accepted.  */
      if (FUNC15 (mode, x))
	goto win;

      /* If it was valid before but breaking out memory refs invalidated it,
	 use it the old way.  */
      if (FUNC15 (mode, oldx))
	goto win2;

      /* Perform machine-dependent transformations on X
	 in certain cases.  This is not necessary since the code
	 below can handle all possible cases, but machine-dependent
	 transformations can make better code.  */
      FUNC4 (x, oldx, mode, win);

      /* PLUS and MULT can appear in special ways
	 as the result of attempts to make an address usable for indexing.
	 Usually they are dealt with by calling force_operand, below.
	 But a sum containing constant terms is special
	 if removing them makes the sum a valid address:
	 then we generate that address in a register
	 and index off of it.  We do this because it often makes
	 shorter code, and because the addresses thus generated
	 in registers often become common subexpressions.  */
      if (FUNC2 (x) == PLUS)
	{
	  rtx constant_term = const0_rtx;
	  rtx y = FUNC10 (x, &constant_term);
	  if (constant_term == const0_rtx
	      || ! FUNC15 (mode, y))
	    x = FUNC11 (x, NULL_RTX);
	  else
	    {
	      y = FUNC13 (FUNC3 (x), FUNC9 (y), constant_term);
	      if (! FUNC15 (mode, y))
		x = FUNC11 (x, NULL_RTX);
	      else
		x = y;
	    }
	}

      else if (FUNC2 (x) == MULT || FUNC2 (x) == MINUS)
	x = FUNC11 (x, NULL_RTX);

      /* If we have a register that's an invalid address,
	 it must be a hard reg of the wrong class.  Copy it to a pseudo.  */
      else if (FUNC5 (x))
	x = FUNC9 (x);

      /* Last resort: copy the value to a register, since
	 the register is a valid address.  */
      else
	x = FUNC12 (Pmode, x);

      goto done;

    win2:
      x = oldx;
    win:
      if (flag_force_addr && ! cse_not_expected && !FUNC5 (x))
	{
	  x = FUNC11 (x, NULL_RTX);
	  x = FUNC12 (Pmode, x);
	}
    }

 done:

  /* If we didn't change the address, we are done.  Otherwise, mark
     a reg as a pointer if we have REG or REG + CONST_INT.  */
  if (oldx == x)
    return x;
  else if (FUNC5 (x))
    FUNC14 (x, BITS_PER_UNIT);
  else if (FUNC2 (x) == PLUS
	   && FUNC5 (FUNC6 (x, 0))
	   && FUNC2 (FUNC6 (x, 1)) == CONST_INT)
    FUNC14 (FUNC6 (x, 0), BITS_PER_UNIT);

  /* OLDX may have been the address on a temporary.  Update the address
     to indicate that X is now used.  */
  FUNC16 (oldx, x);

  return x;
}