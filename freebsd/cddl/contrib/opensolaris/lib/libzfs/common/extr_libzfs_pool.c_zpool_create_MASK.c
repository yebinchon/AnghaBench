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
struct TYPE_8__ {int /*<<< orphan*/  zc_name; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ zfs_cmd_t ;
typedef  int uint64_t ;
struct TYPE_9__ {int /*<<< orphan*/  import; int /*<<< orphan*/  create; } ;
typedef  TYPE_2__ prop_flags_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  msg ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
#define  EBUSY 132 
#define  ENOSPC 131 
#define  ENOTBLK 130 
#define  EOVERFLOW 129 
#define  ERANGE 128 
 int /*<<< orphan*/  EZFS_BADDEV ; 
 int /*<<< orphan*/  EZFS_BADPROP ; 
 int /*<<< orphan*/  EZFS_INVALIDNAME ; 
 int /*<<< orphan*/  NV_UNIQUE_NAME ; 
 int /*<<< orphan*/  SPA_MINDEVSIZE ; 
 int /*<<< orphan*/  SPA_VERSION_1 ; 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 int /*<<< orphan*/  ZFS_IOC_POOL_CREATE ; 
 int /*<<< orphan*/  ZFS_PROP_ZONED ; 
 int /*<<< orphan*/  ZFS_TYPE_FILESYSTEM ; 
 int /*<<< orphan*/  ZPOOL_ROOTFS_PROPS ; 
 char* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int errno ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char const*) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int FUNC18 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/ * FUNC19 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__,char*) ; 

int
FUNC20(libzfs_handle_t *hdl, const char *pool, nvlist_t *nvroot,
    nvlist_t *props, nvlist_t *fsprops)
{
	zfs_cmd_t zc = { 0 };
	nvlist_t *zc_fsprops = NULL;
	nvlist_t *zc_props = NULL;
	char msg[1024];
	int ret = -1;

	(void) FUNC5(msg, sizeof (msg), FUNC0(TEXT_DOMAIN,
	    "cannot create '%s'"), pool);

	if (!FUNC17(hdl, B_FALSE, pool))
		return (FUNC11(hdl, EZFS_INVALIDNAME, msg));

	if (FUNC9(hdl, &zc, nvroot) != 0)
		return (-1);

	if (props) {
		prop_flags_t flags = { .create = B_TRUE, .import = B_FALSE };

		if ((zc_props = FUNC19(hdl, pool, props,
		    SPA_VERSION_1, flags, msg)) == NULL) {
			goto create_failed;
		}
	}

	if (fsprops) {
		uint64_t zoned;
		char *zonestr;

		zoned = ((FUNC4(fsprops,
		    FUNC15(ZFS_PROP_ZONED), &zonestr) == 0) &&
		    FUNC6(zonestr, "on") == 0);

		if ((zc_fsprops = FUNC16(hdl, ZFS_TYPE_FILESYSTEM,
		    fsprops, zoned, NULL, NULL, msg)) == NULL) {
			goto create_failed;
		}
		if (!zc_props &&
		    (FUNC2(&zc_props, NV_UNIQUE_NAME, 0) != 0)) {
			goto create_failed;
		}
		if (FUNC1(zc_props,
		    ZPOOL_ROOTFS_PROPS, zc_fsprops) != 0) {
			goto create_failed;
		}
	}

	if (zc_props && FUNC10(hdl, &zc, zc_props) != 0)
		goto create_failed;

	(void) FUNC7(zc.zc_name, pool, sizeof (zc.zc_name));

	if ((ret = FUNC13(hdl, ZFS_IOC_POOL_CREATE, &zc)) != 0) {

		FUNC8(&zc);
		FUNC3(zc_props);
		FUNC3(zc_fsprops);

		switch (errno) {
		case EBUSY:
			/*
			 * This can happen if the user has specified the same
			 * device multiple times.  We can't reliably detect this
			 * until we try to add it and see we already have a
			 * label.
			 */
			FUNC12(hdl, FUNC0(TEXT_DOMAIN,
			    "one or more vdevs refer to the same device"));
			return (FUNC11(hdl, EZFS_BADDEV, msg));

		case ERANGE:
			/*
			 * This happens if the record size is smaller or larger
			 * than the allowed size range, or not a power of 2.
			 *
			 * NOTE: although zfs_valid_proplist is called earlier,
			 * this case may have slipped through since the
			 * pool does not exist yet and it is therefore
			 * impossible to read properties e.g. max blocksize
			 * from the pool.
			 */
			FUNC12(hdl, FUNC0(TEXT_DOMAIN,
			    "record size invalid"));
			return (FUNC11(hdl, EZFS_BADPROP, msg));

		case EOVERFLOW:
			/*
			 * This occurs when one of the devices is below
			 * SPA_MINDEVSIZE.  Unfortunately, we can't detect which
			 * device was the problem device since there's no
			 * reliable way to determine device size from userland.
			 */
			{
				char buf[64];

				FUNC14(SPA_MINDEVSIZE, buf, sizeof (buf));

				FUNC12(hdl, FUNC0(TEXT_DOMAIN,
				    "one or more devices is less than the "
				    "minimum size (%s)"), buf);
			}
			return (FUNC11(hdl, EZFS_BADDEV, msg));

		case ENOSPC:
			FUNC12(hdl, FUNC0(TEXT_DOMAIN,
			    "one or more devices is out of space"));
			return (FUNC11(hdl, EZFS_BADDEV, msg));

		case ENOTBLK:
			FUNC12(hdl, FUNC0(TEXT_DOMAIN,
			    "cache device must be a disk or disk slice"));
			return (FUNC11(hdl, EZFS_BADDEV, msg));

		default:
			return (FUNC18(hdl, errno, msg));
		}
	}

create_failed:
	FUNC8(&zc);
	FUNC3(zc_props);
	FUNC3(zc_fsprops);
	return (ret);
}