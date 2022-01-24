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
struct TYPE_3__ {int num_heads_ready; } ;
struct btrfs_transaction {int blocked; int /*<<< orphan*/  writer_wait; int /*<<< orphan*/  num_writers; int /*<<< orphan*/  in_commit; TYPE_1__ delayed_refs; } ;
struct btrfs_trans_handle {unsigned long delayed_ref_updates; scalar_t__ aborted; scalar_t__ use_count; struct btrfs_transaction* transaction; int /*<<< orphan*/ * block_rsv; int /*<<< orphan*/ * orig_rsv; } ;
struct btrfs_root {struct btrfs_fs_info* fs_info; } ;
struct btrfs_fs_info {int fs_state; struct btrfs_transaction* running_transaction; int /*<<< orphan*/  transaction_kthread; int /*<<< orphan*/  open_ioctl_trans; int /*<<< orphan*/  sb; } ;
struct TYPE_4__ {struct btrfs_trans_handle* journal_info; } ;

/* Variables and functions */
 int BTRFS_SUPER_FLAG_ERROR ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct btrfs_trans_handle*,struct btrfs_root*) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_root*) ; 
 int /*<<< orphan*/  FUNC5 (struct btrfs_trans_handle*,struct btrfs_root*,unsigned long) ; 
 int /*<<< orphan*/  btrfs_trans_handle_cachep ; 
 int /*<<< orphan*/  FUNC6 (struct btrfs_trans_handle*,struct btrfs_root*) ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct btrfs_trans_handle*) ; 
 int /*<<< orphan*/  FUNC8 (struct btrfs_trans_handle*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct btrfs_transaction*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct btrfs_trans_handle*,struct btrfs_root*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(struct btrfs_trans_handle *trans,
			  struct btrfs_root *root, int throttle, int lock)
{
	struct btrfs_transaction *cur_trans = trans->transaction;
	struct btrfs_fs_info *info = root->fs_info;
	int count = 0;
	int err = 0;

	if (--trans->use_count) {
		trans->block_rsv = trans->orig_rsv;
		return 0;
	}

	FUNC6(trans, root);
	trans->block_rsv = NULL;
	while (count < 2) {
		unsigned long cur = trans->delayed_ref_updates;
		trans->delayed_ref_updates = 0;
		if (cur &&
		    trans->transaction->delayed_refs.num_heads_ready > 64) {
			trans->delayed_ref_updates = 0;
			FUNC5(trans, root, cur);
		} else {
			break;
		}
		count++;
	}

	FUNC10(root->fs_info->sb);

	if (lock && !FUNC2(&root->fs_info->open_ioctl_trans) &&
	    FUNC11(trans, root)) {
		trans->transaction->blocked = 1;
		FUNC13();
	}

	if (lock && cur_trans->blocked && !cur_trans->in_commit) {
		if (throttle) {
			/*
			 * We may race with somebody else here so end up having
			 * to call end_transaction on ourselves again, so inc
			 * our use_count.
			 */
			trans->use_count++;
			return FUNC3(trans, root);
		} else {
			FUNC16(info->transaction_kthread);
		}
	}

	FUNC0(cur_trans != info->running_transaction);
	FUNC0(FUNC2(&cur_trans->num_writers) < 1);
	FUNC1(&cur_trans->num_writers);

	FUNC12();
	if (FUNC14(&cur_trans->writer_wait))
		FUNC15(&cur_trans->writer_wait);
	FUNC9(cur_trans);

	if (current->journal_info == trans)
		current->journal_info = NULL;

	if (throttle)
		FUNC4(root);

	if (trans->aborted ||
	    root->fs_info->fs_state & BTRFS_SUPER_FLAG_ERROR) {
		err = -EIO;
	}

	FUNC8(trans, 0, sizeof(*trans));
	FUNC7(btrfs_trans_handle_cachep, trans);
	return err;
}