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
struct mesh_table {int /*<<< orphan*/  rcu_head; scalar_t__ size_order; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mesh_table*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct mesh_table* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  mesh_table_free_rcu ; 
 scalar_t__ FUNC3 (struct mesh_table*,struct mesh_table*) ; 
 int /*<<< orphan*/  mpp_paths ; 
 int /*<<< orphan*/  pathtbl_resize_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct mesh_table*) ; 
 struct mesh_table* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(void)
{
	struct mesh_table *oldtbl, *newtbl;

	FUNC6(&pathtbl_resize_lock);
	oldtbl = FUNC5();
	newtbl = FUNC2(oldtbl->size_order + 1);
	if (!newtbl)
		goto out;
	if (FUNC3(oldtbl, newtbl) < 0) {
		FUNC0(newtbl);
		goto out;
	}
	FUNC4(mpp_paths, newtbl);
	FUNC1(&oldtbl->rcu_head, mesh_table_free_rcu);

 out:
	FUNC7(&pathtbl_resize_lock);
}