#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  EZFS_NOMEM ; 
 int /*<<< orphan*/  NV_UNIQUE_NAME ; 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 int /*<<< orphan*/  ZFS_IMPORT_NORMAL ; 
 int /*<<< orphan*/  ZPOOL_PROP_ALTROOT ; 
 int /*<<< orphan*/  ZPOOL_PROP_CACHEFILE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

int
FUNC7(libzfs_handle_t *hdl, nvlist_t *config, const char *newname,
    char *altroot)
{
	nvlist_t *props = NULL;
	int ret;

	if (altroot != NULL) {
		if (FUNC2(&props, NV_UNIQUE_NAME, 0) != 0) {
			return (FUNC4(hdl, EZFS_NOMEM,
			    FUNC0(TEXT_DOMAIN, "cannot import '%s'"),
			    newname));
		}

		if (FUNC1(props,
		    FUNC6(ZPOOL_PROP_ALTROOT), altroot) != 0 ||
		    FUNC1(props,
		    FUNC6(ZPOOL_PROP_CACHEFILE), "none") != 0) {
			FUNC3(props);
			return (FUNC4(hdl, EZFS_NOMEM,
			    FUNC0(TEXT_DOMAIN, "cannot import '%s'"),
			    newname));
		}
	}

	ret = FUNC5(hdl, config, newname, props,
	    ZFS_IMPORT_NORMAL);
	FUNC3(props);
	return (ret);
}