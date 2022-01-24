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
 int MINUS_EXPR ; 
 int PLUS_EXPR ; 
 int FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 

__attribute__((used)) static tree
FUNC8 (tree expr, tree at_stmt)
{
  tree op0, op1, new0, new1;
  enum tree_code code = FUNC0 (expr);

  if (code == PLUS_EXPR
      || code == MINUS_EXPR)
    {
      op0 = FUNC1 (expr, 0);
      op1 = FUNC1 (expr, 1);

      if (FUNC7 (op1))
	{
	  new0 = FUNC8 (op0, at_stmt);
	  new1 = FUNC6 (op1);
	}
      else if (code == PLUS_EXPR && FUNC7 (op0))
	{
	  new0 = FUNC6 (op0);
	  new1 = FUNC8 (op1, at_stmt);
	}
      else
	return expr;

      if (new0 == op0 && new1 == op1)
	return expr;

      new0 = FUNC3 (FUNC2 (expr), new0, at_stmt);
      new1 = FUNC3 (FUNC2 (expr), new1, at_stmt);

      if (code == PLUS_EXPR)
	expr = FUNC5 (FUNC2 (expr), new0, new1);
      else
	expr = FUNC4 (FUNC2 (expr), new0, new1);

      return expr;
    }
  else
    return FUNC6 (expr);
}