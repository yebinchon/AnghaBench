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
struct TYPE_11__ {int /*<<< orphan*/  zpool_hdl; int /*<<< orphan*/  zpool_name; } ;
typedef  TYPE_1__ zpool_handle_t ;
struct TYPE_12__ {int /*<<< orphan*/  zc_name; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ zfs_cmd_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_13__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_3__ prop_flags_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  errbuf ;

/* Variables and functions */
 int /*<<< orphan*/  NV_UNIQUE_NAME ; 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 int /*<<< orphan*/  ZFS_IOC_POOL_SET_PROPS ; 
 int /*<<< orphan*/  ZPOOL_PROP_VERSION ; 
 char* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char const*,char const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__,char*) ; 

int
FUNC14(zpool_handle_t *zhp, const char *propname, const char *propval)
{
	zfs_cmd_t zc = { 0 };
	int ret = -1;
	char errbuf[1024];
	nvlist_t *nvl = NULL;
	nvlist_t *realprops;
	uint64_t version;
	prop_flags_t flags = { 0 };

	(void) FUNC5(errbuf, sizeof (errbuf),
	    FUNC0(TEXT_DOMAIN, "cannot set property for '%s'"),
	    zhp->zpool_name);

	if (FUNC3(&nvl, NV_UNIQUE_NAME, 0) != 0)
		return (FUNC1(zhp->zpool_hdl));

	if (FUNC2(nvl, propname, propval) != 0) {
		FUNC4(nvl);
		return (FUNC1(zhp->zpool_hdl));
	}

	version = FUNC10(zhp, ZPOOL_PROP_VERSION, NULL);
	if ((realprops = FUNC13(zhp->zpool_hdl,
	    zhp->zpool_name, nvl, version, flags, errbuf)) == NULL) {
		FUNC4(nvl);
		return (-1);
	}

	FUNC4(nvl);
	nvl = realprops;

	/*
	 * Execute the corresponding ioctl() to set this property.
	 */
	(void) FUNC6(zc.zc_name, zhp->zpool_name, sizeof (zc.zc_name));

	if (FUNC8(zhp->zpool_hdl, &zc, nvl) != 0) {
		FUNC4(nvl);
		return (-1);
	}

	ret = FUNC9(zhp->zpool_hdl, ZFS_IOC_POOL_SET_PROPS, &zc);

	FUNC7(&zc);
	FUNC4(nvl);

	if (ret)
		(void) FUNC12(zhp->zpool_hdl, errno, errbuf);
	else
		(void) FUNC11(zhp);

	return (ret);
}