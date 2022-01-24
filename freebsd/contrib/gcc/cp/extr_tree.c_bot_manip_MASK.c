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
typedef  int /*<<< orphan*/  splay_tree_value ;
typedef  int /*<<< orphan*/  splay_tree_key ;
typedef  int /*<<< orphan*/  splay_tree ;

/* Variables and functions */
 scalar_t__ AGGR_INIT_EXPR ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ TARGET_EXPR ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (scalar_t__*,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static tree
FUNC10 (tree* tp, int* walk_subtrees, void* data)
{
  splay_tree target_remap = ((splay_tree) data);
  tree t = *tp;

  if (!FUNC4 (t) && FUNC1 (t))
    {
      /* There can't be any TARGET_EXPRs or their slot variables below
	 this point.  We used to check !TREE_SIDE_EFFECTS, but then we
	 failed to copy an ADDR_EXPR of the slot VAR_DECL.  */
      *walk_subtrees = 0;
      return NULL_TREE;
    }
  if (FUNC0 (t) == TARGET_EXPR)
    {
      tree u;

      if (FUNC0 (FUNC2 (t, 1)) == AGGR_INIT_EXPR)
	u = FUNC6
	  (FUNC3 (t), FUNC5 (FUNC2 (t, 1)));
      else
	u = FUNC7
	  (FUNC5 (FUNC2 (t, 1)), FUNC3 (t));

      /* Map the old variable to the new one.  */
      FUNC9 (target_remap,
			 (splay_tree_key) FUNC2 (t, 0),
			 (splay_tree_value) FUNC2 (u, 0));

      /* Replace the old expression with the new version.  */
      *tp = u;
      /* We don't have to go below this point; the recursive call to
	 break_out_target_exprs will have handled anything below this
	 point.  */
      *walk_subtrees = 0;
      return NULL_TREE;
    }

  /* Make a copy of this node.  */
  return FUNC8 (tp, walk_subtrees, NULL);
}