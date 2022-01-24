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
#define  ADDR_EXPR 131 
 scalar_t__ CONVERT_EXPR ; 
 scalar_t__ INDIRECT_REF ; 
#define  INTEGER_CST 130 
#define  MINUS_EXPR 129 
 int /*<<< orphan*/  NEGATE_EXPR ; 
 scalar_t__ NOP_EXPR ; 
 int /*<<< orphan*/  NULL_TREE ; 
#define  PLUS_EXPR 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ptr_type_node ; 

__attribute__((used)) static tree
FUNC9 (tree expr)
{
  enum tree_code code = FUNC1 (expr);
  tree base, obj, op0, op1;

  /* If this is a pointer casted to any type, we need to determine
     the base object for the pointer; so handle conversions before
     throwing away non-pointer expressions.  */
  if (FUNC1 (expr) == NOP_EXPR
      || FUNC1 (expr) == CONVERT_EXPR)
    return FUNC9 (FUNC2 (expr, 0));

  if (!FUNC0 (FUNC3 (expr)))
    return NULL_TREE;

  switch (code)
    {
    case INTEGER_CST:
      return NULL_TREE;

    case ADDR_EXPR:
      obj = FUNC2 (expr, 0);
      base = FUNC8 (obj);

      if (!base)
	return expr;

      if (FUNC1 (base) == INDIRECT_REF)
	return FUNC9 (FUNC2 (base, 0));

      return FUNC7 (ptr_type_node,
		           FUNC4 (base));

    case PLUS_EXPR:
    case MINUS_EXPR:
      op0 = FUNC9 (FUNC2 (expr, 0));
      op1 = FUNC9 (FUNC2 (expr, 1));
      
      if (!op1)
	return op0;

      if (!op0)
	return (code == PLUS_EXPR
		? op1
		: FUNC5 (NEGATE_EXPR, ptr_type_node, op1));

      return FUNC6 (code, ptr_type_node, op0, op1);

    default:
      return FUNC7 (ptr_type_node, expr);
    }
}