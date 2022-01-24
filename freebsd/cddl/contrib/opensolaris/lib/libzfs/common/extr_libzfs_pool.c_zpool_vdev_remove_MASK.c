#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  zpool_name; int /*<<< orphan*/ * zpool_hdl; } ;
typedef  TYPE_1__ zpool_handle_t ;
struct TYPE_8__ {int /*<<< orphan*/  zc_guid; int /*<<< orphan*/  zc_name; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ zfs_cmd_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  msg ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
#define  EBUSY 129 
#define  EINVAL 128 
 int /*<<< orphan*/  EZFS_BADVERSION ; 
 int /*<<< orphan*/  EZFS_BUSY ; 
 int /*<<< orphan*/  EZFS_INVALCONFIG ; 
 int /*<<< orphan*/  EZFS_NODEVICE ; 
 scalar_t__ SPA_VERSION_HOLES ; 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 int /*<<< orphan*/  ZFS_IOC_VDEV_REMOVE ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_GUID ; 
 int /*<<< orphan*/  ZPOOL_PROP_VERSION ; 
 char* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_1__*,char const*,scalar_t__*,scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,char*) ; 

int
FUNC10(zpool_handle_t *zhp, const char *path)
{
	zfs_cmd_t zc = { 0 };
	char msg[1024];
	nvlist_t *tgt;
	boolean_t avail_spare, l2cache, islog;
	libzfs_handle_t *hdl = zhp->zpool_hdl;
	uint64_t version;

	(void) FUNC2(msg, sizeof (msg),
	    FUNC0(TEXT_DOMAIN, "cannot remove %s"), path);

	(void) FUNC3(zc.zc_name, zhp->zpool_name, sizeof (zc.zc_name));
	if ((tgt = FUNC7(zhp, path, &avail_spare, &l2cache,
	    &islog)) == NULL)
		return (FUNC4(hdl, EZFS_NODEVICE, msg));

	version = FUNC8(zhp, ZPOOL_PROP_VERSION, NULL);
	if (islog && version < SPA_VERSION_HOLES) {
		FUNC5(hdl, FUNC0(TEXT_DOMAIN,
		    "pool must be upgraded to support log removal"));
		return (FUNC4(hdl, EZFS_BADVERSION, msg));
	}

	zc.zc_guid = FUNC1(tgt, ZPOOL_CONFIG_GUID);

	if (FUNC6(hdl, ZFS_IOC_VDEV_REMOVE, &zc) == 0)
		return (0);

	switch (errno) {

	case EINVAL:
		FUNC5(hdl, FUNC0(TEXT_DOMAIN,
		    "invalid config; all top-level vdevs must "
		    "have the same sector size and not be raidz."));
		(void) FUNC4(hdl, EZFS_INVALCONFIG, msg);
		break;

	case EBUSY:
		FUNC5(hdl, FUNC0(TEXT_DOMAIN,
		    "Pool busy; removal may already be in progress"));
		(void) FUNC4(hdl, EZFS_BUSY, msg);
		break;

	default:
		(void) FUNC9(hdl, errno, msg);
	}
	return (-1);
}