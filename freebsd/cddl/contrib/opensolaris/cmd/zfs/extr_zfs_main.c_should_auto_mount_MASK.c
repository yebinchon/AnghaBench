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
typedef  int /*<<< orphan*/  zfs_handle_t ;
typedef  int boolean_t ;

/* Variables and functions */
 int B_FALSE ; 
 scalar_t__ ZFS_CANMOUNT_ON ; 
 int /*<<< orphan*/  ZFS_PROP_CANMOUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static boolean_t
FUNC3(zfs_handle_t *zhp)
{
	if (!FUNC2(ZFS_PROP_CANMOUNT, FUNC0(zhp)))
		return (B_FALSE);
	return (FUNC1(zhp, ZFS_PROP_CANMOUNT) == ZFS_CANMOUNT_ON);
}