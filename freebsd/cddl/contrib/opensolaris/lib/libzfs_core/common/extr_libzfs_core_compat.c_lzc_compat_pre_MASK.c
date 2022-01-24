#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int zfs_ioc_t ;
struct TYPE_3__ {int zc_cleanup_fd; int /*<<< orphan*/  zc_string; int /*<<< orphan*/  zc_value; int /*<<< orphan*/  zc_name; int /*<<< orphan*/  zc_objset_type; } ;
typedef  TYPE_1__ zfs_cmd_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int int32_t ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int MAXNAMELEN ; 
 int MAXPATHLEN ; 
 scalar_t__ ZFS_IOCVER_LZC ; 
#define  ZFS_IOC_CLONE 134 
#define  ZFS_IOC_CREATE 133 
#define  ZFS_IOC_DESTROY_SNAPS 132 
#define  ZFS_IOC_HOLD 131 
#define  ZFS_IOC_RELEASE 130 
#define  ZFS_IOC_SNAPSHOT 129 
#define  ZFS_IOC_SPACE_SNAPS 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char**) ; 
 int FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ zfs_ioctl_version ; 

int
FUNC12(zfs_cmd_t *zc, zfs_ioc_t *ioc, nvlist_t **source)
{
	nvlist_t *nvl = NULL;
	nvpair_t *pair, *hpair;
	char *buf, *val;
	zfs_ioc_t vecnum;
	uint32_t type32;
	int32_t cleanup_fd;
	int error = 0;
	int pos;

	if (zfs_ioctl_version >= ZFS_IOCVER_LZC)
		return (0);

	vecnum = *ioc;

	switch (vecnum) {
	case ZFS_IOC_CREATE:
		type32 = FUNC0(*source, "type");
		zc->zc_objset_type = (uint64_t)type32;
		FUNC5(*source, "props", &nvl);
		*source = nvl;
	break;
	case ZFS_IOC_CLONE:
		buf = FUNC2(*source, "origin");
		FUNC11(zc->zc_value, buf, MAXPATHLEN);
		FUNC5(*source, "props", &nvl);
		*ioc = ZFS_IOC_CREATE;
		*source = nvl;
	break;
	case ZFS_IOC_SNAPSHOT:
		nvl = FUNC1(*source, "snaps");
		pair = FUNC6(nvl, NULL);
		if (pair != NULL) {
			buf = FUNC7(pair);
			pos = FUNC10(buf, "@");
			FUNC11(zc->zc_name, buf, pos + 1);
			FUNC11(zc->zc_value, buf + pos + 1, MAXPATHLEN);
		} else
			error = EINVAL;
		/* old kernel cannot create multiple snapshots */
		if (!error && FUNC6(nvl, pair) != NULL)
			error = EOPNOTSUPP;
		FUNC3(nvl);
		nvl = NULL;
		FUNC5(*source, "props", &nvl);
		*source = nvl;
	break;
	case ZFS_IOC_SPACE_SNAPS:
		buf = FUNC2(*source, "firstsnap");
		FUNC11(zc->zc_value, buf, MAXPATHLEN);
	break;
	case ZFS_IOC_DESTROY_SNAPS:
		nvl = FUNC1(*source, "snaps");
		pair = FUNC6(nvl, NULL);
		if (pair != NULL) {
			buf = FUNC7(pair);
			pos = FUNC10(buf, "@");
			FUNC11(zc->zc_name, buf, pos + 1);
		} else
			error = EINVAL;
		/* old kernel cannot atomically destroy multiple snaps */
		if (!error && FUNC6(nvl, pair) != NULL)
			error = EOPNOTSUPP;
		*source = nvl;
	break;
	case ZFS_IOC_HOLD:
		nvl = FUNC1(*source, "holds");
		pair = FUNC6(nvl, NULL);
		if (pair != NULL) {
			buf = FUNC7(pair);
			pos = FUNC10(buf, "@");
			FUNC11(zc->zc_name, buf, pos + 1);
			FUNC11(zc->zc_value, buf + pos + 1, MAXPATHLEN);
			if (FUNC9(pair, &val) == 0)
				FUNC11(zc->zc_string, val, MAXNAMELEN);
			else
				error = EINVAL;
		} else
			error = EINVAL;
		/* old kernel cannot atomically create multiple holds */
		if (!error && FUNC6(nvl, pair) != NULL)
			error = EOPNOTSUPP;
		FUNC3(nvl);
		if (FUNC4(*source, "cleanup_fd",
		    &cleanup_fd) == 0)
			zc->zc_cleanup_fd = cleanup_fd;
		else
			zc->zc_cleanup_fd = -1;
	break;
	case ZFS_IOC_RELEASE:
		pair = FUNC6(*source, NULL);
		if (pair != NULL) {
			buf = FUNC7(pair);
			pos = FUNC10(buf, "@");
			FUNC11(zc->zc_name, buf, pos + 1);
			FUNC11(zc->zc_value, buf + pos + 1, MAXPATHLEN);
			if (FUNC8(pair, &nvl) == 0) {
				hpair = FUNC6(nvl, NULL);
				if (hpair != NULL)
					FUNC11(zc->zc_string,
					    FUNC7(hpair), MAXNAMELEN);
				else
					error = EINVAL;
				if (!error && FUNC6(nvl,
				    hpair) != NULL)
					error = EOPNOTSUPP;
			} else
				error = EINVAL;
		} else
			error = EINVAL;
		/* old kernel cannot atomically release multiple holds */
		if (!error && FUNC6(nvl, pair) != NULL)
			error = EOPNOTSUPP;
	break;
	}

	return (error);
}