#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zfs_handle_t ;
typedef  int /*<<< orphan*/  mountpoint ;
struct TYPE_3__ {int mnt_idx; size_t mnt_num_handles; scalar_t__ (* mnt_func ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;int /*<<< orphan*/  mnt_tp; int /*<<< orphan*/  mnt_data; int /*<<< orphan*/  mnt_hdl; int /*<<< orphan*/ ** mnt_zhps; } ;
typedef  TYPE_1__ mnt_param_t ;
typedef  int /*<<< orphan*/  child ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int ZFS_MAXPROPLEN ; 
 int /*<<< orphan*/  ZFS_PROP_MOUNTPOINT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int FUNC2 (int /*<<< orphan*/ **,size_t,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,size_t,int,scalar_t__ (*) (int /*<<< orphan*/ *,int /*<<< orphan*/ ),int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(void *arg)
{
	mnt_param_t *mp = arg;
	int idx = mp->mnt_idx;
	zfs_handle_t **handles = mp->mnt_zhps;
	size_t num_handles = mp->mnt_num_handles;
	char mountpoint[ZFS_MAXPROPLEN];

	FUNC4(FUNC6(handles[idx], ZFS_PROP_MOUNTPOINT, mountpoint,
	    sizeof (mountpoint), NULL, NULL, 0, B_FALSE) == 0);

	if (mp->mnt_func(handles[idx], mp->mnt_data) != 0)
		return;

	/*
	 * We dispatch tasks to mount filesystems with mountpoints underneath
	 * this one. We do this by dispatching the next filesystem with a
	 * descendant mountpoint of the one we just mounted, then skip all of
	 * its descendants, dispatch the next descendant mountpoint, and so on.
	 * The non_descendant_idx() function skips over filesystems that are
	 * descendants of the filesystem we just dispatched.
	 */
	for (int i = idx + 1; i < num_handles;
	    i = FUNC2(handles, num_handles, i)) {
		char child[ZFS_MAXPROPLEN];
		FUNC4(FUNC6(handles[i], ZFS_PROP_MOUNTPOINT,
		    child, sizeof (child), NULL, NULL, 0, B_FALSE) == 0);

		if (!FUNC1(mountpoint, child))
			break; /* not a descendant, return */
		FUNC5(mp->mnt_hdl, handles, num_handles, i,
		    mp->mnt_func, mp->mnt_data, mp->mnt_tp);
	}
	FUNC0(mp);
}