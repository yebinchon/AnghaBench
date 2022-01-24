#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  zfs_name; int /*<<< orphan*/ * zfs_hdl; } ;
typedef  TYPE_1__ zfs_handle_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;
typedef  int /*<<< orphan*/  errbuf ;

/* Variables and functions */
 int /*<<< orphan*/  NV_UNIQUE_NAME ; 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 char* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char const*,char const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 

int
FUNC7(zfs_handle_t *zhp, const char *propname, const char *propval)
{
	int ret = -1;
	char errbuf[1024];
	libzfs_handle_t *hdl = zhp->zfs_hdl;
	nvlist_t *nvl = NULL;

	(void) FUNC5(errbuf, sizeof (errbuf),
	    FUNC0(TEXT_DOMAIN, "cannot set property for '%s'"),
	    zhp->zfs_name);

	if (FUNC3(&nvl, NV_UNIQUE_NAME, 0) != 0 ||
	    FUNC2(nvl, propname, propval) != 0) {
		(void) FUNC1(hdl);
		goto error;
	}

	ret = FUNC6(zhp, nvl);

error:
	FUNC4(nvl);
	return (ret);
}