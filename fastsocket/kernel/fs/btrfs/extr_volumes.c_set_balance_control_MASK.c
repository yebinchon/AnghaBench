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
struct btrfs_fs_info {int /*<<< orphan*/  balance_lock; struct btrfs_balance_control* balance_ctl; } ;
struct btrfs_balance_control {struct btrfs_fs_info* fs_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct btrfs_balance_control*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct btrfs_balance_control *bctl)
{
	struct btrfs_fs_info *fs_info = bctl->fs_info;

	FUNC0(fs_info->balance_ctl);

	FUNC1(&fs_info->balance_lock);
	fs_info->balance_ctl = bctl;
	FUNC2(&fs_info->balance_lock);
}