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
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (int) ; 
 int HIGH ; 
 int LO_SUM ; 
 int MEM ; 
 int REG ; 
#define  RTX_BIN_ARITH 136 
#define  RTX_BITFIELD_OPS 135 
#define  RTX_COMM_ARITH 134 
#define  RTX_COMM_COMPARE 133 
#define  RTX_COMPARE 132 
#define  RTX_EXTRA 131 
#define  RTX_OBJ 130 
#define  RTX_TERNARY 129 
#define  RTX_UNARY 128 
 int SUBREG ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int VOIDmode ; 
 scalar_t__ FUNC5 (scalar_t__,int) ; 
 scalar_t__ FUNC6 (int,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC9 (int,int,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC10 (int,int,int,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC11 (int,scalar_t__,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int,int,int,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC13 (int,int,scalar_t__,int) ; 

rtx
FUNC14 (rtx x, rtx old_rtx, rtx new_rtx)
{
  enum rtx_code code = FUNC0 (x);
  enum machine_mode mode = FUNC1 (x);
  enum machine_mode op_mode;
  rtx op0, op1, op2;

  /* If X is OLD_RTX, return NEW_RTX.  Otherwise, if this is an expression, try
     to build a new expression substituting recursively.  If we can't do
     anything, return our input.  */

  if (x == old_rtx)
    return new_rtx;

  switch (FUNC2 (code))
    {
    case RTX_UNARY:
      op0 = FUNC5 (x, 0);
      op_mode = FUNC1 (op0);
      op0 = FUNC14 (op0, old_rtx, new_rtx);
      if (op0 == FUNC5 (x, 0))
	return x;
      return FUNC13 (code, mode, op0, op_mode);

    case RTX_BIN_ARITH:
    case RTX_COMM_ARITH:
      op0 = FUNC14 (FUNC5 (x, 0), old_rtx, new_rtx);
      op1 = FUNC14 (FUNC5 (x, 1), old_rtx, new_rtx);
      if (op0 == FUNC5 (x, 0) && op1 == FUNC5 (x, 1))
	return x;
      return FUNC9 (code, mode, op0, op1);

    case RTX_COMPARE:
    case RTX_COMM_COMPARE:
      op0 = FUNC5 (x, 0);
      op1 = FUNC5 (x, 1);
      op_mode = FUNC1 (op0) != VOIDmode ? FUNC1 (op0) : FUNC1 (op1);
      op0 = FUNC14 (op0, old_rtx, new_rtx);
      op1 = FUNC14 (op1, old_rtx, new_rtx);
      if (op0 == FUNC5 (x, 0) && op1 == FUNC5 (x, 1))
	return x;
      return FUNC10 (code, mode, op_mode, op0, op1);

    case RTX_TERNARY:
    case RTX_BITFIELD_OPS:
      op0 = FUNC5 (x, 0);
      op_mode = FUNC1 (op0);
      op0 = FUNC14 (op0, old_rtx, new_rtx);
      op1 = FUNC14 (FUNC5 (x, 1), old_rtx, new_rtx);
      op2 = FUNC14 (FUNC5 (x, 2), old_rtx, new_rtx);
      if (op0 == FUNC5 (x, 0) && op1 == FUNC5 (x, 1) && op2 == FUNC5 (x, 2))
	return x;
      if (op_mode == VOIDmode)
	op_mode = FUNC1 (op0);
      return FUNC12 (code, mode, op_mode, op0, op1, op2);

    case RTX_EXTRA:
      /* The only case we try to handle is a SUBREG.  */
      if (code == SUBREG)
	{
	  op0 = FUNC14 (FUNC4 (x), old_rtx, new_rtx);
	  if (op0 == FUNC4 (x))
	    return x;
	  op0 = FUNC11 (FUNC1 (x), op0,
				     FUNC1 (FUNC4 (x)),
				     FUNC3 (x));
	  return op0 ? op0 : x;
	}
      break;

    case RTX_OBJ:
      if (code == MEM)
	{
	  op0 = FUNC14 (FUNC5 (x, 0), old_rtx, new_rtx);
	  if (op0 == FUNC5 (x, 0))
	    return x;
	  return FUNC7 (x, op0);
	}
      else if (code == LO_SUM)
	{
	  op0 = FUNC14 (FUNC5 (x, 0), old_rtx, new_rtx);
	  op1 = FUNC14 (FUNC5 (x, 1), old_rtx, new_rtx);

	  /* (lo_sum (high x) x) -> x  */
	  if (FUNC0 (op0) == HIGH && FUNC8 (FUNC5 (op0, 0), op1))
	    return op1;

	  if (op0 == FUNC5 (x, 0) && op1 == FUNC5 (x, 1))
	    return x;
	  return FUNC6 (mode, op0, op1);
	}
      else if (code == REG)
	{
	  if (FUNC8 (x, old_rtx))
	    return new_rtx;
	}
      break;

    default:
      break;
    }
  return x;
}