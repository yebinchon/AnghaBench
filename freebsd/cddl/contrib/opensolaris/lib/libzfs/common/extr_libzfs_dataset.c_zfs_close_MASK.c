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
struct TYPE_4__ {int /*<<< orphan*/  zfs_recvd_props; int /*<<< orphan*/  zfs_user_props; int /*<<< orphan*/  zfs_props; struct TYPE_4__* zfs_mntopts; } ;
typedef  TYPE_1__ zfs_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void
FUNC2(zfs_handle_t *zhp)
{
	if (zhp->zfs_mntopts)
		FUNC0(zhp->zfs_mntopts);
	FUNC1(zhp->zfs_props);
	FUNC1(zhp->zfs_user_props);
	FUNC1(zhp->zfs_recvd_props);
	FUNC0(zhp);
}