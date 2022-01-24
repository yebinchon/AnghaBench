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
 scalar_t__ CONST_INT ; 
 int DImode ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int const FUNC2 (scalar_t__) ; 
 scalar_t__ TARGET_CMOVE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__*,int,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__*,int,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__*,int,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__*,int,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC22 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC23 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 

void
FUNC24 (rtx *operands, rtx scratch, enum machine_mode mode)
{
  rtx low[2], high[2];
  int count;
  const int single_width = mode == DImode ? 32 : 64;

  if (FUNC1 (operands[2]) == CONST_INT)
    {
      (mode == DImode ? split_di : split_ti) (operands, 2, low, high);
      count = FUNC2 (operands[2]) & (single_width * 2 - 1);

      if (count >= single_width)
	{
	  FUNC4 (low[0], high[1]);
	  FUNC12 (high[0]);

	  if (count > single_width)
	    FUNC3 ((mode == DImode
			? gen_lshrsi3
			: gen_lshrdi3) (low[0], low[0],
					FUNC0 (count - single_width)));
	}
      else
	{
	  if (!FUNC13 (operands[0], operands[1]))
	    FUNC4 (operands[0], operands[1]);
	  FUNC3 ((mode == DImode
		      ? gen_x86_shrd_1
		      : gen_x86_64_shrd) (low[0], high[0], FUNC0 (count)));
	  FUNC3 ((mode == DImode
		      ? gen_lshrsi3
		      : gen_lshrdi3) (high[0], high[0], FUNC0 (count)));
	}
    }
  else
    {
      if (!FUNC13 (operands[0], operands[1]))
	FUNC4 (operands[0], operands[1]);

      (mode == DImode ? split_di : split_ti) (operands, 1, low, high);

      FUNC3 ((mode == DImode
		  ? gen_x86_shrd_1
		  : gen_x86_64_shrd) (low[0], high[0], operands[2]));
      FUNC3 ((mode == DImode
		  ? gen_lshrsi3
		  : gen_lshrdi3) (high[0], high[0], operands[2]));

      /* Heh.  By reversing the arguments, we can reuse this pattern.  */
      if (TARGET_CMOVE && scratch)
	{
	  FUNC12 (scratch);
	  FUNC3 ((mode == DImode
		      ? gen_x86_shift_adj_1
		      : gen_x86_64_shift_adj) (low[0], high[0], operands[2],
					       scratch));
	}
      else
	FUNC3 (FUNC10 (low[0], high[0], operands[2]));
    }
}