#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
typedef  int /*<<< orphan*/  id ;
struct TYPE_5__ {int transform_new_cfg; int transform_return_to_modify; int transform_lang_insert_block; int /*<<< orphan*/  decl_map; int /*<<< orphan*/  transform_call_graph_edges; int /*<<< orphan*/  copy_decl; void* dst_fn; void* src_fn; } ;
typedef  TYPE_1__ copy_body_data ;

/* Variables and functions */
 int /*<<< orphan*/  CB_CGE_DUPLICATE ; 
 int /*<<< orphan*/  copy_decl_no_change ; 
 void* current_function_decl ; 
 int /*<<< orphan*/  mark_local_for_remap_r ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  splay_tree_compare_pointers ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  unsave_r ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,int /*<<< orphan*/ ,TYPE_1__*) ; 

tree
FUNC5 (tree expr)
{
  copy_body_data id;

  /* There's nothing to do for NULL_TREE.  */
  if (expr == 0)
    return expr;

  /* Set up ID.  */
  FUNC0 (&id, 0, sizeof (id));
  id.src_fn = current_function_decl;
  id.dst_fn = current_function_decl;
  id.decl_map = FUNC2 (splay_tree_compare_pointers, NULL, NULL);

  id.copy_decl = copy_decl_no_change;
  id.transform_call_graph_edges = CB_CGE_DUPLICATE;
  id.transform_new_cfg = false;
  id.transform_return_to_modify = false;
  id.transform_lang_insert_block = false;

  /* Walk the tree once to find local labels.  */
  FUNC4 (&expr, mark_local_for_remap_r, &id);

  /* Walk the tree again, copying, remapping, and unsaving.  */
  FUNC3 (&expr, unsave_r, &id, NULL);

  /* Clean up.  */
  FUNC1 (id.decl_map);

  return expr;
}