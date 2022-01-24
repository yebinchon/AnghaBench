#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ u64 ;
typedef  scalar_t__ u32 ;
struct super_block {int dummy; } ;
struct inode {scalar_t__ i_generation; int /*<<< orphan*/ * d_op; int /*<<< orphan*/  root_item; } ;
struct dentry {scalar_t__ i_generation; int /*<<< orphan*/ * d_op; int /*<<< orphan*/  root_item; } ;
struct btrfs_root {scalar_t__ i_generation; int /*<<< orphan*/ * d_op; int /*<<< orphan*/  root_item; } ;
struct btrfs_key {scalar_t__ offset; scalar_t__ objectid; } ;
struct btrfs_fs_info {int /*<<< orphan*/  subvol_srcu; } ;

/* Variables and functions */
 scalar_t__ BTRFS_FIRST_FREE_OBJECTID ; 
 int /*<<< orphan*/  BTRFS_INODE_ITEM_KEY ; 
 int /*<<< orphan*/  BTRFS_ROOT_ITEM_KEY ; 
 int ENOENT ; 
 struct inode* FUNC0 (int) ; 
 int ESTALE ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  btrfs_dentry_operations ; 
 struct inode* FUNC3 (struct super_block*,struct btrfs_key*,struct inode*,int /*<<< orphan*/ *) ; 
 struct inode* FUNC4 (struct btrfs_fs_info*,struct btrfs_key*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 struct btrfs_fs_info* FUNC6 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC7 (struct btrfs_key*,int /*<<< orphan*/ ) ; 
 struct inode* FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static struct dentry *FUNC12(struct super_block *sb, u64 objectid,
				       u64 root_objectid, u32 generation,
				       int check_generation)
{
	struct btrfs_fs_info *fs_info = FUNC6(sb);
	struct btrfs_root *root;
	struct dentry *dentry;
	struct inode *inode;
	struct btrfs_key key;
	int index;
	int err = 0;

	if (objectid < BTRFS_FIRST_FREE_OBJECTID)
		return FUNC0(-ESTALE);

	key.objectid = root_objectid;
	FUNC7(&key, BTRFS_ROOT_ITEM_KEY);
	key.offset = (u64)-1;

	index = FUNC10(&fs_info->subvol_srcu);

	root = FUNC4(fs_info, &key);
	if (FUNC1(root)) {
		err = FUNC2(root);
		goto fail;
	}

	if (FUNC5(&root->root_item) == 0) {
		err = -ENOENT;
		goto fail;
	}

	key.objectid = objectid;
	FUNC7(&key, BTRFS_INODE_ITEM_KEY);
	key.offset = 0;

	inode = FUNC3(sb, &key, root, NULL);
	if (FUNC1(inode)) {
		err = FUNC2(inode);
		goto fail;
	}

	FUNC11(&fs_info->subvol_srcu, index);

	if (check_generation && generation != inode->i_generation) {
		FUNC9(inode);
		return FUNC0(-ESTALE);
	}

	dentry = FUNC8(inode);
	if (!FUNC1(dentry))
		dentry->d_op = &btrfs_dentry_operations;
	return dentry;
fail:
	FUNC11(&fs_info->subvol_srcu, index);
	return FUNC0(err);
}