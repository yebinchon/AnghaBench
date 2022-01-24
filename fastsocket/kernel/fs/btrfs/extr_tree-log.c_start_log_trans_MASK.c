#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {scalar_t__ log_start_pid; int log_multiple_pids; int /*<<< orphan*/  log_mutex; int /*<<< orphan*/  log_writers; int /*<<< orphan*/  log_batch; TYPE_2__* fs_info; scalar_t__ log_root; } ;
struct TYPE_4__ {int /*<<< orphan*/  tree_log_mutex; int /*<<< orphan*/  log_root_tree; } ;
struct TYPE_3__ {scalar_t__ pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct btrfs_trans_handle*,struct btrfs_root*) ; 
 int FUNC2 (struct btrfs_trans_handle*,TYPE_2__*) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct btrfs_trans_handle *trans,
			   struct btrfs_root *root)
{
	int ret;
	int err = 0;

	FUNC3(&root->log_mutex);
	if (root->log_root) {
		if (!root->log_start_pid) {
			root->log_start_pid = current->pid;
			root->log_multiple_pids = false;
		} else if (root->log_start_pid != current->pid) {
			root->log_multiple_pids = true;
		}

		root->log_batch++;
		FUNC0(&root->log_writers);
		FUNC4(&root->log_mutex);
		return 0;
	}
	root->log_multiple_pids = false;
	root->log_start_pid = current->pid;
	FUNC3(&root->fs_info->tree_log_mutex);
	if (!root->fs_info->log_root_tree) {
		ret = FUNC2(trans, root->fs_info);
		if (ret)
			err = ret;
	}
	if (err == 0 && !root->log_root) {
		ret = FUNC1(trans, root);
		if (ret)
			err = ret;
	}
	FUNC4(&root->fs_info->tree_log_mutex);
	root->log_batch++;
	FUNC0(&root->log_writers);
	FUNC4(&root->log_mutex);
	return err;
}