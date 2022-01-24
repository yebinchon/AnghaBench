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
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef  int /*<<< orphan*/  block_stmt_iterator ;

/* Variables and functions */
#define  BIT_AND_EXPR 134 
#define  BIT_IOR_EXPR 133 
#define  BIT_NOT_EXPR 132 
#define  BIT_XOR_EXPR 131 
 scalar_t__ FUNC0 (int) ; 
#define  MINUS_EXPR 130 
 scalar_t__ MODE_VECTOR_FLOAT ; 
 scalar_t__ MODE_VECTOR_INT ; 
#define  NEGATE_EXPR 129 
 int /*<<< orphan*/  NULL_TREE ; 
#define  PLUS_EXPR 128 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  do_binop ; 
 int /*<<< orphan*/  do_negate ; 
 int /*<<< orphan*/  do_plus_minus ; 
 int /*<<< orphan*/  do_unop ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ tcc_unary ; 

__attribute__((used)) static tree
FUNC8 (block_stmt_iterator *bsi, tree type, tree compute_type,
			 tree rhs, enum tree_code code)
{
  enum machine_mode compute_mode = FUNC3 (compute_type);

  /* If the compute mode is not a vector mode (hence we are not decomposing
     a BLKmode vector to smaller, hardware-supported vectors), we may want
     to expand the operations in parallel.  */
  if (FUNC0 (compute_mode) != MODE_VECTOR_INT
      && FUNC0 (compute_mode) != MODE_VECTOR_FLOAT)
    switch (code)
      {
      case PLUS_EXPR:
      case MINUS_EXPR:
        if (!FUNC4 (type))
          return FUNC5 (bsi, do_binop, do_plus_minus, type,
		      		         FUNC2 (rhs, 0),
					 FUNC2 (rhs, 1), code);
	break;

      case NEGATE_EXPR:
        if (!FUNC4 (type))
          return FUNC5 (bsi, do_unop, do_negate, type,
		      		         FUNC2 (rhs, 0),
					 NULL_TREE, code);
	break;

      case BIT_AND_EXPR:
      case BIT_IOR_EXPR:
      case BIT_XOR_EXPR:
        return FUNC6 (bsi, do_binop, type,
		      		       FUNC2 (rhs, 0),
				       FUNC2 (rhs, 1), code);

      case BIT_NOT_EXPR:
        return FUNC6 (bsi, do_unop, type,
		      		       FUNC2 (rhs, 0),
				       NULL_TREE, code);

      default:
	break;
      }

  if (FUNC1 (code) == tcc_unary)
    return FUNC7 (bsi, do_unop, type, compute_type,
				    FUNC2 (rhs, 0),
				    NULL_TREE, code);
  else
    return FUNC7 (bsi, do_binop, type, compute_type,
				    FUNC2 (rhs, 0),
				    FUNC2 (rhs, 1), code);
}