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

/* Variables and functions */
 int /*<<< orphan*/  GE_EXPR ; 
 scalar_t__ GT_EXPR ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ LT_EXPR ; 
 int /*<<< orphan*/  MINUS_EXPR ; 
 scalar_t__ NULL_TREE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,int) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

__attribute__((used)) static tree
FUNC7 (tree ineq, tree bound)
{
  tree a, typea, type = FUNC4 (ineq), a1, diff, y;

  if (FUNC2 (bound) == LT_EXPR)
    a = FUNC3 (bound, 0);
  else if (FUNC2 (bound) == GT_EXPR)
    a = FUNC3 (bound, 1);
  else
    return NULL_TREE;

  typea = FUNC4 (a);
  if (!FUNC0 (typea)
      && !FUNC1 (typea))
    return NULL_TREE;

  if (FUNC2 (ineq) == LT_EXPR)
    {
      a1 = FUNC3 (ineq, 1);
      y = FUNC3 (ineq, 0);
    }
  else if (FUNC2 (ineq) == GT_EXPR)
    {
      a1 = FUNC3 (ineq, 0);
      y = FUNC3 (ineq, 1);
    }
  else
    return NULL_TREE;

  if (FUNC4 (a1) != typea)
    return NULL_TREE;

  diff = FUNC5 (MINUS_EXPR, typea, a1, a);
  if (!FUNC6 (diff))
    return NULL_TREE;

  return FUNC5 (GE_EXPR, type, a, y);
}