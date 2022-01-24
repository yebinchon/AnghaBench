#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zprop_source_t ;
typedef  int zfs_prop_t ;
struct TYPE_11__ {void* dds_inconsistent; void* dds_num_clones; } ;
struct TYPE_12__ {char* zfs_name; char* zfs_mntopts; int /*<<< orphan*/ * zfs_hdl; TYPE_1__ zfs_dmustats; int /*<<< orphan*/  zfs_head_type; void* zfs_mntcheck; } ;
typedef  TYPE_2__ zfs_handle_t ;
struct TYPE_13__ {int /*<<< orphan*/  zc_name; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_3__ zfs_cmd_t ;
typedef  void* uint64_t ;
struct mnttab {char* mnt_mntopts; } ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 void* B_FALSE ; 
 void* B_TRUE ; 
 int /*<<< orphan*/  EZFS_BADPROP ; 
 char* MNTOPT_ATIME ; 
 char* MNTOPT_DEVICES ; 
 char* MNTOPT_EXEC ; 
 char* MNTOPT_NBMAND ; 
 char* MNTOPT_NOATIME ; 
 char* MNTOPT_NODEVICES ; 
 char* MNTOPT_NOEXEC ; 
 char* MNTOPT_NONBMAND ; 
 char* MNTOPT_NOSETUID ; 
 char* MNTOPT_NOXATTR ; 
 char* MNTOPT_RO ; 
 char* MNTOPT_RW ; 
 char* MNTOPT_SETUID ; 
 char* MNTOPT_XATTR ; 
#define  PROP_TYPE_INDEX 154 
#define  PROP_TYPE_NUMBER 153 
#define  PROP_TYPE_STRING 152 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 int /*<<< orphan*/  ZFS_IOC_OBJSET_ZPLPROPS ; 
#define  ZFS_PROP_ATIME 151 
#define  ZFS_PROP_CANMOUNT 150 
#define  ZFS_PROP_CASE 149 
#define  ZFS_PROP_DEVICES 148 
#define  ZFS_PROP_EXEC 147 
#define  ZFS_PROP_FILESYSTEM_COUNT 146 
#define  ZFS_PROP_FILESYSTEM_LIMIT 145 
#define  ZFS_PROP_INCONSISTENT 144 
#define  ZFS_PROP_MOUNTED 143 
#define  ZFS_PROP_NBMAND 142 
#define  ZFS_PROP_NORMALIZE 141 
#define  ZFS_PROP_NUMCLONES 140 
#define  ZFS_PROP_QUOTA 139 
#define  ZFS_PROP_READONLY 138 
#define  ZFS_PROP_REFQUOTA 137 
#define  ZFS_PROP_REFRESERVATION 136 
#define  ZFS_PROP_RESERVATION 135 
#define  ZFS_PROP_SETUID 134 
#define  ZFS_PROP_SNAPSHOT_COUNT 133 
#define  ZFS_PROP_SNAPSHOT_LIMIT 132 
#define  ZFS_PROP_UTF8ONLY 131 
#define  ZFS_PROP_VERSION 130 
#define  ZFS_PROP_VOLSIZE 129 
#define  ZFS_PROP_XATTR 128 
 int /*<<< orphan*/  ZPROP_SRC_TEMPORARY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC1 (TYPE_2__*,int,char**) ; 
 int /*<<< orphan*/  FUNC2 (struct mnttab*,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,struct mnttab*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ **) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (int,int /*<<< orphan*/ ) ; 
 char* FUNC19 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int
FUNC20(zfs_handle_t *zhp, zfs_prop_t prop, zprop_source_t *src,
    char **source, uint64_t *val)
{
	zfs_cmd_t zc = { 0 };
	nvlist_t *zplprops = NULL;
	struct mnttab mnt;
	char *mntopt_on = NULL;
	char *mntopt_off = NULL;
	boolean_t received = FUNC13(zhp);

	*source = NULL;

	switch (prop) {
	case ZFS_PROP_ATIME:
		mntopt_on = MNTOPT_ATIME;
		mntopt_off = MNTOPT_NOATIME;
		break;

	case ZFS_PROP_DEVICES:
		mntopt_on = MNTOPT_DEVICES;
		mntopt_off = MNTOPT_NODEVICES;
		break;

	case ZFS_PROP_EXEC:
		mntopt_on = MNTOPT_EXEC;
		mntopt_off = MNTOPT_NOEXEC;
		break;

	case ZFS_PROP_READONLY:
		mntopt_on = MNTOPT_RO;
		mntopt_off = MNTOPT_RW;
		break;

	case ZFS_PROP_SETUID:
		mntopt_on = MNTOPT_SETUID;
		mntopt_off = MNTOPT_NOSETUID;
		break;

	case ZFS_PROP_XATTR:
		mntopt_on = MNTOPT_XATTR;
		mntopt_off = MNTOPT_NOXATTR;
		break;

	case ZFS_PROP_NBMAND:
		mntopt_on = MNTOPT_NBMAND;
		mntopt_off = MNTOPT_NONBMAND;
		break;

	default:
		break;
	}

	/*
	 * Because looking up the mount options is potentially expensive
	 * (iterating over all of /etc/mnttab), we defer its calculation until
	 * we're looking up a property which requires its presence.
	 */
	if (!zhp->zfs_mntcheck &&
	    (mntopt_on != NULL || prop == ZFS_PROP_MOUNTED)) {
		libzfs_handle_t *hdl = zhp->zfs_hdl;
		struct mnttab entry;

		if (FUNC3(hdl, zhp->zfs_name, &entry) == 0) {
			zhp->zfs_mntopts = FUNC19(hdl,
			    entry.mnt_mntopts);
			if (zhp->zfs_mntopts == NULL)
				return (-1);
		}

		zhp->zfs_mntcheck = B_TRUE;
	}

	if (zhp->zfs_mntopts == NULL)
		mnt.mnt_mntopts = "";
	else
		mnt.mnt_mntopts = zhp->zfs_mntopts;

	switch (prop) {
	case ZFS_PROP_ATIME:
	case ZFS_PROP_DEVICES:
	case ZFS_PROP_EXEC:
	case ZFS_PROP_READONLY:
	case ZFS_PROP_SETUID:
	case ZFS_PROP_XATTR:
	case ZFS_PROP_NBMAND:
		*val = FUNC1(zhp, prop, source);

		if (received)
			break;

		if (FUNC2(&mnt, mntopt_on) && !*val) {
			*val = B_TRUE;
			if (src)
				*src = ZPROP_SRC_TEMPORARY;
		} else if (FUNC2(&mnt, mntopt_off) && *val) {
			*val = B_FALSE;
			if (src)
				*src = ZPROP_SRC_TEMPORARY;
		}
		break;

	case ZFS_PROP_CANMOUNT:
	case ZFS_PROP_VOLSIZE:
	case ZFS_PROP_QUOTA:
	case ZFS_PROP_REFQUOTA:
	case ZFS_PROP_RESERVATION:
	case ZFS_PROP_REFRESERVATION:
	case ZFS_PROP_FILESYSTEM_LIMIT:
	case ZFS_PROP_SNAPSHOT_LIMIT:
	case ZFS_PROP_FILESYSTEM_COUNT:
	case ZFS_PROP_SNAPSHOT_COUNT:
		*val = FUNC1(zhp, prop, source);

		if (*source == NULL) {
			/* not default, must be local */
			*source = zhp->zfs_name;
		}
		break;

	case ZFS_PROP_MOUNTED:
		*val = (zhp->zfs_mntopts != NULL);
		break;

	case ZFS_PROP_NUMCLONES:
		*val = zhp->zfs_dmustats.dds_num_clones;
		break;

	case ZFS_PROP_VERSION:
	case ZFS_PROP_NORMALIZE:
	case ZFS_PROP_UTF8ONLY:
	case ZFS_PROP_CASE:
		if (!FUNC18(prop, zhp->zfs_head_type) ||
		    FUNC7(zhp->zfs_hdl, &zc, 0) != 0)
			return (-1);
		(void) FUNC6(zc.zc_name, zhp->zfs_name, sizeof (zc.zc_name));
		if (FUNC12(zhp->zfs_hdl, ZFS_IOC_OBJSET_ZPLPROPS, &zc)) {
			FUNC8(&zc);
			return (-1);
		}
		if (FUNC9(zhp->zfs_hdl, &zc, &zplprops) != 0 ||
		    FUNC5(zplprops, FUNC17(prop),
		    val) != 0) {
			FUNC8(&zc);
			return (-1);
		}
		FUNC4(zplprops);
		FUNC8(&zc);
		break;

	case ZFS_PROP_INCONSISTENT:
		*val = zhp->zfs_dmustats.dds_inconsistent;
		break;

	default:
		switch (FUNC14(prop)) {
		case PROP_TYPE_NUMBER:
		case PROP_TYPE_INDEX:
			*val = FUNC1(zhp, prop, source);
			/*
			 * If we tried to use a default value for a
			 * readonly property, it means that it was not
			 * present.  Note this only applies to "truly"
			 * readonly properties, not set-once properties
			 * like volblocksize.
			 */
			if (FUNC15(prop) &&
			    !FUNC16(prop) &&
			    *source != NULL && (*source)[0] == '\0') {
				*source = NULL;
				return (-1);
			}
			break;

		case PROP_TYPE_STRING:
		default:
			FUNC11(zhp->zfs_hdl, FUNC0(TEXT_DOMAIN,
			    "cannot get non-numeric property"));
			return (FUNC10(zhp->zfs_hdl, EZFS_BADPROP,
			    FUNC0(TEXT_DOMAIN, "internal error")));
		}
	}

	return (0);
}