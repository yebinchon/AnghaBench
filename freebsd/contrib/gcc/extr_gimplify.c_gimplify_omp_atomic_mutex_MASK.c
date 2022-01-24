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
 size_t BUILT_IN_GOMP_ATOMIC_END ; 
 size_t BUILT_IN_GOMP_ATOMIC_START ; 
 int GS_ALL_DONE ; 
 int /*<<< orphan*/  MODIFY_EXPR ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** built_in_decls ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  void_type_node ; 

__attribute__((used)) static enum gimplify_status
FUNC4 (tree *expr_p, tree *pre_p, tree addr, tree rhs)
{
  tree t;

  t = built_in_decls[BUILT_IN_GOMP_ATOMIC_START];
  t = FUNC2 (t, NULL);
  FUNC3 (t, pre_p);

  t = FUNC1 (addr);
  t = FUNC0 (MODIFY_EXPR, void_type_node, t, rhs);
  FUNC3 (t, pre_p);
  
  t = built_in_decls[BUILT_IN_GOMP_ATOMIC_END];
  t = FUNC2 (t, NULL);
  FUNC3 (t, pre_p);

  *expr_p = NULL;
  return GS_ALL_DONE;
}