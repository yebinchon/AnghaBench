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
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ RTX_COMM_ARITH ; 
 scalar_t__ RTX_COMM_COMPARE ; 
 scalar_t__ RTX_COMPARE ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (int,int,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__) ; 

rtx
FUNC6 (enum rtx_code code, enum machine_mode mode,
			   rtx op0, rtx op1)
{
  rtx trueop0, trueop1;
  rtx tem;

  /* Relational operations don't work here.  We must know the mode
     of the operands in order to do the comparison correctly.
     Assuming a full word can give incorrect results.
     Consider comparing 128 with -128 in QImode.  */
  FUNC2 (FUNC0 (code) != RTX_COMPARE);
  FUNC2 (FUNC0 (code) != RTX_COMM_COMPARE);

  /* Make sure the constant is second.  */
  if (FUNC0 (code) == RTX_COMM_ARITH
      && FUNC5 (op0, op1))
    {
      tem = op0, op0 = op1, op1 = tem;
    }

  trueop0 = FUNC1 (op0);
  trueop1 = FUNC1 (op1);

  tem = FUNC4 (code, mode, trueop0, trueop1);
  if (tem)
    return tem;
  return FUNC3 (code, mode, op0, op1, trueop0, trueop1);
}