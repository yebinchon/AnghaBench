#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {char* zfs_name; int /*<<< orphan*/ * zfs_hdl; int /*<<< orphan*/  zfs_type; } ;
typedef  TYPE_1__ zfs_handle_t ;
struct TYPE_15__ {char* zc_name; char* zc_value; int zc_cookie; int /*<<< orphan*/  zc_objset_type; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ zfs_cmd_t ;
struct TYPE_16__ {scalar_t__ recurse; scalar_t__ nounmount; scalar_t__ forceunmount; } ;
typedef  TYPE_3__ renameflags_t ;
typedef  int /*<<< orphan*/  property ;
typedef  int /*<<< orphan*/  prop_changelist_t ;
typedef  int /*<<< orphan*/  parent ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;
typedef  int /*<<< orphan*/  errbuf ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 scalar_t__ B_TRUE ; 
 int /*<<< orphan*/  CL_GATHER_DONT_UNMOUNT ; 
 int /*<<< orphan*/  DMU_OST_ZFS ; 
 int /*<<< orphan*/  DMU_OST_ZVOL ; 
 scalar_t__ EEXIST ; 
 scalar_t__ EINVAL ; 
 int /*<<< orphan*/  EZFS_BADTYPE ; 
 int /*<<< orphan*/  EZFS_CROSSTARGET ; 
 int /*<<< orphan*/  EZFS_EXISTS ; 
 int /*<<< orphan*/  EZFS_INVALIDNAME ; 
 int /*<<< orphan*/  EZFS_ZONED ; 
 scalar_t__ GLOBAL_ZONEID ; 
 int /*<<< orphan*/  MS_FORCE ; 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 int /*<<< orphan*/  ZFS_IOC_RENAME ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int ZFS_MAXPROPLEN ; 
 int ZFS_MAX_DATASET_NAME_LEN ; 
 int /*<<< orphan*/  ZFS_PROP_MOUNTPOINT ; 
 int /*<<< orphan*/  ZFS_PROP_NAME ; 
 int /*<<< orphan*/  ZFS_PROP_ZONED ; 
 int /*<<< orphan*/  ZFS_TYPE_BOOKMARK ; 
 int /*<<< orphan*/  ZFS_TYPE_DATASET ; 
 int /*<<< orphan*/  ZFS_TYPE_FILESYSTEM ; 
 int /*<<< orphan*/  ZFS_TYPE_SNAPSHOT ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC9 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 scalar_t__ FUNC11 () ; 
 scalar_t__ FUNC12 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC13 (char*,int,char*,char const*) ; 
 char* FUNC14 (char const*,char const) ; 
 scalar_t__ FUNC15 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC16 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC17 (char*,char const*,int) ; 
 scalar_t__ FUNC18 (char const*,char const*,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*) ; 
 int FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_1__*) ; 
 int FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 TYPE_1__* FUNC25 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC26 (TYPE_1__*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC27 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *,scalar_t__,char*) ; 
 char* FUNC29 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,scalar_t__) ; 

int
FUNC31(zfs_handle_t *zhp, const char *source, const char *target,
    renameflags_t flags)
{
	int ret = 0;
	zfs_cmd_t zc = { 0 };
	char *delim;
	prop_changelist_t *cl = NULL;
	zfs_handle_t *zhrp = NULL;
	char *parentname = NULL;
	char parent[ZFS_MAX_DATASET_NAME_LEN];
	char property[ZFS_MAXPROPLEN];
	libzfs_handle_t *hdl = zhp->zfs_hdl;
	char errbuf[1024];

	/* if we have the same exact name, just return success */
	if (FUNC15(zhp->zfs_name, target) == 0)
		return (0);

	(void) FUNC13(errbuf, sizeof (errbuf), FUNC9(TEXT_DOMAIN,
	    "cannot rename to '%s'"), target);

	if (source != NULL) {
		/*
		 * This is recursive snapshots rename, put snapshot name
		 * (that might not exist) into zfs_name.
		 */
		FUNC1(flags.recurse);

		(void) FUNC16(zhp->zfs_name, "@", sizeof(zhp->zfs_name));
		(void) FUNC16(zhp->zfs_name, source, sizeof(zhp->zfs_name));
		zhp->zfs_type = ZFS_TYPE_SNAPSHOT;
	}

	/* make sure source name is valid */
	if (!FUNC30(hdl, zhp->zfs_name, zhp->zfs_type, B_TRUE))
		return (FUNC21(hdl, EZFS_INVALIDNAME, errbuf));

	/*
	 * Make sure the target name is valid
	 */
	if (zhp->zfs_type == ZFS_TYPE_SNAPSHOT ||
	    zhp->zfs_type == ZFS_TYPE_BOOKMARK) {
		const char sep = zhp->zfs_type == ZFS_TYPE_SNAPSHOT ? '@' : '#';

		if ((FUNC14(target, sep) == NULL) || *target == sep) {
			/*
			 * Snapshot target name is abbreviated,
			 * reconstruct full dataset name
			 */
			(void) FUNC17(parent, zhp->zfs_name, sizeof (parent));
			delim = FUNC14(parent, sep);
			if (FUNC14(target, sep) == NULL)
				*(++delim) = '\0';
			else
				*delim = '\0';
			(void) FUNC16(parent, target, sizeof (parent));
			target = parent;
		} else {
			/*
			 * Make sure we're renaming within the same dataset.
			 */
			delim = FUNC14(target, sep);
			if (FUNC18(zhp->zfs_name, target, delim - target)
			    != 0 || zhp->zfs_name[delim - target] != sep) {
				FUNC22(hdl, FUNC9(TEXT_DOMAIN,
				    "%s must be part of same dataset"),
				    zhp->zfs_type == ZFS_TYPE_SNAPSHOT ?
				    "snapshots" : "bookmarks");
				return (FUNC21(hdl, EZFS_CROSSTARGET,
				    errbuf));
			}
		}

		if (!FUNC30(hdl, target, zhp->zfs_type, B_TRUE))
			return (FUNC21(hdl, EZFS_INVALIDNAME, errbuf));
	} else {
		if (flags.recurse) {
			FUNC22(hdl, FUNC9(TEXT_DOMAIN,
			    "recursive rename must be a snapshot"));
			return (FUNC21(hdl, EZFS_BADTYPE, errbuf));
		}

		if (!FUNC30(hdl, target, zhp->zfs_type, B_TRUE))
			return (FUNC21(hdl, EZFS_INVALIDNAME, errbuf));

		/* validate parents */
		if (FUNC8(hdl, target, NULL, B_FALSE, NULL) != 0)
			return (-1);

		/* make sure we're in the same pool */
		FUNC19((delim = FUNC14(target, '/')) != NULL);
		if (FUNC18(zhp->zfs_name, target, delim - target) != 0 ||
		    zhp->zfs_name[delim - target] != '/') {
			FUNC22(hdl, FUNC9(TEXT_DOMAIN,
			    "datasets must be within same pool"));
			return (FUNC21(hdl, EZFS_CROSSTARGET, errbuf));
		}

		/* new name cannot be a child of the current dataset name */
		if (FUNC12(zhp->zfs_name, target)) {
			FUNC22(hdl, FUNC9(TEXT_DOMAIN,
			    "New dataset name cannot be a descendant of "
			    "current dataset name"));
			return (FUNC21(hdl, EZFS_INVALIDNAME, errbuf));
		}
	}

	(void) FUNC13(errbuf, sizeof (errbuf),
	    FUNC9(TEXT_DOMAIN, "cannot rename '%s'"), zhp->zfs_name);

	if (FUNC11() == GLOBAL_ZONEID &&
	    FUNC27(zhp, ZFS_PROP_ZONED)) {
		FUNC22(hdl, FUNC9(TEXT_DOMAIN,
		    "dataset is used in a non-global zone"));
		return (FUNC21(hdl, EZFS_ZONED, errbuf));
	}

	/*
	 * Avoid unmounting file systems with mountpoint property set to
	 * 'legacy' or 'none' even if -u option is not given.
	 */
	if (zhp->zfs_type == ZFS_TYPE_FILESYSTEM &&
	    !flags.recurse && !flags.nounmount &&
	    FUNC26(zhp, ZFS_PROP_MOUNTPOINT, property,
	    sizeof (property), NULL, NULL, 0, B_FALSE) == 0 &&
	    (FUNC15(property, "legacy") == 0 ||
	     FUNC15(property, "none") == 0)) {
		flags.nounmount = B_TRUE;
	}
	if (flags.recurse) {
		parentname = FUNC29(zhp->zfs_hdl, zhp->zfs_name);
		if (parentname == NULL) {
			ret = -1;
			goto error;
		}
		delim = FUNC14(parentname, '@');
		*delim = '\0';
		zhrp = FUNC25(zhp->zfs_hdl, parentname, ZFS_TYPE_DATASET);
		if (zhrp == NULL) {
			ret = -1;
			goto error;
		}
	} else if (zhp->zfs_type != ZFS_TYPE_SNAPSHOT &&
	    zhp->zfs_type != ZFS_TYPE_BOOKMARK) {
		if ((cl = FUNC3(zhp, ZFS_PROP_NAME,
		    flags.nounmount ? CL_GATHER_DONT_UNMOUNT : 0,
		    flags.forceunmount ? MS_FORCE : 0)) == NULL) {
			return (-1);
		}

		if (FUNC4(cl)) {
			FUNC22(hdl, FUNC9(TEXT_DOMAIN,
			    "child dataset with inherited mountpoint is used "
			    "in a non-global zone"));
			(void) FUNC21(hdl, EZFS_ZONED, errbuf);
			ret = -1;
			goto error;
		}

		if ((ret = FUNC6(cl)) != 0)
			goto error;
	}

	if (FUNC0(zhp))
		zc.zc_objset_type = DMU_OST_ZVOL;
	else
		zc.zc_objset_type = DMU_OST_ZFS;

	(void) FUNC17(zc.zc_name, zhp->zfs_name, sizeof (zc.zc_name));
	(void) FUNC17(zc.zc_value, target, sizeof (zc.zc_value));

	zc.zc_cookie = flags.recurse ? 1 : 0;
	if (flags.nounmount)
		zc.zc_cookie |= 2;

	if ((ret = FUNC24(zhp->zfs_hdl, ZFS_IOC_RENAME, &zc)) != 0) {
		/*
		 * if it was recursive, the one that actually failed will
		 * be in zc.zc_name
		 */
		(void) FUNC13(errbuf, sizeof (errbuf), FUNC9(TEXT_DOMAIN,
		    "cannot rename '%s'"), zc.zc_name);

		if (flags.recurse && errno == EEXIST) {
			FUNC22(hdl, FUNC9(TEXT_DOMAIN,
			    "a child dataset already has a snapshot "
			    "with the new name"));
			(void) FUNC21(hdl, EZFS_EXISTS, errbuf);
		} else if (errno == EINVAL) {
			(void) FUNC21(hdl, EZFS_INVALIDNAME, errbuf);
		} else {
			(void) FUNC28(zhp->zfs_hdl, errno, errbuf);
		}

		/*
		 * On failure, we still want to remount any filesystems that
		 * were previously mounted, so we don't alter the system state.
		 */
		if (cl != NULL)
			(void) FUNC5(cl);
	} else {
		if (cl != NULL) {
			FUNC7(cl, FUNC23(zhp), target);
			ret = FUNC5(cl);
		}
	}

error:
	if (parentname != NULL) {
		FUNC10(parentname);
	}
	if (zhrp != NULL) {
		FUNC20(zhrp);
	}
	if (cl != NULL) {
		FUNC2(cl);
	}
	return (ret);
}