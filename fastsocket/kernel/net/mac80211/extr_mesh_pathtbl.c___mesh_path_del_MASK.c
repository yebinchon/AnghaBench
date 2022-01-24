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
struct mpath_node {int /*<<< orphan*/  rcu; int /*<<< orphan*/  list; struct mesh_path* mpath; } ;
struct mesh_table {int /*<<< orphan*/  entries; } ;
struct mesh_path {int /*<<< orphan*/  state_lock; scalar_t__ is_gate; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  MESH_PATH_RESOLVING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mesh_table*,struct mesh_path*) ; 
 int /*<<< orphan*/  mesh_path_node_reclaim ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct mesh_table *tbl, struct mpath_node *node)
{
	struct mesh_path *mpath;
	mpath = node->mpath;
	FUNC4(&mpath->state_lock);
	mpath->flags |= MESH_PATH_RESOLVING;
	if (mpath->is_gate)
		FUNC3(tbl, mpath);
	FUNC2(&node->list);
	FUNC1(&node->rcu, mesh_path_node_reclaim);
	FUNC5(&mpath->state_lock);
	FUNC0(&tbl->entries);
}