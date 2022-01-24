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
struct TYPE_3__ {int /*<<< orphan*/  zd_name; } ;
typedef  TYPE_1__ ztest_ds_t ;
typedef  int /*<<< orphan*/  zfs_prop_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  proplist ;

/* Variables and functions */
 int /*<<< orphan*/  RW_READER ; 
 int /*<<< orphan*/  ZFS_PROP_CHECKSUM ; 
 int /*<<< orphan*/  ZFS_PROP_COMPRESSION ; 
 int /*<<< orphan*/  ZFS_PROP_COPIES ; 
 int /*<<< orphan*/  ZFS_PROP_DEDUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ztest_name_lock ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void
FUNC5(ztest_ds_t *zd, uint64_t id)
{
	zfs_prop_t proplist[] = {
		ZFS_PROP_CHECKSUM,
		ZFS_PROP_COMPRESSION,
		ZFS_PROP_COPIES,
		ZFS_PROP_DEDUP
	};

	FUNC0(&ztest_name_lock, RW_READER);

	for (int p = 0; p < sizeof (proplist) / sizeof (proplist[0]); p++)
		(void) FUNC2(zd->zd_name, proplist[p],
		    FUNC4(proplist[p]), (int)FUNC3(2));

	FUNC1(&ztest_name_lock);
}