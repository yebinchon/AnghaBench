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
 size_t BUILT_IN_MEMCPY ; 
 int GS_OK ; 
 int /*<<< orphan*/  INDIRECT_REF ; 
 int /*<<< orphan*/  NOP_EXPR ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** implicit_built_in_decls ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static enum gimplify_status
FUNC6 (tree *expr_p, tree size, bool want_value)
{
  tree args, t, to, to_ptr, from;

  to = FUNC0 (*expr_p, 0);
  from = FUNC0 (*expr_p, 1);

  args = FUNC5 (NULL, size, NULL);

  t = FUNC3 (from);
  args = FUNC5 (NULL, t, args);

  to_ptr = FUNC3 (to);
  args = FUNC5 (NULL, to_ptr, args);
  t = implicit_built_in_decls[BUILT_IN_MEMCPY];
  t = FUNC4 (t, args);

  if (want_value)
    {
      t = FUNC2 (NOP_EXPR, FUNC1 (to_ptr), t);
      t = FUNC2 (INDIRECT_REF, FUNC1 (to), t);
    }

  *expr_p = t;
  return GS_OK;
}