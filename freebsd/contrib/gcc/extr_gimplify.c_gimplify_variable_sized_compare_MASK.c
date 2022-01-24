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
typedef  enum gimplify_status { ____Placeholder_gimplify_status } gimplify_status ;

/* Variables and functions */
 size_t BUILT_IN_MEMCMP ; 
 int GS_OK ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** implicit_built_in_decls ; 
 int /*<<< orphan*/  integer_zero_node ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static enum gimplify_status
FUNC10 (tree *expr_p)
{
  tree op0 = FUNC2 (*expr_p, 0);
  tree op1 = FUNC2 (*expr_p, 1);
  tree args, t, dest;

  t = FUNC4 (FUNC3 (op0));
  t = FUNC9 (t);
  t = FUNC0 (t, op0);
  args = FUNC8 (NULL, t, NULL);
  t = FUNC6 (op1);
  args = FUNC8 (NULL, t, args);
  dest = FUNC6 (op0);
  args = FUNC8 (NULL, dest, args);
  t = implicit_built_in_decls[BUILT_IN_MEMCMP];
  t = FUNC7 (t, args);
  *expr_p
    = FUNC5 (FUNC1 (*expr_p), FUNC3 (*expr_p), t, integer_zero_node);

  return GS_OK;
}