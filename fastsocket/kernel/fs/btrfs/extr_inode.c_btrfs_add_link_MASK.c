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
struct inode {int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; scalar_t__ i_size; } ;
struct btrfs_trans_handle {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  objectid; } ;
struct btrfs_root {TYPE_2__ root_key; TYPE_1__* fs_info; } ;
struct btrfs_key {scalar_t__ objectid; scalar_t__ offset; } ;
typedef  int /*<<< orphan*/  key ;
struct TYPE_6__ {struct btrfs_root* root; } ;
struct TYPE_4__ {int /*<<< orphan*/  tree_root; } ;

/* Variables and functions */
 scalar_t__ BTRFS_FIRST_FREE_OBJECTID ; 
 TYPE_3__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  BTRFS_INODE_ITEM_KEY ; 
 int /*<<< orphan*/  CURRENT_TIME ; 
 int EEXIST ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_trans_handle*,struct btrfs_root*,int) ; 
 int FUNC2 (struct btrfs_trans_handle*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__,scalar_t__,char const*,int) ; 
 int FUNC3 (struct btrfs_trans_handle*,struct btrfs_root*,char const*,int,scalar_t__,scalar_t__,scalar_t__*) ; 
 int FUNC4 (struct btrfs_trans_handle*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__,scalar_t__*,char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,scalar_t__) ; 
 scalar_t__ FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int FUNC8 (struct btrfs_trans_handle*,struct btrfs_root*,char const*,int,struct inode*,struct btrfs_key*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC9 (struct btrfs_trans_handle*,struct btrfs_root*,char const*,int,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct btrfs_key*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct btrfs_trans_handle*,struct btrfs_root*,struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (struct btrfs_key*,TYPE_2__*,int) ; 
 scalar_t__ FUNC14 (int) ; 

int FUNC15(struct btrfs_trans_handle *trans,
		   struct inode *parent_inode, struct inode *inode,
		   const char *name, int name_len, int add_backref, u64 index)
{
	int ret = 0;
	struct btrfs_key key;
	struct btrfs_root *root = FUNC0(parent_inode)->root;
	u64 ino = FUNC6(inode);
	u64 parent_ino = FUNC6(parent_inode);

	if (FUNC14(ino == BTRFS_FIRST_FREE_OBJECTID)) {
		FUNC13(&key, &FUNC0(inode)->root->root_key, sizeof(key));
	} else {
		key.objectid = ino;
		FUNC10(&key, BTRFS_INODE_ITEM_KEY);
		key.offset = 0;
	}

	if (FUNC14(ino == BTRFS_FIRST_FREE_OBJECTID)) {
		ret = FUNC2(trans, root->fs_info->tree_root,
					 key.objectid, root->root_key.objectid,
					 parent_ino, index, name, name_len);
	} else if (add_backref) {
		ret = FUNC9(trans, root, name, name_len, ino,
					     parent_ino, index);
	}

	/* Nothing to clean up yet */
	if (ret)
		return ret;

	ret = FUNC8(trans, root, name, name_len,
				    parent_inode, &key,
				    FUNC7(inode), index);
	if (ret == -EEXIST)
		goto fail_dir_item;
	else if (ret) {
		FUNC1(trans, root, ret);
		return ret;
	}

	FUNC5(parent_inode, parent_inode->i_size +
			   name_len * 2);
	FUNC12(parent_inode);
	parent_inode->i_mtime = parent_inode->i_ctime = CURRENT_TIME;
	ret = FUNC11(trans, root, parent_inode);
	if (ret)
		FUNC1(trans, root, ret);
	return ret;

fail_dir_item:
	if (FUNC14(ino == BTRFS_FIRST_FREE_OBJECTID)) {
		u64 local_index;
		int err;
		err = FUNC4(trans, root->fs_info->tree_root,
				 key.objectid, root->root_key.objectid,
				 parent_ino, &local_index, name, name_len);

	} else if (add_backref) {
		u64 local_index;
		int err;

		err = FUNC3(trans, root, name, name_len,
					  ino, parent_ino, &local_index);
	}
	return ret;
}