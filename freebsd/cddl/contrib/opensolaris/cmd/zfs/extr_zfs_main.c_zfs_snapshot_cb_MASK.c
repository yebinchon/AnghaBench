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
struct TYPE_3__ {scalar_t__ sd_recursive; int /*<<< orphan*/  sd_nvl; int /*<<< orphan*/  sd_snapname; } ;
typedef  TYPE_1__ snap_cbdata_t ;

/* Variables and functions */
 int /*<<< orphan*/  ZFS_PROP_INCONSISTENT ; 
 int FUNC0 (char**,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int (*) (int /*<<< orphan*/ *,void*),TYPE_1__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(zfs_handle_t *zhp, void *arg)
{
	snap_cbdata_t *sd = arg;
	char *name;
	int rv = 0;
	int error;

	if (sd->sd_recursive &&
	    FUNC7(zhp, ZFS_PROP_INCONSISTENT) != 0) {
		FUNC4(zhp);
		return (0);
	}

	error = FUNC0(&name, "%d@%d", FUNC5(zhp), sd->sd_snapname);
	if (error == -1)
		FUNC3();
	FUNC1(sd->sd_nvl, name);
	FUNC2(name);

	if (sd->sd_recursive)
		rv = FUNC6(zhp, zfs_snapshot_cb, sd);
	FUNC4(zhp);
	return (rv);
}