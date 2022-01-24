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
typedef  int /*<<< orphan*/  rtx ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef  int HOST_WIDE_INT ;

/* Variables and functions */
 scalar_t__ CONST_DOUBLE ; 
 scalar_t__ CONST_INT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int) ; 
 int HOST_BITS_PER_WIDE_INT ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ MODE_INT ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ SUBREG ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int,int) ; 
 scalar_t__ FUNC16 (int) ; 
 scalar_t__ VOIDmode ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__* direct_load ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 (int,int) ; 
 int /*<<< orphan*/  FUNC20 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int) ; 
 int /*<<< orphan*/  FUNC22 (int,int,int) ; 
 int /*<<< orphan*/  FUNC23 (int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

rtx
FUNC24 (enum machine_mode mode, enum machine_mode oldmode, rtx x, int unsignedp)
{
  rtx temp;

  /* If FROM is a SUBREG that indicates that we have already done at least
     the required extension, strip it.  */

  if (FUNC0 (x) == SUBREG && FUNC13 (x)
      && FUNC4 (FUNC1 (FUNC14 (x))) >= FUNC4 (mode)
      && FUNC12 (x) == unsignedp)
    x = FUNC20 (mode, x);

  if (FUNC1 (x) != VOIDmode)
    oldmode = FUNC1 (x);

  if (mode == oldmode)
    return x;

  /* There is one case that we must handle specially: If we are converting
     a CONST_INT into a mode whose size is twice HOST_BITS_PER_WIDE_INT and
     we are to interpret the constant as unsigned, gen_lowpart will do
     the wrong if the constant appears negative.  What we want to do is
     make the high-order word of the constant zero, not all ones.  */

  if (unsignedp && FUNC3 (mode) == MODE_INT
      && FUNC2 (mode) == 2 * HOST_BITS_PER_WIDE_INT
      && FUNC0 (x) == CONST_INT && FUNC7 (x) < 0)
    {
      HOST_WIDE_INT val = FUNC7 (x);

      if (oldmode != VOIDmode
	  && HOST_BITS_PER_WIDE_INT > FUNC2 (oldmode))
	{
	  int width = FUNC2 (oldmode);

	  /* We need to zero extend VAL.  */
	  val &= ((HOST_WIDE_INT) 1 << width) - 1;
	}

      return FUNC22 (val, (HOST_WIDE_INT) 0, mode);
    }

  /* We can do this with a gen_lowpart if both desired and current modes
     are integer, and this is either a constant integer, a register, or a
     non-volatile MEM.  Except for the constant case where MODE is no
     wider than HOST_BITS_PER_WIDE_INT, we must be narrowing the operand.  */

  if ((FUNC0 (x) == CONST_INT
       && FUNC2 (mode) <= HOST_BITS_PER_WIDE_INT)
      || (FUNC3 (mode) == MODE_INT
	  && FUNC3 (oldmode) == MODE_INT
	  && (FUNC0 (x) == CONST_DOUBLE
	      || (FUNC4 (mode) <= FUNC4 (oldmode)
		  && ((FUNC8 (x) && ! FUNC9 (x)
		       && direct_load[(int) mode])
		      || (FUNC11 (x)
			  && (! FUNC5 (x)
			      || FUNC6 (FUNC10 (x), mode))
			  && FUNC15 (FUNC2 (mode),
						    FUNC2 (FUNC1 (x)))))))))
    {
      /* ?? If we don't know OLDMODE, we have to assume here that
	 X does not need sign- or zero-extension.   This may not be
	 the case, but it's the best we can do.  */
      if (FUNC0 (x) == CONST_INT && oldmode != VOIDmode
	  && FUNC4 (mode) > FUNC4 (oldmode))
	{
	  HOST_WIDE_INT val = FUNC7 (x);
	  int width = FUNC2 (oldmode);

	  /* We must sign or zero-extend in this case.  Start by
	     zero-extending, then sign extend if we need to.  */
	  val &= ((HOST_WIDE_INT) 1 << width) - 1;
	  if (! unsignedp
	      && (val & ((HOST_WIDE_INT) 1 << (width - 1))))
	    val |= (HOST_WIDE_INT) (-1) << width;

	  return FUNC19 (val, mode);
	}

      return FUNC20 (mode, x);
    }

  /* Converting from integer constant into mode is always equivalent to an
     subreg operation.  */
  if (FUNC16 (mode) && FUNC1 (x) == VOIDmode)
    {
      FUNC18 (FUNC2 (mode) == FUNC2 (oldmode));
      return FUNC23 (mode, x, oldmode, 0);
    }

  temp = FUNC21 (mode);
  FUNC17 (temp, x, unsignedp);
  return temp;
}