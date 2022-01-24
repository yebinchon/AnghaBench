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
struct TYPE_9__ {void* mnt_mntopts; void* mnt_fstype; void* mnt_mountp; void* mnt_special; } ;
struct TYPE_10__ {TYPE_1__ mtn_mt; } ;
typedef  TYPE_2__ mnttab_node_t ;
struct TYPE_11__ {int /*<<< orphan*/  libzfs_mnttab_cache_lock; int /*<<< orphan*/  libzfs_mnttab_cache; } ;
typedef  TYPE_3__ libzfs_handle_t ;

/* Variables and functions */
 char const* MNTTYPE_ZFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC4 (TYPE_3__*,int) ; 
 void* FUNC5 (TYPE_3__*,char const*) ; 

void
FUNC6(libzfs_handle_t *hdl, const char *special,
    const char *mountp, const char *mntopts)
{
	mnttab_node_t *mtn;

	FUNC2(&hdl->libzfs_mnttab_cache_lock);
	if (FUNC1(&hdl->libzfs_mnttab_cache) == 0) {
		mtn = FUNC4(hdl, sizeof (mnttab_node_t));
		mtn->mtn_mt.mnt_special = FUNC5(hdl, special);
		mtn->mtn_mt.mnt_mountp = FUNC5(hdl, mountp);
		mtn->mtn_mt.mnt_fstype = FUNC5(hdl, MNTTYPE_ZFS);
		mtn->mtn_mt.mnt_mntopts = FUNC5(hdl, mntopts);
		FUNC0(&hdl->libzfs_mnttab_cache, mtn);
	}
	FUNC3(&hdl->libzfs_mnttab_cache_lock);
}