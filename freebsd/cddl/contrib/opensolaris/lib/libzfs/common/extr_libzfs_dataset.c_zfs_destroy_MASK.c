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
struct TYPE_4__ {scalar_t__ zfs_type; int /*<<< orphan*/  zfs_name; int /*<<< orphan*/  zfs_hdl; } ;
typedef  TYPE_1__ zfs_handle_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 scalar_t__ ZFS_TYPE_BOOKMARK ; 
 scalar_t__ ZFS_TYPE_SNAPSHOT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC9(zfs_handle_t *zhp, boolean_t defer)
{
	int error;

	if (zhp->zfs_type != ZFS_TYPE_SNAPSHOT && defer)
		return (EINVAL);

	if (zhp->zfs_type == ZFS_TYPE_BOOKMARK) {
		nvlist_t *nv = FUNC2();
		FUNC1(nv, zhp->zfs_name);
		error = FUNC5(nv, NULL);
		FUNC3(nv);
		if (error != 0) {
			return (FUNC8(zhp->zfs_hdl, error,
			    FUNC0(TEXT_DOMAIN, "cannot destroy '%s'"),
			    zhp->zfs_name));
		}
		return (0);
	}

	if (zhp->zfs_type == ZFS_TYPE_SNAPSHOT) {
		nvlist_t *nv = FUNC2();
		FUNC1(nv, zhp->zfs_name);
		error = FUNC6(nv, defer, NULL);
		FUNC3(nv);
	} else {
		error = FUNC4(zhp->zfs_name);
	}

	if (error != 0 && error != ENOENT) {
		return (FUNC8(zhp->zfs_hdl, errno,
		    FUNC0(TEXT_DOMAIN, "cannot destroy '%s'"),
		    zhp->zfs_name));
	}

	FUNC7(zhp);

	return (0);
}