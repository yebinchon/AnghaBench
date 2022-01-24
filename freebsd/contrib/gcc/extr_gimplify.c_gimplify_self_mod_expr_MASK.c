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
typedef  int /*<<< orphan*/ * tree ;
typedef  enum tree_code { ____Placeholder_tree_code } tree_code ;
typedef  enum gimplify_status { ____Placeholder_gimplify_status } gimplify_status ;

/* Variables and functions */
 int GS_ALL_DONE ; 
 int GS_ERROR ; 
 int GS_OK ; 
 int MINUS_EXPR ; 
 int MODIFY_EXPR ; 
 int PLUS_EXPR ; 
 int POSTDECREMENT_EXPR ; 
 int POSTINCREMENT_EXPR ; 
 int PREDECREMENT_EXPR ; 
 int PREINCREMENT_EXPR ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fb_lvalue ; 
 int /*<<< orphan*/  fb_rvalue ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  is_gimple_lvalue ; 
 int /*<<< orphan*/  is_gimple_val ; 

__attribute__((used)) static enum gimplify_status
FUNC8 (tree *expr_p, tree *pre_p, tree *post_p,
			bool want_value)
{
  enum tree_code code;
  tree lhs, lvalue, rhs, t1, post = NULL, *orig_post_p = post_p;
  bool postfix;
  enum tree_code arith_code;
  enum gimplify_status ret;

  code = FUNC0 (*expr_p);

  FUNC5 (code == POSTINCREMENT_EXPR || code == POSTDECREMENT_EXPR
	      || code == PREINCREMENT_EXPR || code == PREDECREMENT_EXPR);

  /* Prefix or postfix?  */
  if (code == POSTINCREMENT_EXPR || code == POSTDECREMENT_EXPR)
    /* Faster to treat as prefix if result is not used.  */
    postfix = want_value;
  else
    postfix = false;

  /* For postfix, make sure the inner expression's post side effects
     are executed after side effects from this expression.  */
  if (postfix)
    post_p = &post;

  /* Add or subtract?  */
  if (code == PREINCREMENT_EXPR || code == POSTINCREMENT_EXPR)
    arith_code = PLUS_EXPR;
  else
    arith_code = MINUS_EXPR;

  /* Gimplify the LHS into a GIMPLE lvalue.  */
  lvalue = FUNC1 (*expr_p, 0);
  ret = FUNC7 (&lvalue, pre_p, post_p, is_gimple_lvalue, fb_lvalue);
  if (ret == GS_ERROR)
    return ret;

  /* Extract the operands to the arithmetic operation.  */
  lhs = lvalue;
  rhs = FUNC1 (*expr_p, 1);

  /* For postfix operator, we evaluate the LHS to an rvalue and then use
     that as the result value and in the postqueue operation.  */
  if (postfix)
    {
      ret = FUNC7 (&lhs, pre_p, post_p, is_gimple_val, fb_rvalue);
      if (ret == GS_ERROR)
	return ret;
    }

  t1 = FUNC4 (arith_code, FUNC2 (*expr_p), lhs, rhs);
  t1 = FUNC4 (MODIFY_EXPR, FUNC2 (lvalue), lvalue, t1);

  if (postfix)
    {
      FUNC6 (t1, orig_post_p);
      FUNC3 (post, orig_post_p);
      *expr_p = lhs;
      return GS_ALL_DONE;
    }
  else
    {
      *expr_p = t1;
      return GS_OK;
    }
}