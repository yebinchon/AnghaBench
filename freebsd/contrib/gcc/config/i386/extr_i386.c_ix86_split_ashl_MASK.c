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
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  CCZmode ; 
 scalar_t__ CONST_INT ; 
 int DImode ; 
 int /*<<< orphan*/  FLAGS_REG ; 
 scalar_t__ FUNC1 (int const) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int const FUNC3 (scalar_t__) ; 
 int QImode ; 
 int SImode ; 
 scalar_t__ TARGET_CMOVE ; 
 scalar_t__ TARGET_PARTIAL_REG_STALL ; 
 int /*<<< orphan*/  VOIDmode ; 
 scalar_t__ const0_rtx ; 
 scalar_t__ const1_rtx ; 
 scalar_t__ constm1_rtx ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC10 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC13 (int,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC14 (int,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC18 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC22 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC23 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC24 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC25 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC26 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC27 (scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC28 (scalar_t__) ; 
 scalar_t__ optimize_size ; 
 int /*<<< orphan*/  FUNC29 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC30 (scalar_t__*,int,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC31 (scalar_t__*,int,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC32 (scalar_t__*,int,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC33 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC34 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC35 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC36 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC37 (scalar_t__*,int,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC38 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC39 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC40 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC41 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC42 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC43 (scalar_t__*,int,scalar_t__*,scalar_t__*) ; 

void
FUNC44 (rtx *operands, rtx scratch, enum machine_mode mode)
{
  rtx low[2], high[2];
  int count;
  const int single_width = mode == DImode ? 32 : 64;

  if (FUNC2 (operands[2]) == CONST_INT)
    {
      (mode == DImode ? split_di : split_ti) (operands, 2, low, high);
      count = FUNC3 (operands[2]) & (single_width * 2 - 1);

      if (count >= single_width)
	{
	  FUNC5 (high[0], low[1]);
	  FUNC5 (low[0], const0_rtx);

	  if (count > single_width)
	    FUNC27 (high[0], count - single_width, mode);
	}
      else
	{
	  if (!FUNC29 (operands[0], operands[1]))
	    FUNC5 (operands[0], operands[1]);
	  FUNC4 ((mode == DImode
		     ? gen_x86_shld_1
		     : gen_x86_64_shld) (high[0], low[0], FUNC1 (count)));
	  FUNC27 (low[0], count, mode);
	}
      return;
    }

  (mode == DImode ? split_di : split_ti) (operands, 1, low, high);

  if (operands[1] == const1_rtx)
    {
      /* Assuming we've chosen a QImode capable registers, then 1 << N
	 can be done with two 32/64-bit shifts, no branches, no cmoves.  */
      if (FUNC0 (low[0]) && FUNC0 (high[0]))
	{
	  rtx s, d, flags = FUNC15 (CCZmode, FLAGS_REG);

	  FUNC28 (low[0]);
	  FUNC28 (high[0]);
	  FUNC4 (FUNC19 (operands[2], FUNC1 (single_width)));

	  d = FUNC10 (QImode, low[0]);
	  d = FUNC17 (VOIDmode, d);
	  s = FUNC13 (QImode, flags, const0_rtx);
	  FUNC4 (FUNC16 (VOIDmode, d, s));

	  d = FUNC10 (QImode, high[0]);
	  d = FUNC17 (VOIDmode, d);
	  s = FUNC14 (QImode, flags, const0_rtx);
	  FUNC4 (FUNC16 (VOIDmode, d, s));
	}

      /* Otherwise, we can get the same results by manually performing
	 a bit extract operation on bit 5/6, and then performing the two
	 shifts.  The two methods of getting 0/1 into low/high are exactly
	 the same size.  Avoiding the shift in the bit extract case helps
	 pentium4 a bit; no one else seems to care much either way.  */
      else
	{
	  rtx x;

	  if (TARGET_PARTIAL_REG_STALL && !optimize_size)
	    x = FUNC18 (mode == DImode ? SImode : DImode, operands[2]);
	  else
	    x = FUNC10 (mode == DImode ? SImode : DImode, operands[2]);
	  FUNC4 (FUNC16 (VOIDmode, high[0], x));

	  FUNC4 ((mode == DImode
		      ? gen_lshrsi3
		      : gen_lshrdi3) (high[0], high[0], FUNC1 (mode == DImode ? 5 : 6)));
	  FUNC4 ((mode == DImode
		      ? gen_andsi3
		      : gen_anddi3) (high[0], high[0], FUNC1 (1)));
	  FUNC5 (low[0], high[0]);
	  FUNC4 ((mode == DImode
		      ? gen_xorsi3
		      : gen_xordi3) (low[0], low[0], FUNC1 (1)));
	}

      FUNC4 ((mode == DImode
		    ? gen_ashlsi3
		    : gen_ashldi3) (low[0], low[0], operands[2]));
      FUNC4 ((mode == DImode
		    ? gen_ashlsi3
		    : gen_ashldi3) (high[0], high[0], operands[2]));
      return;
    }

  if (operands[1] == constm1_rtx)
    {
      /* For -1 << N, we can avoid the shld instruction, because we
	 know that we're shifting 0...31/63 ones into a -1.  */
      FUNC5 (low[0], constm1_rtx);
      if (optimize_size)
	FUNC5 (high[0], low[0]);
      else
	FUNC5 (high[0], constm1_rtx);
    }
  else
    {
      if (!FUNC29 (operands[0], operands[1]))
	FUNC5 (operands[0], operands[1]);

      (mode == DImode ? split_di : split_ti) (operands, 1, low, high);
      FUNC4 ((mode == DImode
		  ? gen_x86_shld_1
		  : gen_x86_64_shld) (high[0], low[0], operands[2]));
    }

  FUNC4 ((mode == DImode ? gen_ashlsi3 : gen_ashldi3) (low[0], low[0], operands[2]));

  if (TARGET_CMOVE && scratch)
    {
      FUNC28 (scratch);
      FUNC4 ((mode == DImode
		  ? gen_x86_shift_adj_1
		  : gen_x86_64_shift_adj) (high[0], low[0], operands[2], scratch));
    }
  else
    FUNC4 (FUNC23 (high[0], low[0], operands[2]));
}