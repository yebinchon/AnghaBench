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
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,int) ; 
 scalar_t__ FUNC2 (int,int,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (int,int,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static rtx
FUNC5 (enum rtx_code code, enum machine_mode mode,
				rtx op0, rtx op1)
{
  rtx tem;

  /* Linearize the operator to the left.  */
  if (FUNC0 (op1) == code)
    {
      /* "(a op b) op (c op d)" becomes "((a op b) op c) op d)".  */
      if (FUNC0 (op0) == code)
	{
	  tem = FUNC3 (code, mode, op0, FUNC1 (op1, 0));
	  return FUNC3 (code, mode, tem, FUNC1 (op1, 1));
	}

      /* "a op (b op c)" becomes "(b op c) op a".  */
      if (! FUNC4 (op1, op0))
	return FUNC3 (code, mode, op1, op0);

      tem = op0;
      op0 = op1;
      op1 = tem;
    }

  if (FUNC0 (op0) == code)
    {
      /* Canonicalize "(x op c) op y" as "(x op y) op c".  */
      if (FUNC4 (FUNC1 (op0, 1), op1))
	{
	  tem = FUNC3 (code, mode, FUNC1 (op0, 0), op1);
	  return FUNC3 (code, mode, tem, FUNC1 (op0, 1));
	}

      /* Attempt to simplify "(a op b) op c" as "a op (b op c)".  */
      tem = FUNC4 (FUNC1 (op0, 1), op1)
	    ? FUNC2 (code, mode, op1, FUNC1 (op0, 1))
	    : FUNC2 (code, mode, FUNC1 (op0, 1), op1);
      if (tem != 0)
        return FUNC3 (code, mode, FUNC1 (op0, 0), tem);

      /* Attempt to simplify "(a op b) op c" as "(a op c) op b".  */
      tem = FUNC4 (FUNC1 (op0, 0), op1)
	    ? FUNC2 (code, mode, op1, FUNC1 (op0, 0))
	    : FUNC2 (code, mode, FUNC1 (op0, 0), op1);
      if (tem != 0)
        return FUNC3 (code, mode, tem, FUNC1 (op0, 1));
    }

  return 0;
}