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

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NULL_TREE ; 
 void* addressable_vars ; 
 int aliases_computed_p ; 
 void* call_clobbered_vars ; 
 void* default_defs ; 
 int /*<<< orphan*/  global_var ; 
 void* FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  int_tree_map_eq ; 
 int /*<<< orphan*/  int_tree_map_hash ; 
 void* referenced_vars ; 

void
FUNC5 (void)
{
  referenced_vars = FUNC1 (20, int_tree_map_hash, 
				     int_tree_map_eq, NULL);
  default_defs = FUNC1 (20, int_tree_map_hash, int_tree_map_eq, NULL);
  call_clobbered_vars = FUNC0 (NULL);
  addressable_vars = FUNC0 (NULL);
  FUNC2 ();
  FUNC4 ();
  FUNC3 ();
  global_var = NULL_TREE;
  aliases_computed_p = false;
}