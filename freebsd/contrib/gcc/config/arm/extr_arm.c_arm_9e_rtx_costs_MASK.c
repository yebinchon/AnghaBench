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
 int FUNC0 (int) ; 
 int DImode ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  MODE_FLOAT ; 
#define  MULT 128 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIGN_EXTEND ; 
 scalar_t__ TARGET_THUMB ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ZERO_EXTEND ; 
 int FUNC6 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static bool
FUNC8 (rtx x, int code, int outer_code, int *total)
{
  enum machine_mode mode = FUNC2 (x);
  int nonreg_cost;
  int cost;

  if (TARGET_THUMB)
    {
      switch (code)
	{
	case MULT:
	  *total = FUNC0 (3);
	  return true;

	default:
	  *total = FUNC7 (x, code, outer_code);
	  return true;
	}
    }

  switch (code)
    {
    case MULT:
      /* There is no point basing this on the tuning, since it is always the
	 fast variant if it exists at all.  */
      if (mode == DImode
	  && (FUNC1 (FUNC5 (x, 0)) == FUNC1 (FUNC5 (x, 1)))
	  && (FUNC1 (FUNC5 (x, 0)) == ZERO_EXTEND
	      || FUNC1 (FUNC5 (x, 0)) == SIGN_EXTEND))
	{
	  *total = 3;
	  return true;
	}


      if (FUNC3 (mode) == MODE_FLOAT)
	{
	  *total = 30;
	  return true;
	}
      if (mode == DImode)
	{
	  cost = 7;
	  nonreg_cost = 8;
	}
      else
	{
	  cost = 2;
	  nonreg_cost = 4;
	}


      *total = cost + (FUNC4 (FUNC5 (x, 0)) ? 0 : nonreg_cost)
		    + (FUNC4 (FUNC5 (x, 1)) ? 0 : nonreg_cost);
      return true;

    default:
      *total = FUNC6 (x, code, outer_code);
      return true;
    }
}