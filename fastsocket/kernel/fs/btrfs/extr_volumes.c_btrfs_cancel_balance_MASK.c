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
struct btrfs_fs_info {int /*<<< orphan*/  balance_mutex; int /*<<< orphan*/  balance_cancel_req; int /*<<< orphan*/  balance_running; scalar_t__ balance_ctl; int /*<<< orphan*/  volume_mutex; int /*<<< orphan*/  balance_wait_q; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOTCONN ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_fs_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 

int FUNC8(struct btrfs_fs_info *fs_info)
{
	FUNC5(&fs_info->balance_mutex);
	if (!fs_info->balance_ctl) {
		FUNC6(&fs_info->balance_mutex);
		return -ENOTCONN;
	}

	FUNC3(&fs_info->balance_cancel_req);
	/*
	 * if we are running just wait and return, balance item is
	 * deleted in btrfs_balance in this case
	 */
	if (FUNC4(&fs_info->balance_running)) {
		FUNC6(&fs_info->balance_mutex);
		FUNC7(fs_info->balance_wait_q,
			   FUNC4(&fs_info->balance_running) == 0);
		FUNC5(&fs_info->balance_mutex);
	} else {
		/* __cancel_balance needs volume_mutex */
		FUNC6(&fs_info->balance_mutex);
		FUNC5(&fs_info->volume_mutex);
		FUNC5(&fs_info->balance_mutex);

		if (fs_info->balance_ctl)
			FUNC1(fs_info);

		FUNC6(&fs_info->volume_mutex);
	}

	FUNC0(fs_info->balance_ctl || FUNC4(&fs_info->balance_running));
	FUNC2(&fs_info->balance_cancel_req);
	FUNC6(&fs_info->balance_mutex);
	return 0;
}