#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
typedef  TYPE_1__* splay_tree_node ;
typedef  int /*<<< orphan*/  splay_tree_key ;
typedef  int /*<<< orphan*/  splay_tree ;
struct TYPE_6__ {int /*<<< orphan*/  decl_map; } ;
typedef  TYPE_2__ copy_body_data ;
struct TYPE_5__ {scalar_t__ value; } ;

/* Variables and functions */
 scalar_t__ BIND_EXPR ; 
 scalar_t__ LABEL_DECL ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ SAVE_EXPR ; 
 scalar_t__ STATEMENT_LIST ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ VAR_DECL ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,int /*<<< orphan*/ ,int*) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 

__attribute__((used)) static tree
FUNC8 (tree *tp, int *walk_subtrees, void *data)
{
  copy_body_data *id = (copy_body_data *) data;
  splay_tree st = id->decl_map;
  splay_tree_node n;

  /* Only a local declaration (variable or label).  */
  if ((FUNC0 (*tp) == VAR_DECL && !FUNC1 (*tp))
      || FUNC0 (*tp) == LABEL_DECL)
    {
      /* Lookup the declaration.  */
      n = FUNC6 (st, (splay_tree_key) *tp);

      /* If it's there, remap it.  */
      if (n)
	*tp = (tree) n->value;
    }

  else if (FUNC0 (*tp) == STATEMENT_LIST)
    FUNC3 (tp);
  else if (FUNC0 (*tp) == BIND_EXPR)
    FUNC2 (tp, walk_subtrees, id);
  else if (FUNC0 (*tp) == SAVE_EXPR)
    FUNC5 (tp, st, walk_subtrees);
  else
    {
      FUNC4 (tp, walk_subtrees, NULL);

      /* Do whatever unsaving is required.  */
      FUNC7 (*tp);
    }

  /* Keep iterating.  */
  return NULL_TREE;
}