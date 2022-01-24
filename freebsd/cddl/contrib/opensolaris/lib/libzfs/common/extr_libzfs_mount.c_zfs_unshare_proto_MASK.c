#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ zfs_share_proto_t ;
struct TYPE_10__ {int /*<<< orphan*/  zfs_name; TYPE_2__* zfs_hdl; } ;
typedef  TYPE_1__ zfs_handle_t ;
struct mnttab {char const* mnt_mountp; } ;
struct TYPE_11__ {int /*<<< orphan*/  libzfs_mnttab; } ;
typedef  TYPE_2__ libzfs_handle_t ;

/* Variables and functions */
 scalar_t__ PROTO_END ; 
 scalar_t__ ZFS_TYPE_FILESYSTEM ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (TYPE_2__*,char*,scalar_t__) ; 
 scalar_t__ FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,struct mnttab*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 char* FUNC7 (TYPE_2__*,char const*) ; 

int
FUNC8(zfs_handle_t *zhp, const char *mountpoint,
    zfs_share_proto_t *proto)
{
	libzfs_handle_t *hdl = zhp->zfs_hdl;
	struct mnttab entry;
	char *mntpt = NULL;

	/* check to see if need to unmount the filesystem */
	FUNC3(zhp->zfs_hdl->libzfs_mnttab);
	if (mountpoint != NULL)
		mountpoint = mntpt = FUNC7(hdl, mountpoint);

	if (mountpoint != NULL || ((FUNC6(zhp) == ZFS_TYPE_FILESYSTEM) &&
	    FUNC2(hdl, FUNC5(zhp), &entry) == 0)) {
		zfs_share_proto_t *curr_proto;

		if (mountpoint == NULL)
			mntpt = FUNC7(zhp->zfs_hdl, entry.mnt_mountp);

		for (curr_proto = proto; *curr_proto != PROTO_END;
		    curr_proto++) {

			if (FUNC1(hdl, mntpt, *curr_proto) &&
			    FUNC4(hdl, zhp->zfs_name,
			    mntpt, *curr_proto) != 0) {
				if (mntpt != NULL)
					FUNC0(mntpt);
				return (-1);
			}
		}
	}
	if (mntpt != NULL)
		FUNC0(mntpt);

	return (0);
}