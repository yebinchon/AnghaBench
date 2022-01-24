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
typedef  int /*<<< orphan*/  tree_stmt_iterator ;
typedef  int /*<<< orphan*/  tree ;
struct walk_stmt_info {int /*<<< orphan*/  tsi; struct nesting_info* info; } ;
struct var_map_elt {int /*<<< orphan*/  new; int /*<<< orphan*/  old; } ;
struct nesting_info {int /*<<< orphan*/  var_map; } ;

/* Variables and functions */
 scalar_t__ GOTO_EXPR ; 
 scalar_t__ LABEL_EXPR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NULL_TREE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TSI_SAME_STMT ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct var_map_elt*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  void_type_node ; 

__attribute__((used)) static tree
FUNC9 (tree *tp, int *walk_subtrees, void *data)
{
  struct walk_stmt_info *wi = (struct walk_stmt_info *) data;
  struct nesting_info *info = wi->info;
  tree t = *tp, label, new_label, x;
  struct var_map_elt *elt, dummy;
  tree_stmt_iterator tmp_tsi;

  *walk_subtrees = 0;
  if (FUNC1 (t) != LABEL_EXPR)
    return NULL_TREE;
  label = FUNC0 (t);

  dummy.old = label;
  elt = (struct var_map_elt *) FUNC4 (info->var_map, &dummy);
  if (!elt)
    return NULL_TREE;
  new_label = elt->new;

  /* If there's any possibility that the previous statement falls through,
     then we must branch around the new non-local label.  */
  tmp_tsi = wi->tsi;
  FUNC7 (&tmp_tsi);
  if (FUNC5 (tmp_tsi) || FUNC2 (FUNC8 (tmp_tsi)))
    {
      x = FUNC3 (GOTO_EXPR, void_type_node, label);
      FUNC6 (&wi->tsi, x, TSI_SAME_STMT);
    }
  x = FUNC3 (LABEL_EXPR, void_type_node, new_label);
  FUNC6 (&wi->tsi, x, TSI_SAME_STMT);

  return NULL_TREE;
}