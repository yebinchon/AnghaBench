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

/* Variables and functions */
#define  EQ_EXPR 133 
#define  GE_EXPR 132 
#define  GT_EXPR 131 
 scalar_t__ INTEGER_CST ; 
#define  LE_EXPR 130 
#define  LT_EXPR 129 
#define  NE_EXPR 128 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int,scalar_t__) ; 
 scalar_t__ FUNC5 (int,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ tcc_comparison ; 

__attribute__((used)) static tree
FUNC8 (enum tree_code code, tree type, tree arg0, int upper0_p,
	     tree arg1, int upper1_p)
{
  tree tem;
  int result;
  int sgn0, sgn1;

  /* If neither arg represents infinity, do the normal operation.
     Else, if not a comparison, return infinity.  Else handle the special
     comparison rules. Note that most of the cases below won't occur, but
     are handled for consistency.  */

  if (arg0 != 0 && arg1 != 0)
    {
      tem = FUNC5 (code, type != 0 ? type : FUNC3 (arg0),
			 arg0, FUNC6 (FUNC3 (arg0), arg1));
      FUNC0 (tem);
      return FUNC1 (tem) == INTEGER_CST ? tem : 0;
    }

  if (FUNC2 (code) != tcc_comparison)
    return 0;

  /* Set SGN[01] to -1 if ARG[01] is a lower bound, 1 for upper, and 0
     for neither.  In real maths, we cannot assume open ended ranges are
     the same. But, this is computer arithmetic, where numbers are finite.
     We can therefore make the transformation of any unbounded range with
     the value Z, Z being greater than any representable number. This permits
     us to treat unbounded ranges as equal.  */
  sgn0 = arg0 != 0 ? 0 : (upper0_p ? 1 : -1);
  sgn1 = arg1 != 0 ? 0 : (upper1_p ? 1 : -1);
  switch (code)
    {
    case EQ_EXPR:
      result = sgn0 == sgn1;
      break;
    case NE_EXPR:
      result = sgn0 != sgn1;
      break;
    case LT_EXPR:
      result = sgn0 < sgn1;
      break;
    case LE_EXPR:
      result = sgn0 <= sgn1;
      break;
    case GT_EXPR:
      result = sgn0 > sgn1;
      break;
    case GE_EXPR:
      result = sgn0 >= sgn1;
      break;
    default:
      FUNC7 ();
    }

  return FUNC4 (result, type);
}