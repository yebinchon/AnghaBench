#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int zfs_prop_t ;
struct TYPE_16__ {char* zfs_name; int /*<<< orphan*/  zpool_hdl; int /*<<< orphan*/  zfs_type; int /*<<< orphan*/ * zfs_hdl; } ;
typedef  TYPE_1__ zfs_handle_t ;
struct TYPE_17__ {scalar_t__ zc_nvlist_dst_filled; int /*<<< orphan*/  zc_name; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ zfs_cmd_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  prop_changelist_t ;
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;
typedef  int /*<<< orphan*/  errbuf ;

/* Variables and functions */
 scalar_t__ B_FALSE ; 
 scalar_t__ ENOSPC ; 
 int /*<<< orphan*/  EZFS_PERM ; 
 int /*<<< orphan*/  EZFS_ZONED ; 
 int /*<<< orphan*/  NV_UNIQUE_NAME ; 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 scalar_t__ ZFS_CANMOUNT_OFF ; 
 int /*<<< orphan*/  ZFS_IOC_SET_PROP ; 
 int ZFS_PROP_CANMOUNT ; 
#define  ZFS_PROP_DEVICES 133 
#define  ZFS_PROP_ISCSIOPTIONS 132 
#define  ZFS_PROP_MLSLABEL 131 
 int ZFS_PROP_MOUNTPOINT ; 
#define  ZFS_PROP_NBMAND 130 
 scalar_t__ ZFS_PROP_VOLSIZE ; 
#define  ZFS_PROP_VSCAN 129 
#define  ZFS_PROP_XATTR 128 
 scalar_t__ ZFS_PROP_ZONED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ ** FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 char* FUNC7 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC18 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC22 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,char*) ; 
 int FUNC25 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC26 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC27 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC28 (char*) ; 
 int /*<<< orphan*/  FUNC29 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC30 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *,int,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *,scalar_t__,char*) ; 
 int /*<<< orphan*/ * FUNC33 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,char*) ; 

int
FUNC34(zfs_handle_t *zhp, nvlist_t *props)
{
	zfs_cmd_t zc = { 0 };
	int ret = -1;
	prop_changelist_t **cls = NULL;
	int cl_idx;
	char errbuf[1024];
	libzfs_handle_t *hdl = zhp->zfs_hdl;
	nvlist_t *nvl;
	int nvl_len;
	int added_resv = 0;

	(void) FUNC16(errbuf, sizeof (errbuf),
	    FUNC7(TEXT_DOMAIN, "cannot set property for '%s'"),
	    zhp->zfs_name);

	if ((nvl = FUNC33(hdl, zhp->zfs_type, props,
	    FUNC29(zhp, ZFS_PROP_ZONED), zhp, zhp->zpool_hdl,
	    errbuf)) == NULL)
		goto error;

	/*
	 * We have to check for any extra properties which need to be added
	 * before computing the length of the nvlist.
	 */
	for (nvpair_t *elem = FUNC14(nvl, NULL);
	    elem != NULL;
	    elem = FUNC14(nvl, elem)) {
		if (FUNC28(FUNC15(elem)) == ZFS_PROP_VOLSIZE &&
		    (added_resv = FUNC22(zhp, nvl)) == -1) {
			goto error;
		}
	}

	if (added_resv != 1 &&
	    (added_resv = FUNC25(zhp, nvl)) == -1) {
		goto error;
	}

	/*
	 * Check how many properties we're setting and allocate an array to
	 * store changelist pointers for postfix().
	 */
	nvl_len = 0;
	for (nvpair_t *elem = FUNC14(nvl, NULL);
	    elem != NULL;
	    elem = FUNC14(nvl, elem))
		nvl_len++;
	if ((cls = FUNC1(nvl_len, sizeof (prop_changelist_t *))) == NULL)
		goto error;

	cl_idx = 0;
	for (nvpair_t *elem = FUNC14(nvl, NULL);
	    elem != NULL;
	    elem = FUNC14(nvl, elem)) {

		zfs_prop_t prop = FUNC28(FUNC15(elem));

		FUNC0(cl_idx < nvl_len);
		/*
		 * We don't want to unmount & remount the dataset when changing
		 * its canmount property to 'on' or 'noauto'.  We only use
		 * the changelist logic to unmount when setting canmount=off.
		 */
		if (prop != ZFS_PROP_CANMOUNT ||
		    (FUNC8(elem) == ZFS_CANMOUNT_OFF &&
		    FUNC27(zhp, NULL))) {
			cls[cl_idx] = FUNC3(zhp, prop, 0, 0);
			if (cls[cl_idx] == NULL)
				goto error;
		}

		if (prop == ZFS_PROP_MOUNTPOINT &&
		    FUNC4(cls[cl_idx])) {
			FUNC24(hdl, FUNC7(TEXT_DOMAIN,
			    "child dataset with inherited mountpoint is used "
			    "in a non-global zone"));
			ret = FUNC23(hdl, EZFS_ZONED, errbuf);
			goto error;
		}

		/* We don't support those properties on FreeBSD. */
		switch (prop) {
		case ZFS_PROP_DEVICES:
		case ZFS_PROP_ISCSIOPTIONS:
		case ZFS_PROP_XATTR:
		case ZFS_PROP_VSCAN:
		case ZFS_PROP_NBMAND:
		case ZFS_PROP_MLSLABEL:
			(void) FUNC16(errbuf, sizeof (errbuf),
			    "property '%s' not supported on FreeBSD",
			    FUNC15(elem));
			ret = FUNC23(hdl, EZFS_PERM, errbuf);
			goto error;
		}

		if (cls[cl_idx] != NULL &&
		    (ret = FUNC6(cls[cl_idx])) != 0)
			goto error;

		cl_idx++;
	}
	FUNC0(cl_idx == nvl_len);

	/*
	 * Execute the corresponding ioctl() to set this list of properties.
	 */
	(void) FUNC17(zc.zc_name, zhp->zfs_name, sizeof (zc.zc_name));

	if ((ret = FUNC21(hdl, &zc, nvl)) != 0 ||
	    (ret = FUNC18(hdl, &zc, 0)) != 0)
		goto error;

	ret = FUNC26(hdl, ZFS_IOC_SET_PROP, &zc);

	if (ret != 0) {
		if (zc.zc_nvlist_dst_filled == B_FALSE) {
			(void) FUNC32(hdl, errno, errbuf);
			goto error;
		}

		/* Get the list of unset properties back and report them. */
		nvlist_t *errorprops = NULL;
		if (FUNC20(hdl, &zc, &errorprops) != 0)
			goto error;
		for (nvpair_t *elem = FUNC14(errorprops, NULL);
		    elem != NULL;
		    elem = FUNC14(errorprops, elem)) {
			zfs_prop_t prop = FUNC28(FUNC15(elem));
			FUNC31(hdl, prop, errno, errbuf);
		}
		FUNC13(errorprops);

		if (added_resv && errno == ENOSPC) {
			/* clean up the volsize property we tried to set */
			uint64_t old_volsize = FUNC29(zhp,
			    ZFS_PROP_VOLSIZE);
			FUNC13(nvl);
			nvl = NULL;
			FUNC19(&zc);

			if (FUNC12(&nvl, NV_UNIQUE_NAME, 0) != 0)
				goto error;
			if (FUNC11(nvl,
			    FUNC30(ZFS_PROP_VOLSIZE),
			    old_volsize) != 0)
				goto error;
			if (FUNC21(hdl, &zc, nvl) != 0)
				goto error;
			(void) FUNC26(hdl, ZFS_IOC_SET_PROP, &zc);
		}
	} else {
		for (cl_idx = 0; cl_idx < nvl_len; cl_idx++) {
			if (cls[cl_idx] != NULL) {
				int clp_err = FUNC5(cls[cl_idx]);
				if (clp_err != 0)
					ret = clp_err;
			}
		}

		/*
		 * Refresh the statistics so the new property value
		 * is reflected.
		 */
		if (ret == 0)
			(void) FUNC10(zhp);
	}

error:
	FUNC13(nvl);
	FUNC19(&zc);
	if (cls != NULL) {
		for (cl_idx = 0; cl_idx < nvl_len; cl_idx++) {
			if (cls[cl_idx] != NULL)
				FUNC2(cls[cl_idx]);
		}
		FUNC9(cls);
	}
	return (ret);
}