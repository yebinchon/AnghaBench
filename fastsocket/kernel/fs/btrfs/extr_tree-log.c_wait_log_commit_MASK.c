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
struct btrfs_trans_handle {scalar_t__ transid; } ;
struct btrfs_root {unsigned long log_transid; int /*<<< orphan*/  log_mutex; int /*<<< orphan*/ * log_commit_wait; int /*<<< orphan*/ * log_commit; TYPE_1__* fs_info; } ;
struct TYPE_2__ {scalar_t__ last_trans_log_full_commit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static int FUNC7(struct btrfs_trans_handle *trans,
			   struct btrfs_root *root, unsigned long transid)
{
	FUNC0(wait);
	int index = transid % 2;

	/*
	 * we only allow two pending log transactions at a time,
	 * so we know that if ours is more than 2 older than the
	 * current transaction, we're done
	 */
	do {
		FUNC5(&root->log_commit_wait[index],
				&wait, TASK_UNINTERRUPTIBLE);
		FUNC4(&root->log_mutex);

		if (root->fs_info->last_trans_log_full_commit !=
		    trans->transid && root->log_transid < transid + 2 &&
		    FUNC1(&root->log_commit[index]))
			FUNC6();

		FUNC2(&root->log_commit_wait[index], &wait);
		FUNC3(&root->log_mutex);
	} while (root->fs_info->last_trans_log_full_commit !=
		 trans->transid && root->log_transid < transid + 2 &&
		 FUNC1(&root->log_commit[index]));
	return 0;
}