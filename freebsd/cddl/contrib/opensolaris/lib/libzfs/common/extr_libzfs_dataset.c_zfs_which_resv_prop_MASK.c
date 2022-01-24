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
typedef  int /*<<< orphan*/  zfs_prop_t ;
typedef  int /*<<< orphan*/  zfs_handle_t ;

/* Variables and functions */
 int SPA_VERSION_REFRESERVATION ; 
 int /*<<< orphan*/  ZFS_PROP_REFRESERVATION ; 
 int /*<<< orphan*/  ZFS_PROP_RESERVATION ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static int
FUNC1(zfs_handle_t *zhp, zfs_prop_t *resv_prop)
{
	int spa_version;

	if (FUNC0(zhp, &spa_version) < 0)
		return (-1);

	if (spa_version >= SPA_VERSION_REFRESERVATION)
		*resv_prop = ZFS_PROP_REFRESERVATION;
	else
		*resv_prop = ZFS_PROP_RESERVATION;

	return (0);
}