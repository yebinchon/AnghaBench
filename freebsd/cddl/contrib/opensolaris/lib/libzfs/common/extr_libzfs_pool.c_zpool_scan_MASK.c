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
struct TYPE_6__ {int /*<<< orphan*/  zpool_config; int /*<<< orphan*/  zpool_name; int /*<<< orphan*/ * zpool_hdl; } ;
typedef  TYPE_1__ zpool_handle_t ;
struct TYPE_7__ {int /*<<< orphan*/  zc_name; scalar_t__ zc_flags; scalar_t__ zc_cookie; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ zfs_cmd_t ;
typedef  int /*<<< orphan*/  uint_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  scalar_t__ pool_scrub_cmd_t ;
struct TYPE_8__ {scalar_t__ pss_func; } ;
typedef  TYPE_3__ pool_scan_stat_t ;
typedef  scalar_t__ pool_scan_func_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  msg ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;

/* Variables and functions */
 int EBUSY ; 
 int ECANCELED ; 
 int ENOENT ; 
 int /*<<< orphan*/  EZFS_NO_SCRUB ; 
 int /*<<< orphan*/  EZFS_RESILVERING ; 
 int /*<<< orphan*/  EZFS_SCRUBBING ; 
 int /*<<< orphan*/  EZFS_SCRUB_PAUSED ; 
 scalar_t__ POOL_SCAN_NONE ; 
 scalar_t__ POOL_SCAN_SCRUB ; 
 scalar_t__ POOL_SCRUB_NORMAL ; 
 scalar_t__ POOL_SCRUB_PAUSE ; 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 int /*<<< orphan*/  ZFS_IOC_POOL_SCAN ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_SCAN_STATS ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_VDEV_TREE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int errno ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC9 (int /*<<< orphan*/ *,int,char*) ; 

int
FUNC10(zpool_handle_t *zhp, pool_scan_func_t func, pool_scrub_cmd_t cmd)
{
	zfs_cmd_t zc = { 0 };
	char msg[1024];
	int err;
	libzfs_handle_t *hdl = zhp->zpool_hdl;

	(void) FUNC5(zc.zc_name, zhp->zpool_name, sizeof (zc.zc_name));
	zc.zc_cookie = func;
	zc.zc_flags = cmd;

	if (FUNC8(hdl, ZFS_IOC_POOL_SCAN, &zc) == 0)
		return (0);

	err = errno;

	/* ECANCELED on a scrub means we resumed a paused scrub */
	if (err == ECANCELED && func == POOL_SCAN_SCRUB &&
	    cmd == POOL_SCRUB_NORMAL)
		return (0);

	if (err == ENOENT && func != POOL_SCAN_NONE && cmd == POOL_SCRUB_NORMAL)
		return (0);

	if (func == POOL_SCAN_SCRUB) {
		if (cmd == POOL_SCRUB_PAUSE) {
			(void) FUNC4(msg, sizeof (msg), FUNC1(TEXT_DOMAIN,
			    "cannot pause scrubbing %s"), zc.zc_name);
		} else {
			FUNC0(cmd == POOL_SCRUB_NORMAL);
			(void) FUNC4(msg, sizeof (msg), FUNC1(TEXT_DOMAIN,
			    "cannot scrub %s"), zc.zc_name);
		}
	} else if (func == POOL_SCAN_NONE) {
		(void) FUNC4(msg, sizeof (msg),
		    FUNC1(TEXT_DOMAIN, "cannot cancel scrubbing %s"),
		    zc.zc_name);
	} else {
		FUNC0(!"unexpected result");
	}

	if (err == EBUSY) {
		nvlist_t *nvroot;
		pool_scan_stat_t *ps = NULL;
		uint_t psc;

		FUNC6(FUNC2(zhp->zpool_config,
		    ZPOOL_CONFIG_VDEV_TREE, &nvroot) == 0);
		(void) FUNC3(nvroot,
		    ZPOOL_CONFIG_SCAN_STATS, (uint64_t **)&ps, &psc);
		if (ps && ps->pss_func == POOL_SCAN_SCRUB) {
			if (cmd == POOL_SCRUB_PAUSE)
				return (FUNC7(hdl, EZFS_SCRUB_PAUSED, msg));
			else
				return (FUNC7(hdl, EZFS_SCRUBBING, msg));
		} else {
			return (FUNC7(hdl, EZFS_RESILVERING, msg));
		}
	} else if (err == ENOENT) {
		return (FUNC7(hdl, EZFS_NO_SCRUB, msg));
	} else {
		return (FUNC9(hdl, err, msg));
	}
}