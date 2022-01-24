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
 scalar_t__ EQ ; 
 scalar_t__ GE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ GT ; 
 scalar_t__ LE ; 
 scalar_t__ LT ; 
 int /*<<< orphan*/  MINUS ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int) ; 
 int VOIDmode ; 
 scalar_t__ FUNC4 (scalar_t__,int) ; 
 scalar_t__ const1_rtx ; 
 scalar_t__ const_true_rtx ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__,scalar_t__,scalar_t__) ; 

__attribute__((used)) static bool
FUNC8 (rtx a, rtx b)
{
  rtx op0, op1, opb0, opb1, r;
  enum machine_mode mode;

  if (FUNC0 (a) == EQ)
    {
      op0 = FUNC4 (a, 0);
      op1 = FUNC4 (a, 1);

      if (FUNC2 (op0))
	{
	  r = FUNC7 (b, op0, op1);
	  if (r == const_true_rtx)
	    return true;
	}

      if (FUNC2 (op1))
	{
	  r = FUNC7 (b, op1, op0);
	  if (r == const_true_rtx)
	    return true;
	}
    }

  /* A < B implies A + 1 <= B.  */
  if ((FUNC0 (a) == GT || FUNC0 (a) == LT)
      && (FUNC0 (b) == GE || FUNC0 (b) == LE))
    {
      op0 = FUNC4 (a, 0);
      op1 = FUNC4 (a, 1);
      opb0 = FUNC4 (b, 0);
      opb1 = FUNC4 (b, 1);

      if (FUNC0 (a) == GT)
	{
	  r = op0;
	  op0 = op1;
	  op1 = r;
	}

      if (FUNC0 (b) == GE)
	{
	  r = opb0;
	  opb0 = opb1;
	  opb1 = r;
	}

      mode = FUNC1 (op0);
      if (mode != FUNC1 (opb0))
	mode = VOIDmode;
      else if (mode == VOIDmode)
	{
	  mode = FUNC1 (op1);
	  if (mode != FUNC1 (opb1))
	    mode = VOIDmode;
	}

      if (FUNC3 (mode)
	  && FUNC5 (op1, opb1)
	  && FUNC6 (MINUS, mode, opb0, op0) == const1_rtx)
	return true;
    }

  return false;
}