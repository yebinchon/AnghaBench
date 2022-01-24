#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
typedef  scalar_t__ (* gimple_predicate ) (scalar_t__) ;
typedef  enum gimplify_status { ____Placeholder_gimplify_status } gimplify_status ;
struct TYPE_2__ {scalar_t__ temps; int /*<<< orphan*/  into_ssa; } ;

/* Variables and functions */
 int GS_ERROR ; 
 int /*<<< orphan*/  MODIFY_EXPR ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  fb_rvalue ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 TYPE_1__* gimplify_ctxp ; 
 int FUNC5 (scalar_t__*,scalar_t__*,int /*<<< orphan*/ *,scalar_t__ (*) (scalar_t__),int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  in_ssa_p ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ referenced_vars ; 

tree
FUNC10 (tree expr, tree *stmts, bool simple, tree var)
{
  tree t;
  enum gimplify_status ret;
  gimple_predicate gimple_test_f;

  *stmts = NULL_TREE;

  if (FUNC7 (expr))
    return expr;

  gimple_test_f = simple ? is_gimple_val : is_gimple_reg_rhs;

  FUNC9 ();
  gimplify_ctxp->into_ssa = in_ssa_p;

  if (var)
    expr = FUNC3 (MODIFY_EXPR, FUNC1 (var), var, expr);

  ret = FUNC5 (&expr, stmts, NULL,
		       gimple_test_f, fb_rvalue);
  FUNC4 (ret != GS_ERROR);

  if (referenced_vars)
    {
      for (t = gimplify_ctxp->temps; t ; t = FUNC0 (t))
	FUNC2 (t);
    }

  FUNC8 (NULL);

  return expr;
}