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
struct btrfs_root {int /*<<< orphan*/  log_writer_wait; int /*<<< orphan*/  log_mutex; int /*<<< orphan*/  log_writers; TYPE_1__* fs_info; } ;
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

__attribute__((used)) static void FUNC7(struct btrfs_trans_handle *trans,
			    struct btrfs_root *root)
{
	FUNC0(wait);
	while (root->fs_info->last_trans_log_full_commit !=
	       trans->transid && FUNC1(&root->log_writers)) {
		FUNC5(&root->log_writer_wait,
				&wait, TASK_UNINTERRUPTIBLE);
		FUNC4(&root->log_mutex);
		if (root->fs_info->last_trans_log_full_commit !=
		    trans->transid && FUNC1(&root->log_writers))
			FUNC6();
		FUNC3(&root->log_mutex);
		FUNC2(&root->log_writer_wait, &wait);
	}
}