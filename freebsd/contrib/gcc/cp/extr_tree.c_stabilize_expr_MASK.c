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

/* Variables and functions */
 int /*<<< orphan*/  ADDR_EXPR ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

tree
FUNC9 (tree exp, tree* initp)
{
  tree init_expr;

  if (!FUNC1 (exp))
    init_expr = NULL_TREE;
  else if (!FUNC8 (exp)
	   || !FUNC3 (FUNC2 (exp)))
    {
      init_expr = FUNC7 (exp);
      exp = FUNC0 (init_expr);
    }
  else
    {
      exp = FUNC5 (ADDR_EXPR, exp, 1);
      init_expr = FUNC7 (exp);
      exp = FUNC0 (init_expr);
      exp = FUNC4 (exp, 0);
    }
  *initp = init_expr;

  FUNC6 (!FUNC1 (exp));
  return exp;
}