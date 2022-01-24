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
struct TYPE_13__ {int zlp_rewind; } ;
typedef  TYPE_1__ zpool_load_policy_t ;
struct TYPE_14__ {char const* zpool_name; int zpool_config_size; int /*<<< orphan*/ * zpool_hdl; } ;
typedef  TYPE_2__ zpool_handle_t ;
struct TYPE_15__ {int zc_cookie; int /*<<< orphan*/  zc_name; int /*<<< orphan*/  zc_guid; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_3__ zfs_cmd_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  msg ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 scalar_t__ EACCES ; 
 scalar_t__ ENOMEM ; 
 scalar_t__ EPERM ; 
 int /*<<< orphan*/  EZFS_ISSPARE ; 
 int /*<<< orphan*/  EZFS_NODEVICE ; 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 int /*<<< orphan*/  ZFS_IOC_CLEAR ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_GUID ; 
 int ZPOOL_DO_REWIND ; 
 int ZPOOL_TRY_REWIND ; 
 char* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,TYPE_3__*,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC13 (TYPE_2__*,char const*,scalar_t__*,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC16 (int /*<<< orphan*/ *,scalar_t__,char*) ; 

int
FUNC17(zpool_handle_t *zhp, const char *path, nvlist_t *rewindnvl)
{
	zfs_cmd_t zc = { 0 };
	char msg[1024];
	nvlist_t *tgt;
	zpool_load_policy_t policy;
	boolean_t avail_spare, l2cache;
	libzfs_handle_t *hdl = zhp->zpool_hdl;
	nvlist_t *nvi = NULL;
	int error;

	if (path)
		(void) FUNC3(msg, sizeof (msg),
		    FUNC0(TEXT_DOMAIN, "cannot clear errors for %s"),
		    path);
	else
		(void) FUNC3(msg, sizeof (msg),
		    FUNC0(TEXT_DOMAIN, "cannot clear errors for %s"),
		    zhp->zpool_name);

	(void) FUNC4(zc.zc_name, zhp->zpool_name, sizeof (zc.zc_name));
	if (path) {
		if ((tgt = FUNC13(zhp, path, &avail_spare,
		    &l2cache, NULL)) == NULL)
			return (FUNC11(hdl, EZFS_NODEVICE, msg));

		/*
		 * Don't allow error clearing for hot spares.  Do allow
		 * error clearing for l2cache devices.
		 */
		if (avail_spare)
			return (FUNC11(hdl, EZFS_ISSPARE, msg));

		FUNC5(FUNC2(tgt, ZPOOL_CONFIG_GUID,
		    &zc.zc_guid) == 0);
	}

	FUNC14(rewindnvl, &policy);
	zc.zc_cookie = policy.zlp_rewind;

	if (FUNC6(hdl, &zc, zhp->zpool_config_size * 2) != 0)
		return (-1);

	if (FUNC10(hdl, &zc, rewindnvl) != 0)
		return (-1);

	while ((error = FUNC12(hdl, ZFS_IOC_CLEAR, &zc)) != 0 &&
	    errno == ENOMEM) {
		if (FUNC7(hdl, &zc) != 0) {
			FUNC8(&zc);
			return (-1);
		}
	}

	if (!error || ((policy.zlp_rewind & ZPOOL_TRY_REWIND) &&
	    errno != EPERM && errno != EACCES)) {
		if (policy.zlp_rewind &
		    (ZPOOL_DO_REWIND | ZPOOL_TRY_REWIND)) {
			(void) FUNC9(hdl, &zc, &nvi);
			FUNC15(hdl, zc.zc_name,
			    ((policy.zlp_rewind & ZPOOL_TRY_REWIND) != 0),
			    nvi);
			FUNC1(nvi);
		}
		FUNC8(&zc);
		return (0);
	}

	FUNC8(&zc);
	return (FUNC16(hdl, errno, msg));
}