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

      c = FUNC4 (andop);
      if (c == 0 || c == ~0)
	return 0;

      shift_mask = ~0;
      shift_mask <<= FUNC4 (shiftop);

      /* Find the least significant one bit.  */
      lsb = c & -c;

      /* It must coincide with the LSB of the shift mask.  */
      if (-lsb != shift_mask)
	return 0;

      /* Invert to look for the next transition (if any).  */
      c = ~c;

      /* Remove the low group of ones (originally low group of zeros).  */
      c &= -lsb;

      /* Again find the lsb, and check we have all 1's above.  */
      lsb = c & -c;
      return c == -lsb;
    }
  else if (FUNC2 (andop) == CONST_DOUBLE
	   && (FUNC3 (andop) == VOIDmode || FUNC3 (andop) == DImode))
    {
      HOST_WIDE_INT low, high, lsb;
      HOST_WIDE_INT shift_mask_low, shift_mask_high;

      low = FUNC1 (andop);
      if (HOST_BITS_PER_WIDE_INT < 64)
	high = FUNC0 (andop);

      if ((low == 0 && (HOST_BITS_PER_WIDE_INT >= 64 || high == 0))
	  || (low == ~0 && (HOST_BITS_PER_WIDE_INT >= 64 || high == ~0)))
	return 0;

      if (HOST_BITS_PER_WIDE_INT < 64 && low == 0)
	{
	  shift_mask_high = ~0;
	  if (FUNC4 (shiftop) > 32)
	    shift_mask_high <<= FUNC4 (shiftop) - 32;

	  lsb = high & -high;

	  if (-lsb != shift_mask_high || FUNC4 (shiftop) < 32)
	    return 0;

	  high = ~high;
	  high &= -lsb;

	  lsb = high & -high;
	  return high == -lsb;
	}

      shift_mask_low = ~0;
      shift_mask_low <<= FUNC4 (shiftop);

      lsb = low & -low;

      if (-lsb != shift_mask_low)
	return 0;

      if (HOST_BITS_PER_WIDE_INT < 64)
	high = ~high;
      low = ~low;
      low &= -lsb;

      if (HOST_BITS_PER_WIDE_INT < 64 && low == 0)
	{
	  lsb = high & -high;
	  return high == -lsb;
	}

      lsb = low & -low;
      return low == -lsb && (HOST_BITS_PER_WIDE_INT >= 64 || high == ~0);
    }
  else
    return 0;
}