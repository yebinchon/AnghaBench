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
struct TYPE_13__ {int /*<<< orphan*/  zpool_props; int /*<<< orphan*/  zpool_name; TYPE_3__* zpool_hdl; } ;
typedef  TYPE_1__ zpool_handle_t ;
struct TYPE_14__ {int /*<<< orphan*/  zc_name; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ zfs_cmd_t ;
struct TYPE_15__ {int /*<<< orphan*/  libzfs_fd; } ;
typedef  TYPE_3__ libzfs_handle_t ;

/* Variables and functions */
 scalar_t__ ENOMEM ; 
 int /*<<< orphan*/  ZFS_IOC_POOL_GET_PROPS ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(zpool_handle_t *zhp)
{
	zfs_cmd_t zc = { 0 };
	libzfs_handle_t *hdl = zhp->zpool_hdl;

	(void) FUNC1(zc.zc_name, zhp->zpool_name, sizeof (zc.zc_name));

	if (FUNC2(hdl, &zc, 0) != 0)
		return (-1);

	while (FUNC0(hdl->libzfs_fd, ZFS_IOC_POOL_GET_PROPS, &zc) != 0) {
		if (errno == ENOMEM) {
			if (FUNC3(hdl, &zc) != 0) {
				FUNC4(&zc);
				return (-1);
			}
		} else {
			FUNC4(&zc);
			return (-1);
		}
	}

	if (FUNC5(hdl, &zc, &zhp->zpool_props) != 0) {
		FUNC4(&zc);
		return (-1);
	}

	FUNC4(&zc);

	return (0);
}