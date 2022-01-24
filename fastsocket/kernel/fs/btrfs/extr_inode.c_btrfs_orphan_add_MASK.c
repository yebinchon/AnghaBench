#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
struct btrfs_trans_handle {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  objectid; } ;
struct btrfs_root {TYPE_2__ root_key; TYPE_1__* fs_info; int /*<<< orphan*/  orphan_lock; int /*<<< orphan*/  orphan_inodes; int /*<<< orphan*/  orphan_item_inserted; struct btrfs_block_rsv* orphan_block_rsv; } ;
struct btrfs_block_rsv {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  runtime_flags; struct btrfs_root* root; } ;
struct TYPE_4__ {struct btrfs_root* tree_root; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  BTRFS_INODE_HAS_ORPHAN_ITEM ; 
 int /*<<< orphan*/  BTRFS_INODE_ORPHAN_META_RESERVED ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int EEXIST ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_trans_handle*,struct btrfs_root*,int) ; 
 struct btrfs_block_rsv* FUNC4 (struct btrfs_root*) ; 
 int /*<<< orphan*/  FUNC5 (struct btrfs_root*,struct btrfs_block_rsv*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int FUNC7 (struct btrfs_trans_handle*,struct btrfs_root*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct btrfs_trans_handle*,struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 

int FUNC14(struct btrfs_trans_handle *trans, struct inode *inode)
{
	struct btrfs_root *root = FUNC0(inode)->root;
	struct btrfs_block_rsv *block_rsv = NULL;
	int reserve = 0;
	int insert = 0;
	int ret;

	if (!root->orphan_block_rsv) {
		block_rsv = FUNC4(root);
		if (!block_rsv)
			return -ENOMEM;
	}

	FUNC10(&root->orphan_lock);
	if (!root->orphan_block_rsv) {
		root->orphan_block_rsv = block_rsv;
	} else if (block_rsv) {
		FUNC5(root, block_rsv);
		block_rsv = NULL;
	}

	if (!FUNC12(BTRFS_INODE_HAS_ORPHAN_ITEM,
			      &FUNC0(inode)->runtime_flags)) {
#if 0
		/*
		 * For proper ENOSPC handling, we should do orphan
		 * cleanup when mounting. But this introduces backward
		 * compatibility issue.
		 */
		if (!xchg(&root->orphan_item_inserted, 1))
			insert = 2;
		else
			insert = 1;
#endif
		insert = 1;
		FUNC2(&root->orphan_inodes);
	}

	if (!FUNC12(BTRFS_INODE_ORPHAN_META_RESERVED,
			      &FUNC0(inode)->runtime_flags))
		reserve = 1;
	FUNC11(&root->orphan_lock);

	/* grab metadata reservation from transaction handle */
	if (reserve) {
		ret = FUNC8(trans, inode);
		FUNC1(ret); /* -ENOSPC in reservation; Logic error? JDM */
	}

	/* insert an orphan item to track this unlinked/truncated file */
	if (insert >= 1) {
		ret = FUNC7(trans, root, FUNC6(inode));
		if (ret && ret != -EEXIST) {
			FUNC9(BTRFS_INODE_HAS_ORPHAN_ITEM,
				  &FUNC0(inode)->runtime_flags);
			FUNC3(trans, root, ret);
			return ret;
		}
		ret = 0;
	}

	/* insert an orphan item to track subvolume contains orphan files */
	if (insert >= 2) {
		ret = FUNC7(trans, root->fs_info->tree_root,
					       root->root_key.objectid);
		if (ret && ret != -EEXIST) {
			FUNC3(trans, root, ret);
			return ret;
		}
	}
	return 0;
}