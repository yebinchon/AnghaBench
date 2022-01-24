#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  zc_value; int /*<<< orphan*/  zc_name; int /*<<< orphan*/  zc_cleanup_fd; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ zfs_cmd_t ;
struct TYPE_13__ {int /*<<< orphan*/  libzfs_fd; } ;
typedef  TYPE_3__ libzfs_handle_t ;
struct TYPE_14__ {int /*<<< orphan*/  tmpsnap; int /*<<< orphan*/  ds; int /*<<< orphan*/  tosnap; int /*<<< orphan*/  errbuf; int /*<<< orphan*/  cleanupfd; TYPE_1__* zhp; } ;
typedef  TYPE_4__ differ_info_t ;
struct TYPE_11__ {TYPE_3__* zfs_hdl; } ;

/* Variables and functions */
 int EPERM ; 
 int /*<<< orphan*/  EZFS_DIFF ; 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 char* ZDIFF_PREFIX ; 
 int /*<<< orphan*/  ZFS_IOC_TMP_SNAPSHOT ; 
 char* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(differ_info_t *di)
{
	libzfs_handle_t *hdl = di->zhp->zfs_hdl;
	zfs_cmd_t zc = { 0 };

	(void) FUNC3(zc.zc_value, sizeof (zc.zc_value),
	    ZDIFF_PREFIX, FUNC1());
	(void) FUNC4(zc.zc_name, di->ds, sizeof (zc.zc_name));
	zc.zc_cleanup_fd = di->cleanupfd;

	if (FUNC2(hdl->libzfs_fd, ZFS_IOC_TMP_SNAPSHOT, &zc) != 0) {
		int err = errno;
		if (err == EPERM) {
			(void) FUNC3(di->errbuf, sizeof (di->errbuf),
			    FUNC0(TEXT_DOMAIN, "The diff delegated "
			    "permission is needed in order\nto create a "
			    "just-in-time snapshot for diffing\n"));
			return (FUNC6(hdl, EZFS_DIFF, di->errbuf));
		} else {
			(void) FUNC3(di->errbuf, sizeof (di->errbuf),
			    FUNC0(TEXT_DOMAIN, "Cannot create just-in-time "
			    "snapshot of '%s'"), zc.zc_name);
			return (FUNC7(hdl, err, di->errbuf));
		}
	}

	di->tmpsnap = FUNC8(hdl, zc.zc_value);
	di->tosnap = FUNC5(hdl, "%s@%s", di->ds, di->tmpsnap);
	return (0);
}