#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {TYPE_5__* zfs_hdl; } ;
typedef  TYPE_1__ zfs_handle_t ;
struct TYPE_13__ {int zc_cookie; int /*<<< orphan*/  zc_name; int /*<<< orphan*/  zc_value; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ zfs_cmd_t ;
typedef  int /*<<< orphan*/  pthread_t ;
typedef  int /*<<< orphan*/  errbuf ;
struct TYPE_14__ {int scripted; int classify; int timestamped; int outputfd; int datafd; scalar_t__ zerr; char* errbuf; int /*<<< orphan*/  tosnap; int /*<<< orphan*/  fromsnap; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_3__ differ_info_t ;
struct TYPE_15__ {int /*<<< orphan*/  libzfs_fd; } ;

/* Variables and functions */
 scalar_t__ EPERM ; 
 scalar_t__ EPIPE ; 
 scalar_t__ EXDEV ; 
 int /*<<< orphan*/  EZFS_DIFF ; 
 int /*<<< orphan*/  EZFS_DIFFDATA ; 
 int /*<<< orphan*/  EZFS_PIPEFAILED ; 
 int /*<<< orphan*/  EZFS_THREADCREATEFAILED ; 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 int ZFS_DIFF_CLASSIFY ; 
 int ZFS_DIFF_PARSEABLE ; 
 int ZFS_DIFF_TIMESTAMP ; 
 int /*<<< orphan*/  ZFS_IOC_DIFF ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  differ ; 
 scalar_t__ errno ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC3 (int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (TYPE_1__*,char const*,char const*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*) ; 
 char* FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*) ; 
 int FUNC13 (TYPE_5__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_5__*,char*) ; 

int
FUNC15(zfs_handle_t *zhp, int outfd, const char *fromsnap,
    const char *tosnap, int flags)
{
	zfs_cmd_t zc = { 0 };
	char errbuf[1024];
	differ_info_t di = { 0 };
	pthread_t tid;
	int pipefd[2];
	int iocerr;

	(void) FUNC8(errbuf, sizeof (errbuf),
	    FUNC1(TEXT_DOMAIN, "zfs diff failed"));

	if (FUNC7(zhp, fromsnap, tosnap, &di)) {
		FUNC12(&di);
		return (-1);
	}

	if (FUNC3(pipefd)) {
		FUNC14(zhp->zfs_hdl, FUNC9(errno));
		FUNC12(&di);
		return (FUNC13(zhp->zfs_hdl, EZFS_PIPEFAILED, errbuf));
	}

	di.scripted = (flags & ZFS_DIFF_PARSEABLE);
	di.classify = (flags & ZFS_DIFF_CLASSIFY);
	di.timestamped = (flags & ZFS_DIFF_TIMESTAMP);

	di.outputfd = outfd;
	di.datafd = pipefd[0];

	if (FUNC5(&tid, NULL, differ, &di)) {
		FUNC14(zhp->zfs_hdl, FUNC9(errno));
		(void) FUNC0(pipefd[0]);
		(void) FUNC0(pipefd[1]);
		FUNC12(&di);
		return (FUNC13(zhp->zfs_hdl,
		    EZFS_THREADCREATEFAILED, errbuf));
	}

	/* do the ioctl() */
	(void) FUNC10(zc.zc_value, di.fromsnap, FUNC11(di.fromsnap) + 1);
	(void) FUNC10(zc.zc_name, di.tosnap, FUNC11(di.tosnap) + 1);
	zc.zc_cookie = pipefd[1];

	iocerr = FUNC2(zhp->zfs_hdl->libzfs_fd, ZFS_IOC_DIFF, &zc);
	if (iocerr != 0) {
		(void) FUNC8(errbuf, sizeof (errbuf),
		    FUNC1(TEXT_DOMAIN, "Unable to obtain diffs"));
		if (errno == EPERM) {
			FUNC14(zhp->zfs_hdl, FUNC1(TEXT_DOMAIN,
			    "\n   The sys_mount privilege or diff delegated "
			    "permission is needed\n   to execute the "
			    "diff ioctl"));
		} else if (errno == EXDEV) {
			FUNC14(zhp->zfs_hdl, FUNC1(TEXT_DOMAIN,
			    "\n   Not an earlier snapshot from the same fs"));
		} else if (errno != EPIPE || di.zerr == 0) {
			FUNC14(zhp->zfs_hdl, FUNC9(errno));
		}
		(void) FUNC0(pipefd[1]);
		(void) FUNC4(tid);
		(void) FUNC6(tid, NULL);
		FUNC12(&di);
		if (di.zerr != 0 && di.zerr != EPIPE) {
			FUNC14(zhp->zfs_hdl, FUNC9(di.zerr));
			return (FUNC13(zhp->zfs_hdl, EZFS_DIFF, di.errbuf));
		} else {
			return (FUNC13(zhp->zfs_hdl, EZFS_DIFFDATA, errbuf));
		}
	}

	(void) FUNC0(pipefd[1]);
	(void) FUNC6(tid, NULL);

	if (di.zerr != 0) {
		FUNC14(zhp->zfs_hdl, FUNC9(di.zerr));
		return (FUNC13(zhp->zfs_hdl, EZFS_DIFF, di.errbuf));
	}
	FUNC12(&di);
	return (0);
}