#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct timeval {int tv_usec; int /*<<< orphan*/  tv_sec; } ;
struct timespec {int tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct hostfs_iattr {int ia_valid; int ia_uid; int ia_gid; struct timespec ia_mtime; struct timespec ia_atime; int /*<<< orphan*/  ia_size; int /*<<< orphan*/  ia_mode; } ;

/* Variables and functions */
 int HOSTFS_ATTR_ATIME ; 
 int HOSTFS_ATTR_ATIME_SET ; 
 int HOSTFS_ATTR_GID ; 
 int HOSTFS_ATTR_MODE ; 
 int HOSTFS_ATTR_MTIME ; 
 int HOSTFS_ATTR_MTIME_SET ; 
 int HOSTFS_ATTR_SIZE ; 
 int HOSTFS_ATTR_UID ; 
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char const*,int,int) ; 
 int errno ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int,int,int) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int,struct timeval*) ; 
 int FUNC6 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timespec*,struct timespec*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC7 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (char const*,struct timeval*) ; 

int FUNC9(const char *file, struct hostfs_iattr *attrs, int fd)
{
	struct timeval times[2];
	struct timespec atime_ts, mtime_ts;
	int err, ma;

	if (attrs->ia_valid & HOSTFS_ATTR_MODE) {
		if (fd >= 0) {
			if (FUNC2(fd, attrs->ia_mode) != 0)
				return (-errno);
		} else if (FUNC0(file, attrs->ia_mode) != 0) {
			return -errno;
		}
	}
	if (attrs->ia_valid & HOSTFS_ATTR_UID) {
		if (fd >= 0) {
			if (FUNC3(fd, attrs->ia_uid, -1))
				return -errno;
		} else if (FUNC1(file, attrs->ia_uid, -1)) {
			return -errno;
		}
	}
	if (attrs->ia_valid & HOSTFS_ATTR_GID) {
		if (fd >= 0) {
			if (FUNC3(fd, -1, attrs->ia_gid))
				return -errno;
		} else if (FUNC1(file, -1, attrs->ia_gid)) {
			return -errno;
		}
	}
	if (attrs->ia_valid & HOSTFS_ATTR_SIZE) {
		if (fd >= 0) {
			if (FUNC4(fd, attrs->ia_size))
				return -errno;
		} else if (FUNC7(file, attrs->ia_size)) {
			return -errno;
		}
	}

	/*
	 * Update accessed and/or modified time, in two parts: first set
	 * times according to the changes to perform, and then call futimes()
	 * or utimes() to apply them.
	 */
	ma = (HOSTFS_ATTR_ATIME_SET | HOSTFS_ATTR_MTIME_SET);
	if (attrs->ia_valid & ma) {
		err = FUNC6(file, NULL, NULL, NULL, NULL, NULL, NULL,
				&atime_ts, &mtime_ts, NULL, NULL, NULL, fd);
		if (err != 0)
			return err;

		times[0].tv_sec = atime_ts.tv_sec;
		times[0].tv_usec = atime_ts.tv_nsec / 1000;
		times[1].tv_sec = mtime_ts.tv_sec;
		times[1].tv_usec = mtime_ts.tv_nsec / 1000;

		if (attrs->ia_valid & HOSTFS_ATTR_ATIME_SET) {
			times[0].tv_sec = attrs->ia_atime.tv_sec;
			times[0].tv_usec = attrs->ia_atime.tv_nsec / 1000;
		}
		if (attrs->ia_valid & HOSTFS_ATTR_MTIME_SET) {
			times[1].tv_sec = attrs->ia_mtime.tv_sec;
			times[1].tv_usec = attrs->ia_mtime.tv_nsec / 1000;
		}

		if (fd >= 0) {
			if (FUNC5(fd, times) != 0)
				return -errno;
		} else if (FUNC8(file, times) != 0) {
			return -errno;
		}
	}

	/* Note: ctime is not handled */
	if (attrs->ia_valid & (HOSTFS_ATTR_ATIME | HOSTFS_ATTR_MTIME)) {
		err = FUNC6(file, NULL, NULL, NULL, NULL, NULL, NULL,
				&attrs->ia_atime, &attrs->ia_mtime, NULL,
				NULL, NULL, fd);
		if (err != 0)
			return err;
	}
	return 0;
}