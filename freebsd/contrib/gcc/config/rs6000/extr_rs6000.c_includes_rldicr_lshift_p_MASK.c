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
typedef  int HOST_WIDE_INT ;

/* Variables and functions */
 scalar_t__ CONST_DOUBLE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ CONST_INT ; 
 scalar_t__ DImode ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int HOST_BITS_PER_WIDE_INT ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ VOIDmode ; 

int
FUNC5 (rtx shiftop, rtx andop)
{
  if (FUNC2 (andop) == CONST_INT)
    {
      HOST_WIDE_INT c, lsb, shift_mask;

      shift_mask = ~0;
      shift_mask <<= FUNC4 (shiftop);
      c = FUNC4 (andop);

      /* Find the least significant one bit.  */
      lsb = c & -c;

      /* It must be covered by the shift mask.
	 This test also rejects c == 0.  */
      if ((lsb & shift_mask) == 0)
	return 0;

      /* Check we have all 1's above the transition, and reject all 1's.  */
      return c == -lsb && lsb != 1;
    }
  else if (FUNC2 (andop) == CONST_DOUBLE
	   && (FUNC3 (andop) == VOIDmode || FUNC3 (andop) == DImode))
    {
      HOST_WIDE_INT low, lsb, shift_mask_low;

      low = FUNC1 (andop);

      if (HOST_BITS_PER_WIDE_INT < 64)
	{
	  HOST_WIDE_INT high, shift_mask_high;

	  high = FUNC0 (andop);

	  if (low == 0)
	    {
	      shift_mask_high = ~0;
	      if (FUNC4 (shiftop) > 32)
		shift_mask_high <<= FUNC4 (shiftop) - 32;

	      lsb = high & -high;

	      if ((lsb & shift_mask_high) == 0)
		return 0;

	      return high == -lsb;
	    }
	  if (high != ~0)
	    return 0;
	}

      shift_mask_low = ~0;
      shift_mask_low <<= FUNC4 (shiftop);

      lsb = low & -low;

      if ((lsb & shift_mask_low) == 0)
	return 0;

      return low == -lsb && lsb != 1;
    }
  else
    return 0;
}