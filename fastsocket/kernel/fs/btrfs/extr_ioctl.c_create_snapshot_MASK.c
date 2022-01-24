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
typedef  int /*<<< orphan*/  u64 ;
struct inode {int /*<<< orphan*/  transid; TYPE_1__* transaction; } ;
struct dentry {TYPE_3__* d_parent; } ;
struct btrfs_trans_handle {int /*<<< orphan*/  transid; TYPE_1__* transaction; } ;
struct btrfs_root {TYPE_2__* fs_info; int /*<<< orphan*/  ref_cows; } ;
struct btrfs_pending_snapshot {int readonly; int error; int /*<<< orphan*/  snap; int /*<<< orphan*/  list; struct btrfs_root* root; struct dentry* dentry; int /*<<< orphan*/  block_rsv; } ;
struct TYPE_6__ {int /*<<< orphan*/  d_inode; } ;
struct TYPE_5__ {int /*<<< orphan*/  extent_root; int /*<<< orphan*/  trans_lock; } ;
struct TYPE_4__ {int /*<<< orphan*/  pending_snapshots; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int FUNC2 (struct inode*) ; 
 int FUNC3 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct inode*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct inode* FUNC6 (int /*<<< orphan*/ ,struct dentry*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (struct inode*,struct btrfs_pending_snapshot*) ; 
 struct inode* FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct btrfs_pending_snapshot*) ; 
 struct btrfs_pending_snapshot* FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(struct btrfs_root *root, struct dentry *dentry,
			   char *name, int namelen, u64 *async_transid,
			   bool readonly)
{
	struct inode *inode;
	struct btrfs_pending_snapshot *pending_snapshot;
	struct btrfs_trans_handle *trans;
	int ret;

	if (!root->ref_cows)
		return -EINVAL;

	pending_snapshot = FUNC12(sizeof(*pending_snapshot), GFP_NOFS);
	if (!pending_snapshot)
		return -ENOMEM;

	FUNC5(&pending_snapshot->block_rsv);
	pending_snapshot->dentry = dentry;
	pending_snapshot->root = root;
	pending_snapshot->readonly = readonly;

	trans = FUNC9(root->fs_info->extent_root, 5);
	if (FUNC1(trans)) {
		ret = FUNC2(trans);
		goto fail;
	}

	ret = FUNC8(trans, pending_snapshot);
	FUNC0(ret);

	FUNC14(&root->fs_info->trans_lock);
	FUNC13(&pending_snapshot->list,
		 &trans->transaction->pending_snapshots);
	FUNC15(&root->fs_info->trans_lock);
	if (async_transid) {
		*async_transid = trans->transid;
		ret = FUNC4(trans,
				     root->fs_info->extent_root, 1);
	} else {
		ret = FUNC3(trans,
					       root->fs_info->extent_root);
	}
	FUNC0(ret);

	ret = pending_snapshot->error;
	if (ret)
		goto fail;

	ret = FUNC7(pending_snapshot->snap);
	if (ret)
		goto fail;

	inode = FUNC6(dentry->d_parent->d_inode, dentry);
	if (FUNC1(inode)) {
		ret = FUNC2(inode);
		goto fail;
	}
	FUNC0(!inode);
	FUNC10(dentry, inode);
	ret = 0;
fail:
	FUNC11(pending_snapshot);
	return ret;
}