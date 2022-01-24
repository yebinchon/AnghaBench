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
 int COND_EXPR ; 
 scalar_t__ EQ_EXPR ; 
 int INTEGER_CST ; 
 scalar_t__ NE_EXPR ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,int) ; 
 int TRUTH_AND_EXPR ; 
 int TRUTH_OR_EXPR ; 
 scalar_t__ boolean_true_node ; 
 int /*<<< orphan*/  boolean_type_node ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 

__attribute__((used)) static tree
FUNC10 (tree cond, tree expr)
{
  bool changed;
  tree e, te, e0, e1, e2, notcond;
  enum tree_code code = FUNC0 (expr);

  if (code == INTEGER_CST)
    return expr;

  if (code == TRUTH_OR_EXPR
      || code == TRUTH_AND_EXPR
      || code == COND_EXPR)
    {
      changed = false;

      e0 = FUNC10 (cond, FUNC1 (expr, 0));
      if (FUNC1 (expr, 0) != e0)
	changed = true;

      e1 = FUNC10 (cond, FUNC1 (expr, 1));
      if (FUNC1 (expr, 1) != e1)
	changed = true;

      if (code == COND_EXPR)
	{
	  e2 = FUNC10 (cond, FUNC1 (expr, 2));
	  if (FUNC1 (expr, 2) != e2)
	    changed = true;
	}
      else
	e2 = NULL_TREE;

      if (changed)
	{
	  if (code == COND_EXPR)
	    expr = FUNC5 (code, boolean_type_node, e0, e1, e2);
	  else
	    expr = FUNC4 (code, boolean_type_node, e0, e1);
	}

      return expr;
    }

  /* In case COND is equality, we may be able to simplify EXPR by copy/constant
     propagation, and vice versa.  Fold does not handle this, since it is
     considered too expensive.  */
  if (FUNC0 (cond) == EQ_EXPR)
    {
      e0 = FUNC1 (cond, 0);
      e1 = FUNC1 (cond, 1);

      /* We know that e0 == e1.  Check whether we cannot simplify expr
	 using this fact.  */
      e = FUNC8 (expr, e0, e1);
      if (FUNC9 (e) || FUNC7 (e))
	return e;

      e = FUNC8 (expr, e1, e0);
      if (FUNC9 (e) || FUNC7 (e))
	return e;
    }
  if (FUNC0 (expr) == EQ_EXPR)
    {
      e0 = FUNC1 (expr, 0);
      e1 = FUNC1 (expr, 1);

      /* If e0 == e1 (EXPR) implies !COND, then EXPR cannot be true.  */
      e = FUNC8 (cond, e0, e1);
      if (FUNC9 (e))
	return e;
      e = FUNC8 (cond, e1, e0);
      if (FUNC9 (e))
	return e;
    }
  if (FUNC0 (expr) == NE_EXPR)
    {
      e0 = FUNC1 (expr, 0);
      e1 = FUNC1 (expr, 1);

      /* If e0 == e1 (!EXPR) implies !COND, then EXPR must be true.  */
      e = FUNC8 (cond, e0, e1);
      if (FUNC9 (e))
	return boolean_true_node;
      e = FUNC8 (cond, e1, e0);
      if (FUNC9 (e))
	return boolean_true_node;
    }

  te = FUNC2 (expr);

  /* Check whether COND ==> EXPR.  */
  notcond = FUNC6 (cond);
  e = FUNC3 (TRUTH_OR_EXPR, boolean_type_node, notcond, te);
  if (FUNC7 (e))
    return e;

  /* Check whether COND ==> not EXPR.  */
  e = FUNC3 (TRUTH_AND_EXPR, boolean_type_node, cond, te);
  if (e && FUNC9 (e))
    return e;

  return expr;
}