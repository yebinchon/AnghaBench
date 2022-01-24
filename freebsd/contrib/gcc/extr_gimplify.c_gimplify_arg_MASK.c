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
typedef  int /*<<< orphan*/  fallback_t ;
typedef  enum gimplify_status { ____Placeholder_gimplify_status } gimplify_status ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fb_either ; 
 int /*<<< orphan*/  fb_rvalue ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int (*) (int /*<<< orphan*/ ),int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static enum gimplify_status
FUNC6 (tree *expr_p, tree *pre_p)
{
  bool (*test) (tree);
  fallback_t fb;

  /* In general, we allow lvalues for function arguments to avoid
     extra overhead of copying large aggregates out of even larger
     aggregates into temporaries only to copy the temporaries to
     the argument list.  Make optimizers happy by pulling out to
     temporaries those types that fit in registers.  */
  if (FUNC3 (FUNC0 (*expr_p)))
    test = is_gimple_val, fb = fb_rvalue;
  else
    test = is_gimple_lvalue, fb = fb_either;

  /* If this is a variable sized type, we must remember the size.  */
  FUNC5 (expr_p);

  /* There is a sequence point before a function call.  Side effects in
     the argument list must occur before the actual call. So, when
     gimplifying arguments, force gimplify_expr to use an internal
     post queue which is then appended to the end of PRE_P.  */
  return FUNC1 (expr_p, pre_p, NULL, test, fb);
}