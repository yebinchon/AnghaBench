#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/ * zfs_recvd_props; TYPE_3__* zfs_hdl; int /*<<< orphan*/  zfs_name; } ;
typedef  TYPE_1__ zfs_handle_t ;
struct TYPE_14__ {int /*<<< orphan*/  zc_name; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ zfs_cmd_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
struct TYPE_15__ {int /*<<< orphan*/  libzfs_fd; } ;
typedef  TYPE_3__ libzfs_handle_t ;

/* Variables and functions */
 scalar_t__ ENOMEM ; 
 int /*<<< orphan*/  ZFS_IOC_OBJSET_RECVD_PROPS ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int FUNC6 (TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ **) ; 

__attribute__((used)) static int
FUNC7(zfs_handle_t *zhp)
{
	libzfs_handle_t *hdl = zhp->zfs_hdl;
	nvlist_t *recvdprops;
	zfs_cmd_t zc = { 0 };
	int err;

	if (FUNC3(hdl, &zc, 0) != 0)
		return (-1);

	(void) FUNC2(zc.zc_name, zhp->zfs_name, sizeof (zc.zc_name));

	while (FUNC0(hdl->libzfs_fd, ZFS_IOC_OBJSET_RECVD_PROPS, &zc) != 0) {
		if (errno == ENOMEM) {
			if (FUNC4(hdl, &zc) != 0) {
				return (-1);
			}
		} else {
			FUNC5(&zc);
			return (-1);
		}
	}

	err = FUNC6(zhp->zfs_hdl, &zc, &recvdprops);
	FUNC5(&zc);
	if (err != 0)
		return (-1);

	FUNC1(zhp->zfs_recvd_props);
	zhp->zfs_recvd_props = recvdprops;

	return (0);
}