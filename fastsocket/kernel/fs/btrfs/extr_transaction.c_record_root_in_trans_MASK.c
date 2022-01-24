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
struct btrfs_trans_handle {scalar_t__ transid; } ;
struct TYPE_3__ {scalar_t__ objectid; } ;
struct btrfs_root {scalar_t__ last_trans; scalar_t__ commit_root; scalar_t__ node; int in_trans_setup; TYPE_2__* fs_info; TYPE_1__ root_key; scalar_t__ ref_cows; } ;
struct TYPE_4__ {int /*<<< orphan*/  fs_roots_radix_lock; int /*<<< orphan*/  fs_roots_radix; struct btrfs_root* extent_root; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_ROOT_TRANS_TAG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_trans_handle*,struct btrfs_root*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct btrfs_trans_handle *trans,
			       struct btrfs_root *root)
{
	if (root->ref_cows && root->last_trans < trans->transid) {
		FUNC0(root == root->fs_info->extent_root);
		FUNC0(root->commit_root != root->node);

		/*
		 * see below for in_trans_setup usage rules
		 * we have the reloc mutex held now, so there
		 * is only one writer in this function
		 */
		root->in_trans_setup = 1;

		/* make sure readers find in_trans_setup before
		 * they find our root->last_trans update
		 */
		FUNC3();

		FUNC4(&root->fs_info->fs_roots_radix_lock);
		if (root->last_trans == trans->transid) {
			FUNC5(&root->fs_info->fs_roots_radix_lock);
			return 0;
		}
		FUNC2(&root->fs_info->fs_roots_radix,
			   (unsigned long)root->root_key.objectid,
			   BTRFS_ROOT_TRANS_TAG);
		FUNC5(&root->fs_info->fs_roots_radix_lock);
		root->last_trans = trans->transid;

		/* this is pretty tricky.  We don't want to
		 * take the relocation lock in btrfs_record_root_in_trans
		 * unless we're really doing the first setup for this root in
		 * this transaction.
		 *
		 * Normally we'd use root->last_trans as a flag to decide
		 * if we want to take the expensive mutex.
		 *
		 * But, we have to set root->last_trans before we
		 * init the relocation root, otherwise, we trip over warnings
		 * in ctree.c.  The solution used here is to flag ourselves
		 * with root->in_trans_setup.  When this is 1, we're still
		 * fixing up the reloc trees and everyone must wait.
		 *
		 * When this is zero, they can trust root->last_trans and fly
		 * through btrfs_record_root_in_trans without having to take the
		 * lock.  smp_wmb() makes sure that all the writes above are
		 * done before we pop in the zero below
		 */
		FUNC1(trans, root);
		FUNC3();
		root->in_trans_setup = 0;
	}
	return 0;
}