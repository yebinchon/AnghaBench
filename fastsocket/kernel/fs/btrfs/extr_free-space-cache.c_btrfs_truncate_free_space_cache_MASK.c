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
typedef  scalar_t__ u64 ;
struct inode {int dummy; } ;
struct btrfs_trans_handle {struct btrfs_block_rsv* block_rsv; } ;
struct btrfs_root {TYPE_1__* fs_info; } ;
struct btrfs_path {int dummy; } ;
struct btrfs_block_rsv {scalar_t__ reserved; int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_2__ {struct btrfs_block_rsv global_block_rsv; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_EXTENT_DATA_KEY ; 
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (struct btrfs_trans_handle*,struct btrfs_root*,int) ; 
 scalar_t__ FUNC1 (struct btrfs_root*,int) ; 
 scalar_t__ FUNC2 (struct btrfs_root*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct btrfs_trans_handle*,struct btrfs_root*,struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct btrfs_trans_handle*,struct btrfs_root*,struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC10(struct btrfs_root *root,
				    struct btrfs_trans_handle *trans,
				    struct btrfs_path *path,
				    struct inode *inode)
{
	struct btrfs_block_rsv *rsv;
	u64 needed_bytes;
	loff_t oldsize;
	int ret = 0;

	rsv = trans->block_rsv;
	trans->block_rsv = &root->fs_info->global_block_rsv;

	/* 1 for slack space, 1 for updating the inode */
	needed_bytes = FUNC2(root, 1) +
		FUNC1(root, 1);

	FUNC7(&trans->block_rsv->lock);
	if (trans->block_rsv->reserved < needed_bytes) {
		FUNC8(&trans->block_rsv->lock);
		trans->block_rsv = rsv;
		return -ENOSPC;
	}
	FUNC8(&trans->block_rsv->lock);

	oldsize = FUNC6(inode);
	FUNC3(inode, 0);
	FUNC9(inode, oldsize, 0);

	/*
	 * We don't need an orphan item because truncating the free space cache
	 * will never be split across transactions.
	 */
	ret = FUNC4(trans, root, inode,
					 0, BTRFS_EXTENT_DATA_KEY);

	if (ret) {
		trans->block_rsv = rsv;
		FUNC0(trans, root, ret);
		return ret;
	}

	ret = FUNC5(trans, root, inode);
	if (ret)
		FUNC0(trans, root, ret);
	trans->block_rsv = rsv;

	return ret;
}