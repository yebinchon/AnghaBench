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
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ CONST_INT ; 
 int DFmode ; 
 int DImode ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__) ; 
 scalar_t__ MINUS ; 
 int /*<<< orphan*/  NULL_RTX ; 
 scalar_t__ PLUS ; 
 int SImode ; 
 scalar_t__ TARGET_SOFT_FLOAT ; 
 scalar_t__ TARGET_VFP ; 
 int TImode ; 
 scalar_t__ FUNC5 (scalar_t__,int) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__) ; 
 scalar_t__ flag_pic ; 
 scalar_t__ FUNC9 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int,scalar_t__) ; 
 scalar_t__ FUNC11 (int) ; 
 scalar_t__ FUNC12 (int,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC13 (int,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC14 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ optimize ; 
 scalar_t__ FUNC16 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__) ; 

rtx
FUNC18 (rtx x, rtx orig_x, enum machine_mode mode)
{
  if (FUNC6 (x))
    return FUNC15 (x, NULL_RTX);

  if (FUNC3 (x) == PLUS)
    {
      rtx xop0 = FUNC5 (x, 0);
      rtx xop1 = FUNC5 (x, 1);

      if (FUNC1 (xop0) && !FUNC17 (xop0))
	xop0 = FUNC10 (SImode, xop0);

      if (FUNC1 (xop1) && !FUNC17 (xop1))
	xop1 = FUNC10 (SImode, xop1);

      if (FUNC0 (xop0)
	  && FUNC3 (xop1) == CONST_INT)
	{
	  HOST_WIDE_INT n, low_n;
	  rtx base_reg, val;
	  n = FUNC4 (xop1);

	  /* VFP addressing modes actually allow greater offsets, but for
	     now we just stick with the lowest common denominator.  */
	  if (mode == DImode
	      || ((TARGET_SOFT_FLOAT || TARGET_VFP) && mode == DFmode))
	    {
	      low_n = n & 0x0f;
	      n &= ~0x0f;
	      if (low_n > 4)
		{
		  n += 16;
		  low_n -= 16;
		}
	    }
	  else
	    {
	      low_n = ((mode) == TImode ? 0
		       : n >= 0 ? (n & 0xfff) : -((-n) & 0xfff));
	      n -= low_n;
	    }

	  base_reg = FUNC11 (SImode);
	  val = FUNC9 (FUNC16 (xop0, n), NULL_RTX);
	  FUNC8 (base_reg, val);
	  x = FUNC16 (base_reg, low_n);
	}
      else if (xop0 != FUNC5 (x, 0) || xop1 != FUNC5 (x, 1))
	x = FUNC13 (SImode, xop0, xop1);
    }

  /* XXX We don't allow MINUS any more -- see comment in
     arm_legitimate_address_p ().  */
  else if (FUNC3 (x) == MINUS)
    {
      rtx xop0 = FUNC5 (x, 0);
      rtx xop1 = FUNC5 (x, 1);

      if (FUNC1 (xop0))
	xop0 = FUNC10 (SImode, xop0);

      if (FUNC1 (xop1) && ! FUNC17 (xop1))
	xop1 = FUNC10 (SImode, xop1);

      if (xop0 != FUNC5 (x, 0) || xop1 != FUNC5 (x, 1))
	x = FUNC12 (SImode, xop0, xop1);
    }

  /* Make sure to take full advantage of the pre-indexed addressing mode
     with absolute addresses which often allows for the base register to
     be factorized for multiple adjacent memory references, and it might
     even allows for the mini pool to be avoided entirely. */
  else if (FUNC3 (x) == CONST_INT && optimize > 0)
    {
      unsigned int bits;
      HOST_WIDE_INT mask, base, index;
      rtx base_reg;

      /* ldr and ldrb can use a 12 bit index, ldrsb and the rest can only
         use a 8 bit index. So let's use a 12 bit index for SImode only and
         hope that arm_gen_constant will enable ldrb to use more bits. */
      bits = (mode == SImode) ? 12 : 8;
      mask = (1 << bits) - 1;
      base = FUNC4 (x) & ~mask;
      index = FUNC4 (x) & mask;
      if (FUNC7 (base & 0xffffffff) > (32 - bits)/2)
        {
	  /* It'll most probably be more efficient to generate the base
	     with more bits set and use a negative index instead. */
	  base |= mask;
	  index -= mask;
	}
      base_reg = FUNC10 (SImode, FUNC2 (base));
      x = FUNC16 (base_reg, index);
    }

  if (flag_pic)
    {
      /* We need to find and carefully transform any SYMBOL and LABEL
	 references; so go back to the original address expression.  */
      rtx new_x = FUNC14 (orig_x, mode, NULL_RTX);

      if (new_x != orig_x)
	x = new_x;
    }

  return x;
}