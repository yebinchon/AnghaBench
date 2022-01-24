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
struct TYPE_3__ {char* sd_snapname; int /*<<< orphan*/  sd_nvl; } ;
typedef  TYPE_1__ snapdata_t ;
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 int ZFS_MAX_DATASET_NAME_LEN ; 
 int /*<<< orphan*/  ZFS_PROP_INCONSISTENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int (*) (int /*<<< orphan*/ *,void*),TYPE_1__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(zfs_handle_t *zhp, void *arg)
{
	snapdata_t *sd = arg;
	char name[ZFS_MAX_DATASET_NAME_LEN];
	int rv = 0;

	if (FUNC5(zhp, ZFS_PROP_INCONSISTENT) == 0) {
		(void) FUNC1(name, sizeof (name),
		    "%s@%s", FUNC3(zhp), sd->sd_snapname);

		FUNC0(sd->sd_nvl, name);

		rv = FUNC4(zhp, zfs_snapshot_cb, sd);
	}
	FUNC2(zhp);

	return (rv);
}