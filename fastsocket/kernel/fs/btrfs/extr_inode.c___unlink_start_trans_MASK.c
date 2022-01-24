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
typedef  scalar_t__ u64 ;
struct inode {int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_count; } ;
struct TYPE_4__ {int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;
struct dentry {TYPE_1__ d_name; struct inode* d_inode; } ;
struct btrfs_trans_handle {int /*<<< orphan*/ * block_rsv; int /*<<< orphan*/  bytes_reserved; } ;
struct btrfs_root {TYPE_2__* fs_info; } ;
struct btrfs_path {int skip_locking; int search_commit_root; int /*<<< orphan*/ * nodes; } ;
struct btrfs_inode_ref {int /*<<< orphan*/ * block_rsv; int /*<<< orphan*/  bytes_reserved; } ;
struct btrfs_dir_item {int /*<<< orphan*/ * block_rsv; int /*<<< orphan*/  bytes_reserved; } ;
struct TYPE_6__ {int /*<<< orphan*/  location; struct btrfs_root* root; } ;
struct TYPE_5__ {int /*<<< orphan*/  global_block_rsv; scalar_t__ enospc_unlink; } ;

/* Variables and functions */
 scalar_t__ BTRFS_EMPTY_SUBVOL_DIR_OBJECTID ; 
 TYPE_3__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int ENOENT ; 
 int ENOMEM ; 
 int ENOSPC ; 
 struct btrfs_trans_handle* FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct btrfs_trans_handle*) ; 
 int FUNC4 (struct btrfs_trans_handle*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 struct btrfs_path* FUNC8 () ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct btrfs_trans_handle*,struct btrfs_root*) ; 
 int /*<<< orphan*/  FUNC11 (struct btrfs_path*) ; 
 scalar_t__ FUNC12 (struct inode*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,struct btrfs_trans_handle*) ; 
 struct btrfs_trans_handle* FUNC14 (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct btrfs_trans_handle* FUNC15 (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC16 (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC17 (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct btrfs_trans_handle* FUNC18 (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct btrfs_path*) ; 
 struct btrfs_trans_handle* FUNC20 (struct btrfs_root*,int) ; 
 scalar_t__ FUNC21 (struct btrfs_root*,struct btrfs_path*) ; 
 scalar_t__ FUNC22 (scalar_t__*,int) ; 

__attribute__((used)) static struct btrfs_trans_handle *FUNC23(struct inode *dir,
						       struct dentry *dentry)
{
	struct btrfs_trans_handle *trans;
	struct btrfs_root *root = FUNC0(dir)->root;
	struct btrfs_path *path;
	struct btrfs_inode_ref *ref;
	struct btrfs_dir_item *di;
	struct inode *inode = dentry->d_inode;
	u64 index;
	int check_link = 1;
	int err = -ENOSPC;
	int ret;
	u64 ino = FUNC12(inode);
	u64 dir_ino = FUNC12(dir);

	/*
	 * 1 for the possible orphan item
	 * 1 for the dir item
	 * 1 for the dir index
	 * 1 for the inode ref
	 * 1 for the inode ref in the tree log
	 * 2 for the dir entries in the log
	 * 1 for the inode
	 */
	trans = FUNC20(root, 8);
	if (!FUNC3(trans) || FUNC4(trans) != -ENOSPC)
		return trans;

	if (ino == BTRFS_EMPTY_SUBVOL_DIR_OBJECTID)
		return FUNC2(-ENOSPC);

	/* check if there is someone else holds reference */
	if (FUNC5(inode->i_mode) && FUNC7(&inode->i_count) > 1)
		return FUNC2(-ENOSPC);

	if (FUNC7(&inode->i_count) > 2)
		return FUNC2(-ENOSPC);

	if (FUNC22(&root->fs_info->enospc_unlink, 1))
		return FUNC2(-ENOSPC);

	path = FUNC8();
	if (!path) {
		root->fs_info->enospc_unlink = 0;
		return FUNC2(-ENOMEM);
	}

	/* 1 for the orphan item */
	trans = FUNC20(root, 1);
	if (FUNC3(trans)) {
		FUNC11(path);
		root->fs_info->enospc_unlink = 0;
		return trans;
	}

	path->skip_locking = 1;
	path->search_commit_root = 1;

	ret = FUNC17(trans, root, path,
				&FUNC0(dir)->location, 0);
	if (ret < 0) {
		err = ret;
		goto out;
	}
	if (ret == 0) {
		if (FUNC21(root, path))
			goto out;
	} else {
		check_link = 0;
	}
	FUNC19(path);

	ret = FUNC17(trans, root, path,
				&FUNC0(inode)->location, 0);
	if (ret < 0) {
		err = ret;
		goto out;
	}
	if (ret == 0) {
		if (FUNC21(root, path))
			goto out;
	} else {
		check_link = 0;
	}
	FUNC19(path);

	if (ret == 0 && FUNC6(inode->i_mode)) {
		ret = FUNC16(trans, root, path,
					       ino, (u64)-1, 0);
		if (ret < 0) {
			err = ret;
			goto out;
		}
		FUNC1(ret == 0); /* Corruption */
		if (FUNC21(root, path))
			goto out;
		FUNC19(path);
	}

	if (!check_link) {
		err = 0;
		goto out;
	}

	di = FUNC15(trans, root, path, dir_ino,
				dentry->d_name.name, dentry->d_name.len, 0);
	if (FUNC3(di)) {
		err = FUNC4(di);
		goto out;
	}
	if (di) {
		if (FUNC21(root, path))
			goto out;
	} else {
		err = 0;
		goto out;
	}
	FUNC19(path);

	ref = FUNC18(trans, root, path,
				dentry->d_name.name, dentry->d_name.len,
				ino, dir_ino, 0);
	if (FUNC3(ref)) {
		err = FUNC4(ref);
		goto out;
	}
	FUNC1(!ref); /* Logic error */
	if (FUNC21(root, path))
		goto out;
	index = FUNC13(path->nodes[0], ref);
	FUNC19(path);

	/*
	 * This is a commit root search, if we can lookup inode item and other
	 * relative items in the commit root, it means the transaction of
	 * dir/file creation has been committed, and the dir index item that we
	 * delay to insert has also been inserted into the commit root. So
	 * we needn't worry about the delayed insertion of the dir index item
	 * here.
	 */
	di = FUNC14(trans, root, path, dir_ino, index,
				dentry->d_name.name, dentry->d_name.len, 0);
	if (FUNC3(di)) {
		err = FUNC4(di);
		goto out;
	}
	FUNC1(ret == -ENOENT);
	if (FUNC21(root, path))
		goto out;

	err = 0;
out:
	FUNC11(path);
	/* Migrate the orphan reservation over */
	if (!err)
		err = FUNC9(trans->block_rsv,
				&root->fs_info->global_block_rsv,
				trans->bytes_reserved);

	if (err) {
		FUNC10(trans, root);
		root->fs_info->enospc_unlink = 0;
		return FUNC2(err);
	}

	trans->block_rsv = &root->fs_info->global_block_rsv;
	return trans;
}