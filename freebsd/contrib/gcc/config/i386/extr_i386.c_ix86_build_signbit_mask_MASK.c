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
typedef  int /*<<< orphan*/  rtvec ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef  int HOST_WIDE_INT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DFmode ; 
 int /*<<< orphan*/  DImode ; 
 int HOST_BITS_PER_WIDE_INT ; 
 int SFmode ; 
 int /*<<< orphan*/  SImode ; 
 int V2DFmode ; 
 int V4SFmode ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int /*<<< orphan*/ ) ; 

rtx
FUNC6 (enum machine_mode mode, bool vect, bool invert)
{
  enum machine_mode vec_mode;
  HOST_WIDE_INT hi, lo;
  int shift = 63;
  rtvec v;
  rtx mask;

  /* Find the sign bit, sign extended to 2*HWI.  */
  if (mode == SFmode)
    lo = 0x80000000, hi = lo < 0;
  else if (HOST_BITS_PER_WIDE_INT >= 64)
    lo = (HOST_WIDE_INT)1 << shift, hi = -1;
  else
    lo = 0, hi = (HOST_WIDE_INT)1 << (shift - HOST_BITS_PER_WIDE_INT);

  if (invert)
    lo = ~lo, hi = ~hi;

  /* Force this value into the low part of a fp vector constant.  */
  mask = FUNC5 (lo, hi, mode == SFmode ? SImode : DImode);
  mask = FUNC2 (mode, mask);

  if (mode == SFmode)
    {
      if (vect)
	v = FUNC3 (4, mask, mask, mask, mask);
      else
	v = FUNC3 (4, mask, FUNC0 (SFmode),
		       FUNC0 (SFmode), FUNC0 (SFmode));
      vec_mode = V4SFmode;
    }
  else
    {
      if (vect)
	v = FUNC3 (2, mask, mask);
      else
	v = FUNC3 (2, mask, FUNC0 (DFmode));
      vec_mode = V2DFmode;
    }

  return FUNC1 (vec_mode, FUNC4 (vec_mode, v));
}