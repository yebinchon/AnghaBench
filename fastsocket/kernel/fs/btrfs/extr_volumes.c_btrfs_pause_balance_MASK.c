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
struct btrfs_fs_info {int /*<<< orphan*/  balance_mutex; int /*<<< orphan*/  balance_pause_req; int /*<<< orphan*/  balance_running; int /*<<< orphan*/  balance_wait_q; int /*<<< orphan*/  balance_ctl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int ENOTCONN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 

int FUNC7(struct btrfs_fs_info *fs_info)
{
	int ret = 0;

	FUNC4(&fs_info->balance_mutex);
	if (!fs_info->balance_ctl) {
		FUNC5(&fs_info->balance_mutex);
		return -ENOTCONN;
	}

	if (FUNC3(&fs_info->balance_running)) {
		FUNC2(&fs_info->balance_pause_req);
		FUNC5(&fs_info->balance_mutex);

		FUNC6(fs_info->balance_wait_q,
			   FUNC3(&fs_info->balance_running) == 0);

		FUNC4(&fs_info->balance_mutex);
		/* we are good with balance_ctl ripped off from under us */
		FUNC0(FUNC3(&fs_info->balance_running));
		FUNC1(&fs_info->balance_pause_req);
	} else {
		ret = -ENOTCONN;
	}

	FUNC5(&fs_info->balance_mutex);
	return ret;
}