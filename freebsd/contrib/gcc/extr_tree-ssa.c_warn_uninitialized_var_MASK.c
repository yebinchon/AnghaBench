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
#define  IMAGPART_EXPR 130 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NULL_TREE ; 
#define  REALPART_EXPR 129 
#define  SSA_NAME 128 
 int const FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,void*) ; 

__attribute__((used)) static tree
FUNC4 (tree *tp, int *walk_subtrees, void *data)
{
  tree t = *tp;

  switch (FUNC1 (t))
    {
    case SSA_NAME:
      /* We only do data flow with SSA_NAMEs, so that's all we
	 can warn about.  */
      FUNC3 (t, "%H%qD is used uninitialized in this function", data);
      *walk_subtrees = 0;
      break;

    case REALPART_EXPR:
    case IMAGPART_EXPR:
      /* The total store transformation performed during gimplification
	 creates uninitialized variable uses.  If all is well, these will
	 be optimized away, so don't warn now.  */
      if (FUNC1 (FUNC2 (t, 0)) == SSA_NAME)
	*walk_subtrees = 0;
      break;

    default:
      if (FUNC0 (t))
	*walk_subtrees = 0;
      break;
    }

  return NULL_TREE;
}