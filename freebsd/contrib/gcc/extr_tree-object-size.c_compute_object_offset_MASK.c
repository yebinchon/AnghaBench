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
#define  ARRAY_REF 135 
 int BITS_PER_UNIT ; 
#define  COMPONENT_REF 134 
#define  CONVERT_EXPR 133 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
#define  IMAGPART_EXPR 132 
 int INTEGER_CST ; 
 int MINUS_EXPR ; 
 int MULT_EXPR ; 
 int /*<<< orphan*/  NEGATE_EXPR ; 
#define  NON_LVALUE_EXPR 131 
#define  NOP_EXPR 130 
 int PLUS_EXPR ; 
#define  REALPART_EXPR 129 
 int FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
#define  VIEW_CONVERT_EXPR 128 
 scalar_t__ error_mark_node ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC8 (int,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC9 (int) ; 
 scalar_t__ size_zero_node ; 
 int /*<<< orphan*/  sizetype ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int FUNC11 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static tree
FUNC12 (tree expr, tree var)
{
  enum tree_code code = PLUS_EXPR;
  tree base, off, t;

  if (expr == var)
    return size_zero_node;

  switch (FUNC2 (expr))
    {
    case COMPONENT_REF:
      base = FUNC12 (FUNC3 (expr, 0), var);
      if (base == error_mark_node)
	return base;

      t = FUNC3 (expr, 1);
      off = FUNC8 (PLUS_EXPR, FUNC1 (t),
			FUNC9 (FUNC11 (FUNC0 (t), 1)
				  / BITS_PER_UNIT));
      break;

    case REALPART_EXPR:
    case NOP_EXPR:
    case CONVERT_EXPR:
    case VIEW_CONVERT_EXPR:
    case NON_LVALUE_EXPR:
      return FUNC12 (FUNC3 (expr, 0), var);

    case IMAGPART_EXPR:
      base = FUNC12 (FUNC3 (expr, 0), var);
      if (base == error_mark_node)
	return base;

      off = FUNC5 (FUNC4 (expr));
      break;

    case ARRAY_REF:
      base = FUNC12 (FUNC3 (expr, 0), var);
      if (base == error_mark_node)
	return base;

      t = FUNC3 (expr, 1);
      if (FUNC2 (t) == INTEGER_CST && FUNC10 (t) < 0)
	{
	  code = MINUS_EXPR;
	  t = FUNC6 (NEGATE_EXPR, FUNC4 (t), t);
	}
      t = FUNC7 (sizetype, t);
      off = FUNC8 (MULT_EXPR, FUNC5 (FUNC4 (expr)), t);
      break;

    default:
      return error_mark_node;
    }

  return FUNC8 (code, base, off);
}