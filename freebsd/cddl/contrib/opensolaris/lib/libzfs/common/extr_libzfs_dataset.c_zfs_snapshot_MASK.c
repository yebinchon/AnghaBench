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
typedef  int /*<<< orphan*/  zfs_handle_t ;
struct TYPE_3__ {char* sd_snapname; int /*<<< orphan*/  sd_nvl; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ snapdata_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;
typedef  int /*<<< orphan*/  fsname ;
typedef  int /*<<< orphan*/  errbuf ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  EZFS_INVALIDNAME ; 
 int /*<<< orphan*/  NV_UNIQUE_NAME ; 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 int ZFS_MAX_DATASET_NAME_LEN ; 
 int ZFS_TYPE_FILESYSTEM ; 
 int /*<<< orphan*/  ZFS_TYPE_SNAPSHOT ; 
 int ZFS_TYPE_VOLUME ; 
 char* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char const*) ; 
 char* FUNC5 (char*,char) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC15(libzfs_handle_t *hdl, const char *path, boolean_t recursive,
    nvlist_t *props)
{
	int ret;
	snapdata_t sd = { 0 };
	char fsname[ZFS_MAX_DATASET_NAME_LEN];
	char *cp;
	zfs_handle_t *zhp;
	char errbuf[1024];

	(void) FUNC4(errbuf, sizeof (errbuf), FUNC0(TEXT_DOMAIN,
	    "cannot snapshot %s"), path);

	if (!FUNC14(hdl, path, ZFS_TYPE_SNAPSHOT, B_TRUE))
		return (FUNC9(hdl, EZFS_INVALIDNAME, errbuf));

	(void) FUNC6(fsname, path, sizeof (fsname));
	cp = FUNC5(fsname, '@');
	*cp = '\0';
	sd.sd_snapname = cp + 1;

	if ((zhp = FUNC11(hdl, fsname, ZFS_TYPE_FILESYSTEM |
	    ZFS_TYPE_VOLUME)) == NULL) {
		return (-1);
	}

	FUNC7(FUNC2(&sd.sd_nvl, NV_UNIQUE_NAME, 0) == 0);
	if (recursive) {
		(void) FUNC12(FUNC10(zhp), &sd);
	} else {
		FUNC1(sd.sd_nvl, path);
	}

	ret = FUNC13(hdl, sd.sd_nvl, props);
	FUNC3(sd.sd_nvl);
	FUNC8(zhp);
	return (ret);
}