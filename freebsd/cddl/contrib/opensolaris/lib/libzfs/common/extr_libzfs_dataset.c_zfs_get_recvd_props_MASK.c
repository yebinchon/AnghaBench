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
struct TYPE_4__ {int /*<<< orphan*/ * zfs_recvd_props; } ;
typedef  TYPE_1__ zfs_handle_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 

nvlist_t *
FUNC1(zfs_handle_t *zhp)
{
	if (zhp->zfs_recvd_props == NULL)
		if (FUNC0(zhp) != 0)
			return (NULL);
	return (zhp->zfs_recvd_props);
}