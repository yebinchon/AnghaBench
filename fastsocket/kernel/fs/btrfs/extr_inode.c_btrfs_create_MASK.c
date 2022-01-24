#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct nameidata {int dummy; } ;
struct inode {unsigned long blocks_used; TYPE_2__* i_mapping; int /*<<< orphan*/ * i_op; int /*<<< orphan*/ * i_fop; } ;
struct TYPE_6__ {int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;
struct dentry {TYPE_1__ d_name; } ;
struct btrfs_trans_handle {unsigned long blocks_used; TYPE_2__* i_mapping; int /*<<< orphan*/ * i_op; int /*<<< orphan*/ * i_fop; } ;
struct btrfs_root {TYPE_3__* fs_info; } ;
struct TYPE_9__ {int /*<<< orphan*/ * ops; } ;
struct TYPE_10__ {TYPE_4__ io_tree; struct btrfs_root* root; } ;
struct TYPE_8__ {int /*<<< orphan*/  bdi; } ;
struct TYPE_7__ {int /*<<< orphan*/ * backing_dev_info; int /*<<< orphan*/ * a_ops; } ;

/* Variables and functions */
 TYPE_5__* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int FUNC2 (struct inode*) ; 
 int FUNC3 (struct inode*,struct inode*,struct dentry*,struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  btrfs_aops ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_root*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,struct btrfs_root*) ; 
 int /*<<< orphan*/  btrfs_extent_io_ops ; 
 int /*<<< orphan*/  btrfs_file_inode_operations ; 
 int /*<<< orphan*/  btrfs_file_operations ; 
 int FUNC6 (struct btrfs_root*,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct inode*,struct inode*,struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 struct inode* FUNC9 (struct inode*,struct btrfs_root*,struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 struct inode* FUNC10 (struct btrfs_root*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*) ; 

__attribute__((used)) static int FUNC14(struct inode *dir, struct dentry *dentry,
			int mode, struct nameidata *nd)
{
	struct btrfs_trans_handle *trans;
	struct btrfs_root *root = FUNC0(dir)->root;
	struct inode *inode = NULL;
	int drop_inode = 0;
	int err;
	unsigned long nr = 0;
	u64 objectid;
	u64 index = 0;

	/*
	 * 2 for inode item and ref
	 * 2 for dir items
	 * 1 for xattr if selinux is on
	 */
	trans = FUNC10(root, 5);
	if (FUNC1(trans))
		return FUNC2(trans);

	err = FUNC6(root, &objectid);
	if (err)
		goto out_unlock;

	inode = FUNC9(trans, root, dir, dentry->d_name.name,
				dentry->d_name.len, FUNC8(dir), objectid,
				mode, &index);
	if (FUNC1(inode)) {
		err = FUNC2(inode);
		goto out_unlock;
	}

	err = FUNC7(trans, inode, dir);
	if (err) {
		drop_inode = 1;
		goto out_unlock;
	}

	/*
	* If the active LSM wants to access the inode during
	* d_instantiate it needs these. Smack checks to see
	* if the filesystem supports xattrs by looking at the
	* ops vector.
	*/
	inode->i_fop = &btrfs_file_operations;
	inode->i_op = &btrfs_file_inode_operations;

	err = FUNC3(trans, dir, dentry, inode, 0, index);
	if (err)
		drop_inode = 1;
	else {
		inode->i_mapping->a_ops = &btrfs_aops;
		inode->i_mapping->backing_dev_info = &root->fs_info->bdi;
		FUNC0(inode)->io_tree.ops = &btrfs_extent_io_ops;
		FUNC11(dentry, inode);
	}
out_unlock:
	nr = trans->blocks_used;
	FUNC5(trans, root);
	if (drop_inode) {
		FUNC12(inode);
		FUNC13(inode);
	}
	FUNC4(root, nr);
	return err;
}