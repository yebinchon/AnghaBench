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
typedef  int /*<<< orphan*/  u64 ;
struct inode {unsigned long blocks_used; int /*<<< orphan*/ * i_fop; int /*<<< orphan*/ * i_op; } ;
struct TYPE_3__ {int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;
struct dentry {TYPE_1__ d_name; } ;
struct btrfs_trans_handle {unsigned long blocks_used; int /*<<< orphan*/ * i_fop; int /*<<< orphan*/ * i_op; } ;
struct btrfs_root {int dummy; } ;
struct TYPE_4__ {struct btrfs_root* root; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int FUNC2 (struct inode*) ; 
 int S_IFDIR ; 
 int FUNC3 (struct inode*,struct inode*,struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_root*,unsigned long) ; 
 int /*<<< orphan*/  btrfs_dir_file_operations ; 
 int /*<<< orphan*/  btrfs_dir_inode_operations ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,struct btrfs_root*) ; 
 int FUNC6 (struct btrfs_root*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct inode*,struct inode*,struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 struct inode* FUNC10 (struct inode*,struct btrfs_root*,struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 struct inode* FUNC11 (struct btrfs_root*,int) ; 
 int FUNC12 (struct inode*,struct btrfs_root*,struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*) ; 

__attribute__((used)) static int FUNC15(struct inode *dir, struct dentry *dentry, int mode)
{
	struct inode *inode = NULL;
	struct btrfs_trans_handle *trans;
	struct btrfs_root *root = FUNC0(dir)->root;
	int err = 0;
	int drop_on_err = 0;
	u64 objectid = 0;
	u64 index = 0;
	unsigned long nr = 1;

	/*
	 * 2 items for inode and ref
	 * 2 items for dir items
	 * 1 for xattr if selinux is on
	 */
	trans = FUNC11(root, 5);
	if (FUNC1(trans))
		return FUNC2(trans);

	err = FUNC6(root, &objectid);
	if (err)
		goto out_fail;

	inode = FUNC10(trans, root, dir, dentry->d_name.name,
				dentry->d_name.len, FUNC9(dir), objectid,
				S_IFDIR | mode, &index);
	if (FUNC1(inode)) {
		err = FUNC2(inode);
		goto out_fail;
	}

	drop_on_err = 1;

	err = FUNC8(trans, inode, dir);
	if (err)
		goto out_fail;

	inode->i_op = &btrfs_dir_inode_operations;
	inode->i_fop = &btrfs_dir_file_operations;

	FUNC7(inode, 0);
	err = FUNC12(trans, root, inode);
	if (err)
		goto out_fail;

	err = FUNC3(trans, dir, inode, dentry->d_name.name,
			     dentry->d_name.len, 0, index);
	if (err)
		goto out_fail;

	FUNC13(dentry, inode);
	drop_on_err = 0;

out_fail:
	nr = trans->blocks_used;
	FUNC5(trans, root);
	if (drop_on_err)
		FUNC14(inode);
	FUNC4(root, nr);
	return err;
}