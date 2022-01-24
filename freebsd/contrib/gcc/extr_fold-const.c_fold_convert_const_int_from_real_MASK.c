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
typedef  scalar_t__ tree ;
typedef  enum tree_code { ____Placeholder_tree_code } tree_code ;
typedef  int /*<<< orphan*/  REAL_VALUE_TYPE ;
typedef  scalar_t__ HOST_WIDE_INT ;

/* Variables and functions */
#define  FIX_CEIL_EXPR 131 
#define  FIX_FLOOR_EXPR 130 
#define  FIX_ROUND_EXPR 129 
#define  FIX_TRUNC_EXPR 128 
 int /*<<< orphan*/  NULL_TREE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  VOIDmode ; 
 scalar_t__ FUNC10 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static tree
FUNC18 (enum tree_code code, tree type, tree arg1)
{
  int overflow = 0;
  tree t;

  /* The following code implements the floating point to integer
     conversion rules required by the Java Language Specification,
     that IEEE NaNs are mapped to zero and values that overflow
     the target precision saturate, i.e. values greater than
     INT_MAX are mapped to INT_MAX, and values less than INT_MIN
     are mapped to INT_MIN.  These semantics are allowed by the
     C and C++ standards that simply state that the behavior of
     FP-to-integer conversion is unspecified upon overflow.  */

  HOST_WIDE_INT high, low;
  REAL_VALUE_TYPE r;
  REAL_VALUE_TYPE x = FUNC7 (arg1);

  switch (code)
    {
    case FIX_TRUNC_EXPR:
      FUNC16 (&r, VOIDmode, &x);
      break;

    case FIX_CEIL_EXPR:
      FUNC13 (&r, VOIDmode, &x);
      break;

    case FIX_FLOOR_EXPR:
      FUNC14 (&r, VOIDmode, &x);
      break;

    case FIX_ROUND_EXPR:
      FUNC15 (&r, VOIDmode, &x);
      break;

    default:
      FUNC12 ();
    }

  /* If R is NaN, return zero and show we have an overflow.  */
  if (FUNC1 (r))
    {
      overflow = 1;
      high = 0;
      low = 0;
    }

  /* See if R is less than the lower bound or greater than the
     upper bound.  */

  if (! overflow)
    {
      tree lt = FUNC9 (type);
      REAL_VALUE_TYPE l = FUNC17 (NULL_TREE, lt);
      if (FUNC0 (r, l))
	{
	  overflow = 1;
	  high = FUNC4 (lt);
	  low = FUNC5 (lt);
	}
    }

  if (! overflow)
    {
      tree ut = FUNC8 (type);
      if (ut)
	{
	  REAL_VALUE_TYPE u = FUNC17 (NULL_TREE, ut);
	  if (FUNC0 (u, r))
	    {
	      overflow = 1;
	      high = FUNC4 (ut);
	      low = FUNC5 (ut);
	    }
	}
    }

  if (! overflow)
    FUNC2 (&low, &high, r);

  t = FUNC10 (type, low, high);

  t = FUNC11 (t, -1, overflow | FUNC6 (arg1),
		      FUNC3 (arg1));
  return t;
}