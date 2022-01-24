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
typedef  int HOST_WIDE_INT ;

/* Variables and functions */
 scalar_t__ CONST_INT ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (int) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  NULL_RTX ; 
 scalar_t__ PLUS ; 
 int /*<<< orphan*/  SImode ; 
 scalar_t__ FUNC3 (scalar_t__,int) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ flag_pic ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ optimize_size ; 
 scalar_t__ FUNC10 (scalar_t__,int) ; 
 scalar_t__ FUNC11 (scalar_t__,int /*<<< orphan*/ ) ; 

rtx
FUNC12 (rtx x, rtx orig_x, enum machine_mode mode)
{
  if (FUNC4 (x))
    return FUNC9 (x, NULL_RTX);

  if (FUNC0 (x) == PLUS
      && FUNC0 (FUNC3 (x, 1)) == CONST_INT
      && (FUNC2 (FUNC3 (x, 1)) >= 32 * FUNC1 (mode)
	  || FUNC2 (FUNC3 (x, 1)) < 0))
    {
      rtx xop0 = FUNC3 (x, 0);
      rtx xop1 = FUNC3 (x, 1);
      HOST_WIDE_INT offset = FUNC2 (xop1);

      /* Try and fold the offset into a biasing of the base register and
	 then offsetting that.  Don't do this when optimizing for space
	 since it can cause too many CSEs.  */
      if (optimize_size && offset >= 0
	  && offset < 256 + 31 * FUNC1 (mode))
	{
	  HOST_WIDE_INT delta;

	  if (offset >= 256)
	    delta = offset - (256 - FUNC1 (mode));
	  else if (offset < 32 * FUNC1 (mode) + 8)
	    delta = 31 * FUNC1 (mode);
	  else
	    delta = offset & (~31 * FUNC1 (mode));

	  xop0 = FUNC5 (FUNC10 (xop0, offset - delta),
				NULL_RTX);
	  x = FUNC10 (xop0, delta);
	}
      else if (offset < 0 && offset > -256)
	/* Small negative offsets are best done with a subtract before the
	   dereference, forcing these into a register normally takes two
	   instructions.  */
	x = FUNC5 (x, NULL_RTX);
      else
	{
	  /* For the remaining cases, force the constant into a register.  */
	  xop1 = FUNC6 (SImode, xop1);
	  x = FUNC7 (SImode, xop0, xop1);
	}
    }
  else if (FUNC0 (x) == PLUS
	   && FUNC11 (FUNC3 (x, 1), SImode)
	   && !FUNC11 (FUNC3 (x, 0), SImode))
    {
      rtx xop0 = FUNC5 (FUNC3 (x, 0), NULL_RTX);

      x = FUNC7 (SImode, xop0, FUNC3 (x, 1));
    }

  if (flag_pic)
    {
      /* We need to find and carefully transform any SYMBOL and LABEL
	 references; so go back to the original address expression.  */
      rtx new_x = FUNC8 (orig_x, mode, NULL_RTX);

      if (new_x != orig_x)
	x = new_x;
    }

  return x;
}