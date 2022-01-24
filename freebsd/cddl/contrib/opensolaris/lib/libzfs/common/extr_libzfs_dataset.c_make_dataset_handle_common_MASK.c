#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ dds_type; scalar_t__ dds_is_snapshot; } ;
struct TYPE_7__ {int /*<<< orphan*/ * zpool_hdl; void* zfs_type; TYPE_1__ zfs_dmustats; void* zfs_head_type; } ;
typedef  TYPE_2__ zfs_handle_t ;
typedef  int /*<<< orphan*/  zfs_cmd_t ;

/* Variables and functions */
 scalar_t__ DMU_OST_ZFS ; 
 scalar_t__ DMU_OST_ZVOL ; 
 void* ZFS_TYPE_FILESYSTEM ; 
 void* ZFS_TYPE_SNAPSHOT ; 
 void* ZFS_TYPE_VOLUME ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_2__*) ; 

__attribute__((used)) static int
FUNC3(zfs_handle_t *zhp, zfs_cmd_t *zc)
{
	if (FUNC1(zhp, zc) != 0)
		return (-1);

	/*
	 * We've managed to open the dataset and gather statistics.  Determine
	 * the high-level type.
	 */
	if (zhp->zfs_dmustats.dds_type == DMU_OST_ZVOL)
		zhp->zfs_head_type = ZFS_TYPE_VOLUME;
	else if (zhp->zfs_dmustats.dds_type == DMU_OST_ZFS)
		zhp->zfs_head_type = ZFS_TYPE_FILESYSTEM;
	else
		FUNC0();

	if (zhp->zfs_dmustats.dds_is_snapshot)
		zhp->zfs_type = ZFS_TYPE_SNAPSHOT;
	else if (zhp->zfs_dmustats.dds_type == DMU_OST_ZVOL)
		zhp->zfs_type = ZFS_TYPE_VOLUME;
	else if (zhp->zfs_dmustats.dds_type == DMU_OST_ZFS)
		zhp->zfs_type = ZFS_TYPE_FILESYSTEM;
	else
		FUNC0();	/* we should never see any other types */

	if ((zhp->zpool_hdl = FUNC2(zhp)) == NULL)
		return (-1);

	return (0);
}