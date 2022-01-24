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
typedef  int /*<<< orphan*/  tree ;
typedef  enum tree_code { ____Placeholder_tree_code } tree_code ;

/* Variables and functions */
#define  EQ_EXPR 133 
#define  GE_EXPR 132 
#define  GT_EXPR 131 
 scalar_t__ INTEGER_CST ; 
#define  LE_EXPR 130 
#define  LT_EXPR 129 
 int MAX_EXPR ; 
 int MIN_EXPR ; 
#define  NE_EXPR 128 
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int const TRUTH_ORIF_EXPR ; 
 int /*<<< orphan*/  FUNC4 (int const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  integer_one_node ; 
 int /*<<< orphan*/  integer_zero_node ; 
 int FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static tree
FUNC10 (enum tree_code code, tree type, tree op0, tree op1)
{
  tree arg0 = op0;
  enum tree_code op_code;
  tree comp_const = op1;
  tree minmax_const;
  int consts_equal, consts_lt;
  tree inner;

  FUNC0 (arg0);

  op_code = FUNC1 (arg0);
  minmax_const = FUNC3 (arg0, 1);
  consts_equal = FUNC8 (minmax_const, comp_const);
  consts_lt = FUNC9 (minmax_const, comp_const);
  inner = FUNC3 (arg0, 0);

  /* If something does not permit us to optimize, return the original tree.  */
  if ((op_code != MIN_EXPR && op_code != MAX_EXPR)
      || FUNC1 (comp_const) != INTEGER_CST
      || FUNC2 (comp_const)
      || FUNC1 (minmax_const) != INTEGER_CST
      || FUNC2 (minmax_const))
    return NULL_TREE;

  /* Now handle all the various comparison codes.  We only handle EQ_EXPR
     and GT_EXPR, doing the rest with recursive calls using logical
     simplifications.  */
  switch (code)
    {
    case NE_EXPR:  case LT_EXPR:  case LE_EXPR:
      {
	tree tem = FUNC10 (FUNC5 (code, false),
					  type, op0, op1);
	if (tem)
	  return FUNC6 (tem);
	return NULL_TREE;
      }

    case GE_EXPR:
      return
	FUNC4 (TRUTH_ORIF_EXPR, type,
		     FUNC10
		     (EQ_EXPR, type, arg0, comp_const),
		     FUNC10
		     (GT_EXPR, type, arg0, comp_const));

    case EQ_EXPR:
      if (op_code == MAX_EXPR && consts_equal)
	/* MAX (X, 0) == 0  ->  X <= 0  */
	return FUNC4 (LE_EXPR, type, inner, comp_const);

      else if (op_code == MAX_EXPR && consts_lt)
	/* MAX (X, 0) == 5  ->  X == 5   */
	return FUNC4 (EQ_EXPR, type, inner, comp_const);

      else if (op_code == MAX_EXPR)
	/* MAX (X, 0) == -1  ->  false  */
	return FUNC7 (type, integer_zero_node, inner);

      else if (consts_equal)
	/* MIN (X, 0) == 0  ->  X >= 0  */
	return FUNC4 (GE_EXPR, type, inner, comp_const);

      else if (consts_lt)
	/* MIN (X, 0) == 5  ->  false  */
	return FUNC7 (type, integer_zero_node, inner);

      else
	/* MIN (X, 0) == -1  ->  X == -1  */
	return FUNC4 (EQ_EXPR, type, inner, comp_const);

    case GT_EXPR:
      if (op_code == MAX_EXPR && (consts_equal || consts_lt))
	/* MAX (X, 0) > 0  ->  X > 0
	   MAX (X, 0) > 5  ->  X > 5  */
	return FUNC4 (GT_EXPR, type, inner, comp_const);

      else if (op_code == MAX_EXPR)
	/* MAX (X, 0) > -1  ->  true  */
	return FUNC7 (type, integer_one_node, inner);

      else if (op_code == MIN_EXPR && (consts_equal || consts_lt))
	/* MIN (X, 0) > 0  ->  false
	   MIN (X, 0) > 5  ->  false  */
	return FUNC7 (type, integer_zero_node, inner);

      else
	/* MIN (X, 0) > -1  ->  X > -1  */
	return FUNC4 (GT_EXPR, type, inner, comp_const);

    default:
      return NULL_TREE;
    }
}