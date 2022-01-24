#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {char const* zpool_name; TYPE_1__* zpool_hdl; } ;
typedef  TYPE_2__ zpool_handle_t ;
struct TYPE_8__ {int /*<<< orphan*/  zc_guid; int /*<<< orphan*/  zc_value; int /*<<< orphan*/  zc_name; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_3__ zfs_cmd_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
struct TYPE_6__ {int /*<<< orphan*/  libzfs_fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZFS_IOC_VDEV_SETPATH ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_GUID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void
FUNC4(zpool_handle_t *zhp, nvlist_t *nv, const char *path)
{
	zfs_cmd_t zc = { 0 };

	(void) FUNC2(zc.zc_name, zhp->zpool_name, sizeof (zc.zc_name));
	(void) FUNC2(zc.zc_value, path, sizeof (zc.zc_value));
	FUNC3(FUNC1(nv, ZPOOL_CONFIG_GUID,
	    &zc.zc_guid) == 0);

	(void) FUNC0(zhp->zpool_hdl->libzfs_fd, ZFS_IOC_VDEV_SETPATH, &zc);
}