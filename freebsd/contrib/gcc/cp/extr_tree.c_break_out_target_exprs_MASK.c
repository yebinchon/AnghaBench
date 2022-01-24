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
typedef  int /*<<< orphan*/ * splay_tree ;

/* Variables and functions */
 int /*<<< orphan*/  bot_manip ; 
 int /*<<< orphan*/  bot_replace ; 
 int /*<<< orphan*/  splay_tree_compare_pointers ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

tree
FUNC3 (tree t)
{
  static int target_remap_count;
  static splay_tree target_remap;

  if (!target_remap_count++)
    target_remap = FUNC1 (splay_tree_compare_pointers,
				   /*splay_tree_delete_key_fn=*/NULL,
				   /*splay_tree_delete_value_fn=*/NULL);
  FUNC2 (&t, bot_manip, target_remap, NULL);
  FUNC2 (&t, bot_replace, target_remap, NULL);

  if (!--target_remap_count)
    {
      FUNC0 (target_remap);
      target_remap = NULL;
    }

  return t;
}