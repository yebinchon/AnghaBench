#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct mnttab {int /*<<< orphan*/  mnt_mntopts; int /*<<< orphan*/  mnt_fstype; int /*<<< orphan*/  mnt_mountp; int /*<<< orphan*/  mnt_special; } ;
struct TYPE_9__ {void* mnt_mntopts; void* mnt_fstype; void* mnt_mountp; void* mnt_special; } ;
struct TYPE_10__ {TYPE_1__ mtn_mt; } ;
typedef  TYPE_2__ mnttab_node_t ;
struct TYPE_11__ {int /*<<< orphan*/  libzfs_mnttab_cache; int /*<<< orphan*/  libzfs_mnttab; } ;
typedef  TYPE_3__ libzfs_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  MNTTYPE_ZFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct mnttab*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (TYPE_3__*,int) ; 
 void* FUNC5 (TYPE_3__*,int /*<<< orphan*/ ) ; 

void
FUNC6(libzfs_handle_t *hdl)
{
	struct mnttab entry;

	FUNC2(hdl->libzfs_mnttab);
	while (FUNC1(hdl->libzfs_mnttab, &entry) == 0) {
		mnttab_node_t *mtn;

		if (FUNC3(entry.mnt_fstype, MNTTYPE_ZFS) != 0)
			continue;
		mtn = FUNC4(hdl, sizeof (mnttab_node_t));
		mtn->mtn_mt.mnt_special = FUNC5(hdl, entry.mnt_special);
		mtn->mtn_mt.mnt_mountp = FUNC5(hdl, entry.mnt_mountp);
		mtn->mtn_mt.mnt_fstype = FUNC5(hdl, entry.mnt_fstype);
		mtn->mtn_mt.mnt_mntopts = FUNC5(hdl, entry.mnt_mntopts);
		FUNC0(&hdl->libzfs_mnttab_cache, mtn);
	}
}