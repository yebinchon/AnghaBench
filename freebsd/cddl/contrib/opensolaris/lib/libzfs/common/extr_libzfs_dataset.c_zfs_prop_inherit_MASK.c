#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ zfs_prop_t ;
struct TYPE_8__ {char const* zfs_name; int /*<<< orphan*/ * zfs_hdl; int /*<<< orphan*/  zfs_type; } ;
typedef  TYPE_1__ zfs_handle_t ;
struct TYPE_9__ {int /*<<< orphan*/  zc_value; int /*<<< orphan*/  zc_name; int /*<<< orphan*/  zc_cookie; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ zfs_cmd_t ;
typedef  int /*<<< orphan*/  prop_changelist_t ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;
typedef  int /*<<< orphan*/  errbuf ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  EZFS_BADPROP ; 
 int /*<<< orphan*/  EZFS_PROPNONINHERIT ; 
 int /*<<< orphan*/  EZFS_PROPREADONLY ; 
 int /*<<< orphan*/  EZFS_PROPTYPE ; 
 int /*<<< orphan*/  EZFS_ZONED ; 
 scalar_t__ GLOBAL_ZONEID ; 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 int /*<<< orphan*/  ZFS_IOC_INHERIT_PROP ; 
 scalar_t__ ZFS_PROP_MOUNTPOINT ; 
 int /*<<< orphan*/  ZFS_PROP_ZONED ; 
 scalar_t__ ZPROP_INVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char const*,int) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC13 (char const*) ; 
 scalar_t__ FUNC14 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 
 scalar_t__ FUNC16 (scalar_t__) ; 
 char* FUNC17 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (char const*) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 

int
FUNC21(zfs_handle_t *zhp, const char *propname, boolean_t received)
{
	zfs_cmd_t zc = { 0 };
	int ret;
	prop_changelist_t *cl;
	libzfs_handle_t *hdl = zhp->zfs_hdl;
	char errbuf[1024];
	zfs_prop_t prop;

	(void) FUNC8(errbuf, sizeof (errbuf), FUNC5(TEXT_DOMAIN,
	    "cannot inherit %s for '%s'"), propname, zhp->zfs_name);

	zc.zc_cookie = received;
	if ((prop = FUNC13(propname)) == ZPROP_INVAL) {
		/*
		 * For user properties, the amount of work we have to do is very
		 * small, so just do it here.
		 */
		if (!FUNC18(propname)) {
			FUNC11(hdl, FUNC5(TEXT_DOMAIN,
			    "invalid property"));
			return (FUNC10(hdl, EZFS_BADPROP, errbuf));
		}

		(void) FUNC9(zc.zc_name, zhp->zfs_name, sizeof (zc.zc_name));
		(void) FUNC9(zc.zc_value, propname, sizeof (zc.zc_value));

		if (FUNC12(zhp->zfs_hdl, ZFS_IOC_INHERIT_PROP, &zc) != 0)
			return (FUNC20(hdl, errno, errbuf));

		return (0);
	}

	/*
	 * Verify that this property is inheritable.
	 */
	if (FUNC16(prop))
		return (FUNC10(hdl, EZFS_PROPREADONLY, errbuf));

	if (!FUNC15(prop) && !received)
		return (FUNC10(hdl, EZFS_PROPNONINHERIT, errbuf));

	/*
	 * Check to see if the value applies to this type
	 */
	if (!FUNC19(prop, zhp->zfs_type))
		return (FUNC10(hdl, EZFS_PROPTYPE, errbuf));

	/*
	 * Normalize the name, to get rid of shorthand abbreviations.
	 */
	propname = FUNC17(prop);
	(void) FUNC9(zc.zc_name, zhp->zfs_name, sizeof (zc.zc_name));
	(void) FUNC9(zc.zc_value, propname, sizeof (zc.zc_value));

	if (prop == ZFS_PROP_MOUNTPOINT && FUNC7() == GLOBAL_ZONEID &&
	    FUNC14(zhp, ZFS_PROP_ZONED)) {
		FUNC11(hdl, FUNC5(TEXT_DOMAIN,
		    "dataset is used in a non-global zone"));
		return (FUNC10(hdl, EZFS_ZONED, errbuf));
	}

	/*
	 * Determine datasets which will be affected by this change, if any.
	 */
	if ((cl = FUNC1(zhp, prop, 0, 0)) == NULL)
		return (-1);

	if (prop == ZFS_PROP_MOUNTPOINT && FUNC2(cl)) {
		FUNC11(hdl, FUNC5(TEXT_DOMAIN,
		    "child dataset with inherited mountpoint is used "
		    "in a non-global zone"));
		ret = FUNC10(hdl, EZFS_ZONED, errbuf);
		goto error;
	}

	if ((ret = FUNC4(cl)) != 0)
		goto error;

	if ((ret = FUNC12(zhp->zfs_hdl, ZFS_IOC_INHERIT_PROP, &zc)) != 0) {
		return (FUNC20(hdl, errno, errbuf));
	} else {

		if ((ret = FUNC3(cl)) != 0)
			goto error;

		/*
		 * Refresh the statistics so the new property is reflected.
		 */
		(void) FUNC6(zhp);
	}

error:
	FUNC0(cl);
	return (ret);
}