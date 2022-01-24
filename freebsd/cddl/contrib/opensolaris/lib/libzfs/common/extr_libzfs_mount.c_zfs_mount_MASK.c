#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {char* zfs_name; int /*<<< orphan*/  zpool_hdl; int /*<<< orphan*/ * zfs_hdl; } ;
typedef  TYPE_1__ zfs_handle_t ;
typedef  int /*<<< orphan*/  u_longlong_t ;
struct stat {int dummy; } ;
typedef  int /*<<< orphan*/  mountpoint ;
typedef  int /*<<< orphan*/  mntopts ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 scalar_t__ EBUSY ; 
 scalar_t__ ENOTSUP ; 
 scalar_t__ EPERM ; 
 int /*<<< orphan*/  EZFS_MOUNTFAILED ; 
 int /*<<< orphan*/  MNTOPT_REMOUNT ; 
 int /*<<< orphan*/  MNTTYPE_ZFS ; 
 int MNT_LINE_MAX ; 
 int MS_OVERLAY ; 
 int MS_RDONLY ; 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ZFS_MAXPROPLEN ; 
 int /*<<< orphan*/  ZFS_PROP_VERSION ; 
 int /*<<< orphan*/  ZPOOL_PROP_READONLY ; 
 char* FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC4 (char*,struct stat*) ; 
 scalar_t__ FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,int /*<<< orphan*/ ,int) ; 
 char* FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*,int) ; 
 int /*<<< orphan*/ * FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,char*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (TYPE_1__*,int*) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC18(zfs_handle_t *zhp, const char *options, int flags)
{
	struct stat buf;
	char mountpoint[ZFS_MAXPROPLEN];
	char mntopts[MNT_LINE_MAX];
	libzfs_handle_t *hdl = zhp->zfs_hdl;

	if (options == NULL)
		mntopts[0] = '\0';
	else
		(void) FUNC8(mntopts, options, sizeof (mntopts));

	/*
	 * If the pool is imported read-only then all mounts must be read-only
	 */
	if (FUNC17(zhp->zpool_hdl, ZPOOL_PROP_READONLY, NULL))
		flags |= MS_RDONLY;

	if (!FUNC13(zhp, mountpoint, sizeof (mountpoint), NULL))
		return (0);

	/* Create the directory if it doesn't already exist */
	if (FUNC4(mountpoint, &buf) != 0) {
		if (FUNC5(mountpoint, 0755) != 0) {
			FUNC10(hdl, FUNC1(TEXT_DOMAIN,
			    "failed to create mountpoint"));
			return (FUNC11(hdl, EZFS_MOUNTFAILED,
			    FUNC1(TEXT_DOMAIN, "cannot mount '%s'"),
			    mountpoint));
		}
	}

#ifdef illumos	/* FreeBSD: overlay mounts are not checked. */
	/*
	 * Determine if the mountpoint is empty.  If so, refuse to perform the
	 * mount.  We don't perform this check if MS_OVERLAY is specified, which
	 * would defeat the point.  We also avoid this check if 'remount' is
	 * specified.
	 */
	if ((flags & MS_OVERLAY) == 0 &&
	    strstr(mntopts, MNTOPT_REMOUNT) == NULL &&
	    !dir_is_empty(mountpoint)) {
		zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
		    "directory is not empty"));
		return (zfs_error_fmt(hdl, EZFS_MOUNTFAILED,
		    dgettext(TEXT_DOMAIN, "cannot mount '%s'"), mountpoint));
	}
#endif

	/* perform the mount */
	if (FUNC16(FUNC12(zhp), mountpoint, flags,
	    MNTTYPE_ZFS, NULL, 0, mntopts, sizeof (mntopts)) != 0) {
		/*
		 * Generic errors are nasty, but there are just way too many
		 * from mount(), and they're well-understood.  We pick a few
		 * common ones to improve upon.
		 */
		if (errno == EBUSY) {
			FUNC10(hdl, FUNC1(TEXT_DOMAIN,
			    "mountpoint or dataset is busy"));
		} else if (errno == EPERM) {
			FUNC10(hdl, FUNC1(TEXT_DOMAIN,
			    "Insufficient privileges"));
		} else if (errno == ENOTSUP) {
			char buf[256];
			int spa_version;

			FUNC0(FUNC15(zhp, &spa_version) == 0);
			(void) FUNC6(buf, sizeof (buf),
			    FUNC1(TEXT_DOMAIN, "Can't mount a version %lld "
			    "file system on a version %d pool. Pool must be"
			    " upgraded to mount this file system."),
			    (u_longlong_t)FUNC14(zhp,
			    ZFS_PROP_VERSION), spa_version);
			FUNC10(hdl, FUNC1(TEXT_DOMAIN, buf));
		} else {
			FUNC10(hdl, FUNC7(errno));
		}
		return (FUNC11(hdl, EZFS_MOUNTFAILED,
		    FUNC1(TEXT_DOMAIN, "cannot mount '%s'"),
		    zhp->zfs_name));
	}

	/* add the mounted entry into our cache */
	FUNC3(hdl, FUNC12(zhp), mountpoint,
	    mntopts);
	return (0);
}