#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct btrfs_fs_info {int /*<<< orphan*/  trans_lock; TYPE_1__* running_transaction; } ;
struct TYPE_2__ {int blocked; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(struct btrfs_fs_info *info)
{
	int ret = 0;
	FUNC0(&info->trans_lock);
	if (info->running_transaction)
		ret = info->running_transaction->blocked;
	FUNC1(&info->trans_lock);
	return ret;
}