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
 scalar_t__ CONST_INT ; 
 int DImode ; 
 int /*<<< orphan*/  FUNC0 (int const) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int const FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ TARGET_CMOVE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC26 (rtx *operands, rtx scratch, enum machine_mode mode)
{
  rtx low[2], high[2];
  int count;
  const int single_width = mode == DImode ? 32 : 64;

  if (FUNC1 (operands[2]) == CONST_INT)
    {
      (mode == DImode ? split_di : split_ti) (operands, 2, low, high);
      count = FUNC2 (operands[2]) & (single_width * 2 - 1);

      if (count == single_width * 2 - 1)
	{
	  FUNC4 (high[0], high[1]);
	  FUNC3 ((mode == DImode
		      ? gen_ashrsi3
		      : gen_ashrdi3) (high[0], high[0],
				      FUNC0 (single_width - 1)));
	  FUNC4 (low[0], high[0]);

	}
      else if (count >= single_width)
	{
	  FUNC4 (low[0], high[1]);
	  FUNC4 (high[0], low[0]);
	  FUNC3 ((mode == DImode
		      ? gen_ashrsi3
		      : gen_ashrdi3) (high[0], high[0],
				      FUNC0 (single_width - 1)));
	  if (count > single_width)
	    FUNC3 ((mode == DImode
			? gen_ashrsi3
			: gen_ashrdi3) (low[0], low[0],
					FUNC0 (count - single_width)));
	}
      else
	{
	  if (!FUNC12 (operands[0], operands[1]))
	    FUNC4 (operands[0], operands[1]);
	  FUNC3 ((mode == DImode
		      ? gen_x86_shrd_1
		      : gen_x86_64_shrd) (low[0], high[0], FUNC0 (count)));
	  FUNC3 ((mode == DImode
		      ? gen_ashrsi3
		      : gen_ashrdi3) (high[0], high[0], FUNC0 (count)));
	}
    }
  else
    {
      if (!FUNC12 (operands[0], operands[1]))
	FUNC4 (operands[0], operands[1]);

      (mode == DImode ? split_di : split_ti) (operands, 1, low, high);

      FUNC3 ((mode == DImode
		  ? gen_x86_shrd_1
		  : gen_x86_64_shrd) (low[0], high[0], operands[2]));
      FUNC3 ((mode == DImode
		  ? gen_ashrsi3
		  : gen_ashrdi3)  (high[0], high[0], operands[2]));

      if (TARGET_CMOVE && scratch)
	{
	  FUNC4 (scratch, high[0]);
	  FUNC3 ((mode == DImode
		      ? gen_ashrsi3
		      : gen_ashrdi3) (scratch, scratch,
				      FUNC0 (single_width - 1)));
	  FUNC3 ((mode == DImode
		      ? gen_x86_shift_adj_1
		      : gen_x86_64_shift_adj) (low[0], high[0], operands[2],
					 scratch));
	}
      else
	FUNC3 (FUNC10 (low[0], high[0], operands[2]));
    }
}