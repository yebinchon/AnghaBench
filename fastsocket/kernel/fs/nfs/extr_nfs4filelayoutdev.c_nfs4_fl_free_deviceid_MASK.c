#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct nfs4_pnfs_ds {int /*<<< orphan*/  ds_node; int /*<<< orphan*/  ds_count; } ;
struct TYPE_2__ {int /*<<< orphan*/  deviceid; } ;
struct nfs4_file_layout_dsaddr {int ds_num; struct nfs4_file_layout_dsaddr* stripe_indices; struct nfs4_pnfs_ds** ds_list; TYPE_1__ id_node; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nfs4_pnfs_ds*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfs4_file_layout_dsaddr*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nfs4_ds_cache_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void
FUNC6(struct nfs4_file_layout_dsaddr *dsaddr)
{
	struct nfs4_pnfs_ds *ds;
	int i;

	FUNC4(&dsaddr->id_node.deviceid);

	for (i = 0; i < dsaddr->ds_num; i++) {
		ds = dsaddr->ds_list[i];
		if (ds != NULL) {
			if (FUNC0(&ds->ds_count,
						&nfs4_ds_cache_lock)) {
				FUNC3(&ds->ds_node);
				FUNC5(&nfs4_ds_cache_lock);
				FUNC1(ds);
			}
		}
	}
	FUNC2(dsaddr->stripe_indices);
	FUNC2(dsaddr);
}