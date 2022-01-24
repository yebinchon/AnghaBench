#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zfs_handle_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_4__ {int /*<<< orphan*/  nomount; } ;
typedef  TYPE_1__ recvflags_t ;
typedef  int /*<<< orphan*/  prop_changelist_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;
typedef  int /*<<< orphan*/  avl_tree_t ;

/* Variables and functions */
 int /*<<< orphan*/  CL_GATHER_MOUNT_ALWAYS ; 
 int ENOENT ; 
 int O_EXCL ; 
 int O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ZFS_DEV ; 
 int /*<<< orphan*/  ZFS_PROP_MOUNTPOINT ; 
 int /*<<< orphan*/  ZFS_TYPE_FILESYSTEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (int /*<<< orphan*/ *,char*,char**) ; 
 int FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *,char const*,char*,TYPE_1__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char**,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int
FUNC11(libzfs_handle_t *hdl, const char *tosnap, nvlist_t *props,
    recvflags_t *flags, int infd, avl_tree_t *stream_avl)
{
	char *top_zfs = NULL;
	int err;
	int cleanup_fd;
	uint64_t action_handle = 0;
	char *originsnap = NULL;
	if (props) {
		err = FUNC6(props, "origin", &originsnap);
		if (err && err != ENOENT)
			return (err);
	}

	cleanup_fd = FUNC7(ZFS_DEV, O_RDWR|O_EXCL);
	FUNC0(cleanup_fd >= 0);

	err = FUNC10(hdl, tosnap, originsnap, flags, infd, NULL, NULL,
	    stream_avl, &top_zfs, cleanup_fd, &action_handle, NULL);

	FUNC0(0 == FUNC4(cleanup_fd));

	if (err == 0 && !flags->nomount && top_zfs) {
		zfs_handle_t *zhp;
		prop_changelist_t *clp;

		zhp = FUNC9(hdl, top_zfs, ZFS_TYPE_FILESYSTEM);
		if (zhp != NULL) {
			clp = FUNC2(zhp, ZFS_PROP_MOUNTPOINT,
			    CL_GATHER_MOUNT_ALWAYS, 0);
			FUNC8(zhp);
			if (clp != NULL) {
				/* mount and share received datasets */
				err = FUNC3(clp);
				FUNC1(clp);
			}
		}
		if (zhp == NULL || clp == NULL || err)
			err = -1;
	}
	if (top_zfs)
		FUNC5(top_zfs);

	return (err);
}