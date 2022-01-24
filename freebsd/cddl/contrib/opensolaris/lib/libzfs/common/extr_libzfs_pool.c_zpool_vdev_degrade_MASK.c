#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  zpool_name; TYPE_3__* zpool_hdl; } ;
typedef  TYPE_1__ zpool_handle_t ;
struct TYPE_8__ {int /*<<< orphan*/  zc_obj; int /*<<< orphan*/  zc_cookie; int /*<<< orphan*/  zc_guid; int /*<<< orphan*/  zc_name; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ zfs_cmd_t ;
typedef  int /*<<< orphan*/  vdev_aux_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  msg ;
struct TYPE_9__ {int /*<<< orphan*/  libzfs_fd; } ;
typedef  TYPE_3__ libzfs_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 int /*<<< orphan*/  VDEV_STATE_DEGRADED ; 
 int /*<<< orphan*/  ZFS_IOC_VDEV_SET_STATE ; 
 char* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,char*) ; 

int
FUNC5(zpool_handle_t *zhp, uint64_t guid, vdev_aux_t aux)
{
	zfs_cmd_t zc = { 0 };
	char msg[1024];
	libzfs_handle_t *hdl = zhp->zpool_hdl;

	(void) FUNC2(msg, sizeof (msg),
	    FUNC0(TEXT_DOMAIN, "cannot degrade %llu"), guid);

	(void) FUNC3(zc.zc_name, zhp->zpool_name, sizeof (zc.zc_name));
	zc.zc_guid = guid;
	zc.zc_cookie = VDEV_STATE_DEGRADED;
	zc.zc_obj = aux;

	if (FUNC1(hdl->libzfs_fd, ZFS_IOC_VDEV_SET_STATE, &zc) == 0)
		return (0);

	return (FUNC4(hdl, errno, msg));
}