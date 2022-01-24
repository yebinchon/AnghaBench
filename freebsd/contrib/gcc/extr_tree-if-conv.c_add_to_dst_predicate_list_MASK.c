#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
struct loop {int dummy; } ;
typedef  TYPE_1__* edge ;
typedef  int /*<<< orphan*/  block_stmt_iterator ;
struct TYPE_3__ {int /*<<< orphan*/  dest; scalar_t__ aux; } ;

/* Variables and functions */
 int /*<<< orphan*/  BSI_SAME_STMT ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUTH_AND_EXPR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ boolean_true_node ; 
 int /*<<< orphan*/  boolean_type_node ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct loop*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 

__attribute__((used)) static tree
FUNC8 (struct loop * loop, edge e,
			   tree prev_cond, tree cond,
			   block_stmt_iterator *bsi)
{
  tree new_cond = NULL_TREE;

  if (!FUNC4 (loop, e->dest))
    return NULL_TREE;

  if (prev_cond == boolean_true_node || !prev_cond)
    new_cond = FUNC7 (cond);
  else
    {
      tree tmp;
      tree tmp_stmt = NULL_TREE;
      tree tmp_stmts1 = NULL_TREE;
      tree tmp_stmts2 = NULL_TREE;
      prev_cond = FUNC5 (FUNC7 (prev_cond),
					&tmp_stmts1, true, NULL);
      if (tmp_stmts1)
        FUNC2 (bsi, tmp_stmts1, BSI_SAME_STMT);

      cond = FUNC5 (FUNC7 (cond),
				   &tmp_stmts2, true, NULL);
      if (tmp_stmts2)
        FUNC2 (bsi, tmp_stmts2, BSI_SAME_STMT);

      /* Add the condition to aux field of the edge.  In case edge
	 destination is a PHI node, this condition will be ANDed with
	 block predicate to construct complete condition.  */
      e->aux = cond;

      /* new_cond == prev_cond AND cond */
      tmp = FUNC3 (TRUTH_AND_EXPR, boolean_type_node,
		    FUNC7 (prev_cond), cond);
      tmp_stmt = FUNC6 (boolean_type_node, tmp);
      FUNC2 (bsi, tmp_stmt, BSI_SAME_STMT);
      new_cond = FUNC0 (tmp_stmt, 0);
    }
  FUNC1 (e->dest, new_cond);
  return new_cond;
}