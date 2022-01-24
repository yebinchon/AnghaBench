#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  zfs_name; int /*<<< orphan*/ * zfs_hdl; } ;
typedef  TYPE_1__ zfs_handle_t ;
struct mnttab {char const* mnt_mountp; } ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;

/* Variables and functions */
 scalar_t__ ZFS_TYPE_FILESYSTEM ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct mnttab*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  share_all_proto ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 char* FUNC6 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC7 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 

int
FUNC8(zfs_handle_t *zhp, const char *mountpoint, int flags)
{
	libzfs_handle_t *hdl = zhp->zfs_hdl;
	struct mnttab entry;
	char *mntpt = NULL;

	/* check to see if we need to unmount the filesystem */
	if (mountpoint != NULL || ((FUNC4(zhp) == ZFS_TYPE_FILESYSTEM) &&
	    FUNC1(hdl, zhp->zfs_name, &entry) == 0)) {
		/*
		 * mountpoint may have come from a call to
		 * getmnt/getmntany if it isn't NULL. If it is NULL,
		 * we know it comes from libzfs_mnttab_find which can
		 * then get freed later. We strdup it to play it safe.
		 */
		if (mountpoint == NULL)
			mntpt = FUNC6(hdl, entry.mnt_mountp);
		else
			mntpt = FUNC6(hdl, mountpoint);

		/*
		 * Unshare and unmount the filesystem
		 */
		if (FUNC7(zhp, mntpt, share_all_proto) != 0)
			return (-1);

		if (FUNC3(hdl, mntpt, flags) != 0) {
			FUNC0(mntpt);
			(void) FUNC5(zhp);
			return (-1);
		}
		FUNC2(hdl, zhp->zfs_name);
		FUNC0(mntpt);
	}

	return (0);
}