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
struct btrfs_transaction {int /*<<< orphan*/  list; } ;
struct btrfs_trans_handle {int use_count; struct btrfs_transaction* transaction; } ;
struct btrfs_root {TYPE_1__* fs_info; } ;
struct TYPE_4__ {struct btrfs_trans_handle* journal_info; } ;
struct TYPE_3__ {int /*<<< orphan*/  trans_lock; scalar_t__ trans_no_join; struct btrfs_transaction* running_transaction; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_trans_handle*,struct btrfs_root*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct btrfs_transaction*,struct btrfs_root*) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_root*) ; 
 int /*<<< orphan*/  btrfs_trans_handle_cachep ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct btrfs_trans_handle*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct btrfs_transaction*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct btrfs_root*) ; 

__attribute__((used)) static void FUNC10(struct btrfs_trans_handle *trans,
				struct btrfs_root *root, int err)
{
	struct btrfs_transaction *cur_trans = trans->transaction;

	FUNC0(trans->use_count > 1);

	FUNC1(trans, root, err);

	FUNC7(&root->fs_info->trans_lock);
	FUNC5(&cur_trans->list);
	if (cur_trans == root->fs_info->running_transaction) {
		root->fs_info->running_transaction = NULL;
		root->fs_info->trans_no_join = 0;
	}
	FUNC8(&root->fs_info->trans_lock);

	FUNC2(trans->transaction, root);

	FUNC6(cur_trans);
	FUNC6(cur_trans);

	FUNC9(root);

	FUNC3(root);

	if (current->journal_info == trans)
		current->journal_info = NULL;

	FUNC4(btrfs_trans_handle_cachep, trans);
}