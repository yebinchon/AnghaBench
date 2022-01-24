#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* dds_origin; } ;
struct TYPE_5__ {TYPE_1__ zfs_dmustats; int /*<<< orphan*/  zfs_name; int /*<<< orphan*/  zfs_type; int /*<<< orphan*/ * zfs_hdl; } ;
typedef  TYPE_2__ zfs_handle_t ;
typedef  int /*<<< orphan*/  snapname ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;
typedef  int /*<<< orphan*/  errbuf ;

/* Variables and functions */
 int /*<<< orphan*/  B_TRUE ; 
#define  EEXIST 128 
 int /*<<< orphan*/  EZFS_BADTYPE ; 
 int /*<<< orphan*/  EZFS_EXISTS ; 
 int /*<<< orphan*/  EZFS_INVALIDNAME ; 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 int ZFS_MAX_DATASET_NAME_LEN ; 
 int /*<<< orphan*/  ZFS_TYPE_SNAPSHOT ; 
 char* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC7(zfs_handle_t *zhp)
{
	libzfs_handle_t *hdl = zhp->zfs_hdl;
	char snapname[ZFS_MAX_DATASET_NAME_LEN];
	int ret;
	char errbuf[1024];

	(void) FUNC2(errbuf, sizeof (errbuf), FUNC0(TEXT_DOMAIN,
	    "cannot promote '%s'"), zhp->zfs_name);

	if (zhp->zfs_type == ZFS_TYPE_SNAPSHOT) {
		FUNC4(hdl, FUNC0(TEXT_DOMAIN,
		    "snapshots can not be promoted"));
		return (FUNC3(hdl, EZFS_BADTYPE, errbuf));
	}

	if (zhp->zfs_dmustats.dds_origin[0] == '\0') {
		FUNC4(hdl, FUNC0(TEXT_DOMAIN,
		    "not a cloned filesystem"));
		return (FUNC3(hdl, EZFS_BADTYPE, errbuf));
	}

	if (!FUNC6(hdl, zhp->zfs_name, zhp->zfs_type, B_TRUE))
		return (FUNC3(hdl, EZFS_INVALIDNAME, errbuf));

	ret = FUNC1(zhp->zfs_name, snapname, sizeof (snapname));

	if (ret != 0) {
		switch (ret) {
		case EEXIST:
			/* There is a conflicting snapshot name. */
			FUNC4(hdl, FUNC0(TEXT_DOMAIN,
			    "conflicting snapshot '%s' from parent '%s'"),
			    snapname, zhp->zfs_dmustats.dds_origin);
			return (FUNC3(hdl, EZFS_EXISTS, errbuf));

		default:
			return (FUNC5(hdl, ret, errbuf));
		}
	}
	return (ret);
}