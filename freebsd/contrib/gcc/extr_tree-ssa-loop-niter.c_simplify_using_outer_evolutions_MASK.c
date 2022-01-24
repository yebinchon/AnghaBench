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
struct loop {int dummy; } ;
typedef  enum tree_code { ____Placeholder_tree_code } tree_code ;

/* Variables and functions */
 int COND_EXPR ; 
 scalar_t__ NULL_TREE ; 
 int FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,int) ; 
 int TRUTH_AND_EXPR ; 
 int TRUTH_OR_EXPR ; 
 int /*<<< orphan*/  boolean_type_node ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (struct loop*,scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 

__attribute__((used)) static tree
FUNC6 (struct loop *loop, tree expr)
{
  enum tree_code code = FUNC0 (expr);
  bool changed;
  tree e, e0, e1, e2;

  if (FUNC5 (expr))
    return expr;

  if (code == TRUTH_OR_EXPR
      || code == TRUTH_AND_EXPR
      || code == COND_EXPR)
    {
      changed = false;

      e0 = FUNC6 (loop, FUNC1 (expr, 0));
      if (FUNC1 (expr, 0) != e0)
	changed = true;

      e1 = FUNC6 (loop, FUNC1 (expr, 1));
      if (FUNC1 (expr, 1) != e1)
	changed = true;

      if (code == COND_EXPR)
	{
	  e2 = FUNC6 (loop, FUNC1 (expr, 2));
	  if (FUNC1 (expr, 2) != e2)
	    changed = true;
	}
      else
	e2 = NULL_TREE;

      if (changed)
	{
	  if (code == COND_EXPR)
	    expr = FUNC3 (code, boolean_type_node, e0, e1, e2);
	  else
	    expr = FUNC2 (code, boolean_type_node, e0, e1);
	}

      return expr;
    }

  e = FUNC4 (loop, expr);
  if (FUNC5 (e))
    return e;

  return expr;
}