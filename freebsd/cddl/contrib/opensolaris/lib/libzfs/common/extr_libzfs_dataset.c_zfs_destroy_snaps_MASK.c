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
struct TYPE_4__ {int /*<<< orphan*/  zfs_hdl; int /*<<< orphan*/  zfs_name; } ;
typedef  TYPE_1__ zfs_handle_t ;
struct destroydata {char* snapname; int /*<<< orphan*/  nvl; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  NV_UNIQUE_NAME ; 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct destroydata*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

int
FUNC9(zfs_handle_t *zhp, char *snapname, boolean_t defer)
{
	int ret;
	struct destroydata dd = { 0 };

	dd.snapname = snapname;
	FUNC4(FUNC1(&dd.nvl, NV_UNIQUE_NAME, 0) == 0);
	(void) FUNC5(FUNC7(zhp), &dd);

	if (FUNC2(dd.nvl)) {
		ret = FUNC8(zhp->zfs_hdl, ENOENT,
		    FUNC0(TEXT_DOMAIN, "cannot destroy '%s@%s'"),
		    zhp->zfs_name, snapname);
	} else {
		ret = FUNC6(zhp->zfs_hdl, dd.nvl, defer);
	}
	FUNC3(dd.nvl);
	return (ret);
}