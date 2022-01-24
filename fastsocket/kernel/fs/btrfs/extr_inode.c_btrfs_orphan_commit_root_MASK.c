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
struct TYPE_4__ {int /*<<< orphan*/  objectid; } ;
struct btrfs_root {scalar_t__ orphan_cleanup_state; scalar_t__ orphan_item_inserted; TYPE_2__ root_key; TYPE_1__* fs_info; int /*<<< orphan*/  root_item; int /*<<< orphan*/  orphan_lock; struct btrfs_block_rsv* orphan_block_rsv; int /*<<< orphan*/  orphan_inodes; } ;
struct btrfs_block_rsv {scalar_t__ size; } ;
struct TYPE_3__ {int /*<<< orphan*/  tree_root; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ ORPHAN_CLEANUP_DONE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct btrfs_trans_handle*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_root*,struct btrfs_block_rsv*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct btrfs_trans_handle *trans,
			      struct btrfs_root *root)
{
	struct btrfs_block_rsv *block_rsv;
	int ret;

	if (FUNC2(&root->orphan_inodes) ||
	    root->orphan_cleanup_state != ORPHAN_CLEANUP_DONE)
		return;

	FUNC6(&root->orphan_lock);
	if (FUNC2(&root->orphan_inodes)) {
		FUNC7(&root->orphan_lock);
		return;
	}

	if (root->orphan_cleanup_state != ORPHAN_CLEANUP_DONE) {
		FUNC7(&root->orphan_lock);
		return;
	}

	block_rsv = root->orphan_block_rsv;
	root->orphan_block_rsv = NULL;
	FUNC7(&root->orphan_lock);

	if (root->orphan_item_inserted &&
	    FUNC5(&root->root_item) > 0) {
		ret = FUNC3(trans, root->fs_info->tree_root,
					    root->root_key.objectid);
		FUNC0(ret);
		root->orphan_item_inserted = 0;
	}

	if (block_rsv) {
		FUNC1(block_rsv->size > 0);
		FUNC4(root, block_rsv);
	}
}