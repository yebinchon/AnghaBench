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
struct btrfs_balance_control {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_balance_control*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct btrfs_fs_info *fs_info)
{
	struct btrfs_balance_control *bctl = fs_info->balance_ctl;

	FUNC0(!fs_info->balance_ctl);

	FUNC2(&fs_info->balance_lock);
	fs_info->balance_ctl = NULL;
	FUNC3(&fs_info->balance_lock);

	FUNC1(bctl);
}