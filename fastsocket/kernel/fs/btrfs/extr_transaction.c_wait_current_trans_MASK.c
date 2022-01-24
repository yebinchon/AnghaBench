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
struct btrfs_transaction {scalar_t__ blocked; int /*<<< orphan*/  use_count; } ;
struct btrfs_root {TYPE_1__* fs_info; } ;
struct TYPE_2__ {int /*<<< orphan*/  trans_lock; int /*<<< orphan*/  transaction_wait; struct btrfs_transaction* running_transaction; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_transaction*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct btrfs_root *root)
{
	struct btrfs_transaction *cur_trans;

	FUNC2(&root->fs_info->trans_lock);
	cur_trans = root->fs_info->running_transaction;
	if (cur_trans && cur_trans->blocked) {
		FUNC0(&cur_trans->use_count);
		FUNC3(&root->fs_info->trans_lock);

		FUNC4(root->fs_info->transaction_wait,
			   !cur_trans->blocked);
		FUNC1(cur_trans);
	} else {
		FUNC3(&root->fs_info->trans_lock);
	}
}