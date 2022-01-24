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
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;

/* Variables and functions */
#define  AND 134 
#define  ASHIFT 133 
#define  ASHIFTRT 132 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
#define  IOR 131 
#define  LSHIFTRT 130 
 int MINUS ; 
#define  MULT 129 
 int /*<<< orphan*/  NOT ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int PLUS ; 
#define  SUBREG 128 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UNITS_PER_WORD ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 
 int XOR ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  flag_unsafe_math_optimizations ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static rtx
FUNC19 (rtx x)
{
  enum rtx_code code = FUNC2 (x);
  enum rtx_code inner_code;
  rtx lhs, rhs, other;
  rtx tem;

  /* Distributivity is not true for floating point as it can change the
     value.  So we don't do it unless -funsafe-math-optimizations.  */
  if (FUNC1 (FUNC3 (x))
      && ! flag_unsafe_math_optimizations)
    return x;

  /* The outer operation can only be one of the following:  */
  if (code != IOR && code != AND && code != XOR
      && code != PLUS && code != MINUS)
    return x;

  lhs = FUNC12 (x, 0);
  rhs = FUNC12 (x, 1);

  /* If either operand is a primitive we can't do anything, so get out
     fast.  */
  if (FUNC7 (lhs) || FUNC7 (rhs))
    return x;

  lhs = FUNC13 (lhs);
  rhs = FUNC13 (rhs);
  inner_code = FUNC2 (lhs);
  if (inner_code != FUNC2 (rhs))
    return x;

  /* See if the inner and outer operations distribute.  */
  switch (inner_code)
    {
    case LSHIFTRT:
    case ASHIFTRT:
    case AND:
    case IOR:
      /* These all distribute except over PLUS.  */
      if (code == PLUS || code == MINUS)
	return x;
      break;

    case MULT:
      if (code != PLUS && code != MINUS)
	return x;
      break;

    case ASHIFT:
      /* This is also a multiply, so it distributes over everything.  */
      break;

    case SUBREG:
      /* Non-paradoxical SUBREGs distributes over all operations,
	 provided the inner modes and byte offsets are the same, this
	 is an extraction of a low-order part, we don't convert an fp
	 operation to int or vice versa, this is not a vector mode,
	 and we would not be converting a single-word operation into a
	 multi-word operation.  The latter test is not required, but
	 it prevents generating unneeded multi-word operations.  Some
	 of the previous tests are redundant given the latter test,
	 but are retained because they are required for correctness.

	 We produce the result slightly differently in this case.  */

      if (FUNC3 (FUNC9 (lhs)) != FUNC3 (FUNC9 (rhs))
	  || FUNC8 (lhs) != FUNC8 (rhs)
	  || ! FUNC18 (lhs)
	  || (FUNC5 (FUNC3 (lhs))
	      != FUNC5 (FUNC3 (FUNC9 (lhs))))
	  || (FUNC6 (FUNC3 (lhs))
	      > FUNC6 (FUNC3 (FUNC9 (lhs))))
	  || FUNC11 (FUNC3 (lhs))
	  || FUNC6 (FUNC3 (FUNC9 (lhs))) > UNITS_PER_WORD
	  /* Result might need to be truncated.  Don't change mode if
	     explicit truncation is needed.  */
	  || !FUNC10
	       (FUNC4 (FUNC3 (x)),
		FUNC4 (FUNC3 (FUNC9 (lhs)))))
	return x;

      tem = FUNC16 (code, FUNC3 (FUNC9 (lhs)),
				 FUNC9 (lhs), FUNC9 (rhs));
      return FUNC14 (FUNC3 (x), tem);

    default:
      return x;
    }

  /* Set LHS and RHS to the inner operands (A and B in the example
     above) and set OTHER to the common operand (C in the example).
     There is only one way to do this unless the inner operation is
     commutative.  */
  if (FUNC0 (lhs)
      && FUNC15 (FUNC12 (lhs, 0), FUNC12 (rhs, 0)))
    other = FUNC12 (lhs, 0), lhs = FUNC12 (lhs, 1), rhs = FUNC12 (rhs, 1);
  else if (FUNC0 (lhs)
	   && FUNC15 (FUNC12 (lhs, 0), FUNC12 (rhs, 1)))
    other = FUNC12 (lhs, 0), lhs = FUNC12 (lhs, 1), rhs = FUNC12 (rhs, 0);
  else if (FUNC0 (lhs)
	   && FUNC15 (FUNC12 (lhs, 1), FUNC12 (rhs, 0)))
    other = FUNC12 (lhs, 1), lhs = FUNC12 (lhs, 0), rhs = FUNC12 (rhs, 1);
  else if (FUNC15 (FUNC12 (lhs, 1), FUNC12 (rhs, 1)))
    other = FUNC12 (lhs, 1), lhs = FUNC12 (lhs, 0), rhs = FUNC12 (rhs, 0);
  else
    return x;

  /* Form the new inner operation, seeing if it simplifies first.  */
  tem = FUNC16 (code, FUNC3 (x), lhs, rhs);

  /* There is one exception to the general way of distributing:
     (a | c) ^ (b | c) -> (a ^ b) & ~c  */
  if (code == XOR && inner_code == IOR)
    {
      inner_code = AND;
      other = FUNC17 (NOT, FUNC3 (x), other, FUNC3 (x));
    }

  /* We may be able to continuing distributing the result, so call
     ourselves recursively on the inner operation before forming the
     outer operation, which we return.  */
  return FUNC16 (inner_code, FUNC3 (x),
			      FUNC19 (tem), other);
}