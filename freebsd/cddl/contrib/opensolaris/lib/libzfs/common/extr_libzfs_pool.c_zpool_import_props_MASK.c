#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int zlp_rewind; } ;
typedef  TYPE_1__ zpool_load_policy_t ;
typedef  int /*<<< orphan*/  zpool_handle_t ;
struct TYPE_14__ {int zc_nvlist_conf_size; int zc_cookie; int /*<<< orphan*/  zc_guid; int /*<<< orphan*/  zc_name; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ zfs_cmd_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_15__ {int import; int /*<<< orphan*/  create; } ;
typedef  TYPE_3__ prop_flags_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;
typedef  int /*<<< orphan*/  errbuf ;
typedef  int /*<<< orphan*/  desc ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int B_TRUE ; 
#define  EEXIST 133 
#define  EINVAL 132 
#define  ENAMETOOLONG 131 
 int ENOMEM ; 
#define  ENOTSUP 130 
#define  ENXIO 129 
#define  EROFS 128 
 int /*<<< orphan*/  EZFS_BADDEV ; 
 int /*<<< orphan*/  EZFS_BADVERSION ; 
 int /*<<< orphan*/  EZFS_INVALCONFIG ; 
 int /*<<< orphan*/  EZFS_INVALIDNAME ; 
 int /*<<< orphan*/  EZFS_NAMETOOLONG ; 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 int /*<<< orphan*/  ZFS_IOC_POOL_IMPORT ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_CAN_RDONLY ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_LOAD_INFO ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_MISSING_DEVICES ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_POOL_GUID ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_POOL_NAME ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_UNSUP_FEAT ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_VERSION ; 
 int ZPOOL_DO_REWIND ; 
 int ZPOOL_TRY_REWIND ; 
 char* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,char*) ; 
 int FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC25 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/ * FUNC29 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__,char*) ; 

int
FUNC30(libzfs_handle_t *hdl, nvlist_t *config, const char *newname,
    nvlist_t *props, int flags)
{
	zfs_cmd_t zc = { 0 };
	zpool_load_policy_t policy;
	nvlist_t *nv = NULL;
	nvlist_t *nvinfo = NULL;
	nvlist_t *missing = NULL;
	char *thename;
	char *origname;
	int ret;
	int error = 0;
	char errbuf[1024];

	FUNC10(FUNC4(config, ZPOOL_CONFIG_POOL_NAME,
	    &origname) == 0);

	(void) FUNC8(errbuf, sizeof (errbuf), FUNC0(TEXT_DOMAIN,
	    "cannot import pool '%s'"), origname);

	if (newname != NULL) {
		if (!FUNC24(hdl, B_FALSE, newname))
			return (FUNC19(hdl, EZFS_INVALIDNAME,
			    FUNC0(TEXT_DOMAIN, "cannot import '%s'"),
			    newname));
		thename = (char *)newname;
	} else {
		thename = origname;
	}

	if (props != NULL) {
		uint64_t version;
		prop_flags_t flags = { .create = B_FALSE, .import = B_TRUE };

		FUNC10(FUNC5(config, ZPOOL_CONFIG_VERSION,
		    &version) == 0);

		if ((props = FUNC29(hdl, origname,
		    props, version, flags, errbuf)) == NULL)
			return (-1);
		if (FUNC16(hdl, &zc, props) != 0) {
			FUNC2(props);
			return (-1);
		}
		FUNC2(props);
	}

	(void) FUNC9(zc.zc_name, thename, sizeof (zc.zc_name));

	FUNC10(FUNC5(config, ZPOOL_CONFIG_POOL_GUID,
	    &zc.zc_guid) == 0);

	if (FUNC15(hdl, &zc, config) != 0) {
		FUNC13(&zc);
		return (-1);
	}
	if (FUNC11(hdl, &zc, zc.zc_nvlist_conf_size * 2) != 0) {
		FUNC13(&zc);
		return (-1);
	}

	zc.zc_cookie = flags;
	while ((ret = FUNC20(hdl, ZFS_IOC_POOL_IMPORT, &zc)) != 0 &&
	    errno == ENOMEM) {
		if (FUNC12(hdl, &zc) != 0) {
			FUNC13(&zc);
			return (-1);
		}
	}
	if (ret != 0)
		error = errno;

	(void) FUNC14(hdl, &zc, &nv);

	FUNC13(&zc);

	FUNC23(config, &policy);

	if (error) {
		char desc[1024];

		/*
		 * Dry-run failed, but we print out what success
		 * looks like if we found a best txg
		 */
		if (policy.zlp_rewind & ZPOOL_TRY_REWIND) {
			FUNC27(hdl, newname ? origname : thename,
			    B_TRUE, nv);
			FUNC2(nv);
			return (-1);
		}

		if (newname == NULL)
			(void) FUNC8(desc, sizeof (desc),
			    FUNC0(TEXT_DOMAIN, "cannot import '%s'"),
			    thename);
		else
			(void) FUNC8(desc, sizeof (desc),
			    FUNC0(TEXT_DOMAIN, "cannot import '%s' as '%s'"),
			    origname, thename);

		switch (error) {
		case ENOTSUP:
			if (nv != NULL && FUNC3(nv,
			    ZPOOL_CONFIG_LOAD_INFO, &nvinfo) == 0 &&
			    FUNC1(nvinfo, ZPOOL_CONFIG_UNSUP_FEAT)) {
				(void) FUNC7(FUNC0(TEXT_DOMAIN, "This "
				    "pool uses the following feature(s) not "
				    "supported by this system:\n"));
				FUNC26(nv);
				if (FUNC1(nvinfo,
				    ZPOOL_CONFIG_CAN_RDONLY)) {
					(void) FUNC7(FUNC0(TEXT_DOMAIN,
					    "All unsupported features are only "
					    "required for writing to the pool."
					    "\nThe pool can be imported using "
					    "'-o readonly=on'.\n"));
				}
			}
			/*
			 * Unsupported version.
			 */
			(void) FUNC17(hdl, EZFS_BADVERSION, desc);
			break;

		case EINVAL:
			(void) FUNC17(hdl, EZFS_INVALCONFIG, desc);
			break;

		case EROFS:
			FUNC18(hdl, FUNC0(TEXT_DOMAIN,
			    "one or more devices is read only"));
			(void) FUNC17(hdl, EZFS_BADDEV, desc);
			break;

		case ENXIO:
			if (nv && FUNC3(nv,
			    ZPOOL_CONFIG_LOAD_INFO, &nvinfo) == 0 &&
			    FUNC3(nvinfo,
			    ZPOOL_CONFIG_MISSING_DEVICES, &missing) == 0) {
				(void) FUNC7(FUNC0(TEXT_DOMAIN,
				    "The devices below are missing or "
				    "corrupted, use '-m' to import the pool "
				    "anyway:\n"));
				FUNC6(hdl, NULL, missing, 2);
				(void) FUNC7("\n");
			}
			(void) FUNC28(hdl, error, desc);
			break;

		case EEXIST:
			(void) FUNC28(hdl, error, desc);
			break;
		case ENAMETOOLONG:
			FUNC18(hdl, FUNC0(TEXT_DOMAIN,
			    "new name of at least one dataset is longer than "
			    "the maximum allowable length"));
			(void) FUNC17(hdl, EZFS_NAMETOOLONG, desc);
			break;
		default:
			(void) FUNC28(hdl, error, desc);
			FUNC22(hdl,
			    newname ? origname : thename, -error, nv);
			break;
		}

		FUNC2(nv);
		ret = -1;
	} else {
		zpool_handle_t *zhp;

		/*
		 * This should never fail, but play it safe anyway.
		 */
		if (FUNC25(hdl, thename, &zhp) != 0)
			ret = -1;
		else if (zhp != NULL)
			FUNC21(zhp);
		if (policy.zlp_rewind &
		    (ZPOOL_DO_REWIND | ZPOOL_TRY_REWIND)) {
			FUNC27(hdl, newname ? origname : thename,
			    ((policy.zlp_rewind & ZPOOL_TRY_REWIND) != 0), nv);
		}
		FUNC2(nv);
		return (0);
	}

	return (ret);
}