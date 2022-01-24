#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ zpool_state; int /*<<< orphan*/  zpool_name; int /*<<< orphan*/ * zpool_hdl; } ;
typedef  TYPE_1__ zpool_handle_t ;
typedef  int /*<<< orphan*/  zfs_handle_t ;
struct TYPE_6__ {scalar_t__ zc_history; int /*<<< orphan*/  zc_name; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ zfs_cmd_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  msg ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;

/* Variables and functions */
 scalar_t__ EROFS ; 
 int /*<<< orphan*/  EZFS_BADDEV ; 
 scalar_t__ POOL_STATE_ACTIVE ; 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 int /*<<< orphan*/  ZFS_IOC_POOL_DESTROY ; 
 int /*<<< orphan*/  ZFS_TYPE_FILESYSTEM ; 
 char* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,scalar_t__,char*) ; 

int
FUNC10(zpool_handle_t *zhp, const char *log_str)
{
	zfs_cmd_t zc = { 0 };
	zfs_handle_t *zfp = NULL;
	libzfs_handle_t *hdl = zhp->zpool_hdl;
	char msg[1024];

	if (zhp->zpool_state == POOL_STATE_ACTIVE &&
	    (zfp = FUNC8(hdl, zhp->zpool_name, ZFS_TYPE_FILESYSTEM)) == NULL)
		return (-1);

	(void) FUNC3(zc.zc_name, zhp->zpool_name, sizeof (zc.zc_name));
	zc.zc_history = (uint64_t)(uintptr_t)log_str;

	if (FUNC7(hdl, ZFS_IOC_POOL_DESTROY, &zc) != 0) {
		(void) FUNC2(msg, sizeof (msg), FUNC0(TEXT_DOMAIN,
		    "cannot destroy '%s'"), zhp->zpool_name);

		if (errno == EROFS) {
			FUNC6(hdl, FUNC0(TEXT_DOMAIN,
			    "one or more devices is read only"));
			(void) FUNC5(hdl, EZFS_BADDEV, msg);
		} else {
			(void) FUNC9(hdl, errno, msg);
		}

		if (zfp)
			FUNC4(zfp);
		return (-1);
	}

	if (zfp) {
		FUNC1(zfp);
		FUNC4(zfp);
	}

	return (0);
}