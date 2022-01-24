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
struct mesh_table {int dummy; } ;
struct ieee80211_sub_if_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  pathtbl_resize_lock ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct mesh_table* FUNC4 () ; 
 struct mesh_table* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct mesh_table*,struct ieee80211_sub_if_data*) ; 

void FUNC7(struct ieee80211_sub_if_data *sdata)
{
	struct mesh_table *tbl;

	FUNC0();
	FUNC2(&pathtbl_resize_lock);
	tbl = FUNC4();
	FUNC6(tbl, sdata);
	tbl = FUNC5();
	FUNC6(tbl, sdata);
	FUNC3(&pathtbl_resize_lock);
	FUNC1();
}