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
struct btrfs_transaction {int /*<<< orphan*/  use_count; } ;
struct btrfs_trans_handle {struct btrfs_transaction* transaction; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_async_commit {int /*<<< orphan*/  work; int /*<<< orphan*/  newtrans; struct btrfs_root* root; } ;
struct TYPE_2__ {struct btrfs_trans_handle* journal_info; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_trans_handle*,struct btrfs_root*) ; 
 int /*<<< orphan*/  FUNC5 (struct btrfs_root*) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  do_async_commit ; 
 int /*<<< orphan*/  FUNC6 (struct btrfs_async_commit*) ; 
 struct btrfs_async_commit* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct btrfs_transaction*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct btrfs_root*,struct btrfs_transaction*) ; 
 int /*<<< orphan*/  FUNC11 (struct btrfs_root*,struct btrfs_transaction*) ; 

int FUNC12(struct btrfs_trans_handle *trans,
				   struct btrfs_root *root,
				   int wait_for_unblock)
{
	struct btrfs_async_commit *ac;
	struct btrfs_transaction *cur_trans;

	ac = FUNC7(sizeof(*ac), GFP_NOFS);
	if (!ac)
		return -ENOMEM;

	FUNC0(&ac->work, do_async_commit);
	ac->root = root;
	ac->newtrans = FUNC5(root);
	if (FUNC1(ac->newtrans)) {
		int err = FUNC2(ac->newtrans);
		FUNC6(ac);
		return err;
	}

	/* take transaction reference */
	cur_trans = trans->transaction;
	FUNC3(&cur_trans->use_count);

	FUNC4(trans, root);
	FUNC9(&ac->work, 0);

	/* wait for transaction to start and unblock */
	if (wait_for_unblock)
		FUNC11(root, cur_trans);
	else
		FUNC10(root, cur_trans);

	if (current->journal_info == trans)
		current->journal_info = NULL;

	FUNC8(cur_trans);
	return 0;
}