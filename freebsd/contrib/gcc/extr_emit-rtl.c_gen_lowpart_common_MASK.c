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

/* Variables and functions */
 int BITS_PER_UNIT ; 
 int BLKmode ; 
 scalar_t__ CONCAT ; 
 scalar_t__ CONST_DOUBLE ; 
 scalar_t__ CONST_INT ; 
 scalar_t__ CONST_VECTOR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int HOST_BITS_PER_WIDE_INT ; 
 scalar_t__ MODE_INT ; 
 scalar_t__ MODE_PARTIAL_INT ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ SIGN_EXTEND ; 
 scalar_t__ SUBREG ; 
 int UNITS_PER_WORD ; 
 int VOIDmode ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ ZERO_EXTEND ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ,int,int) ; 
 int FUNC11 (int,int) ; 

rtx
FUNC12 (enum machine_mode mode, rtx x)
{
  int msize = FUNC3 (mode);
  int xsize;
  int offset = 0;
  enum machine_mode innermode;

  /* Unfortunately, this routine doesn't take a parameter for the mode of X,
     so we have to make one up.  Yuk.  */
  innermode = FUNC1 (x);
  if (FUNC0 (x) == CONST_INT
      && msize * BITS_PER_UNIT <= HOST_BITS_PER_WIDE_INT)
    innermode = FUNC9 (HOST_BITS_PER_WIDE_INT, MODE_INT, 0);
  else if (innermode == VOIDmode)
    innermode = FUNC9 (HOST_BITS_PER_WIDE_INT * 2, MODE_INT, 0);
  
  xsize = FUNC3 (innermode);

  FUNC7 (innermode != VOIDmode && innermode != BLKmode);

  if (innermode == mode)
    return x;

  /* MODE must occupy no more words than the mode of X.  */
  if ((msize + (UNITS_PER_WORD - 1)) / UNITS_PER_WORD
      > ((xsize + (UNITS_PER_WORD - 1)) / UNITS_PER_WORD))
    return 0;

  /* Don't allow generating paradoxical FLOAT_MODE subregs.  */
  if (FUNC5 (mode) && msize > xsize)
    return 0;

  offset = FUNC11 (mode, innermode);

  if ((FUNC0 (x) == ZERO_EXTEND || FUNC0 (x) == SIGN_EXTEND)
      && (FUNC2 (mode) == MODE_INT
	  || FUNC2 (mode) == MODE_PARTIAL_INT))
    {
      /* If we are getting the low-order part of something that has been
	 sign- or zero-extended, we can either just use the object being
	 extended or make a narrower extension.  If we want an even smaller
	 piece than the size of the object being extended, call ourselves
	 recursively.

	 This case is used mostly by combine and cse.  */

      if (FUNC1 (FUNC6 (x, 0)) == mode)
	return FUNC6 (x, 0);
      else if (msize < FUNC3 (FUNC1 (FUNC6 (x, 0))))
	return FUNC12 (mode, FUNC6 (x, 0));
      else if (msize < xsize)
	return FUNC8 (FUNC0 (x), mode, FUNC6 (x, 0));
    }
  else if (FUNC0 (x) == SUBREG || FUNC4 (x)
	   || FUNC0 (x) == CONCAT || FUNC0 (x) == CONST_VECTOR
	   || FUNC0 (x) == CONST_DOUBLE || FUNC0 (x) == CONST_INT)
    return FUNC10 (mode, x, innermode, offset);

  /* Otherwise, we can't do this.  */
  return 0;
}