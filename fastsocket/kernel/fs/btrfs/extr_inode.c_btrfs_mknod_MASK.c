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
struct inode {unsigned long blocks_used; int /*<<< orphan*/  i_mode; int /*<<< orphan*/ * i_op; } ;
struct TYPE_3__ {int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;
struct dentry {TYPE_1__ d_name; } ;
struct btrfs_trans_handle {unsigned long blocks_used; int /*<<< orphan*/  i_mode; int /*<<< orphan*/ * i_op; } ;
struct btrfs_root {int dummy; } ;
typedef  int /*<<< orphan*/  dev_t ;
struct TYPE_4__ {struct btrfs_root* root; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct inode*) ; 
 int EINVAL ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int FUNC2 (struct inode*) ; 
 int FUNC3 (struct inode*,struct inode*,struct dentry*,struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_root*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,struct btrfs_root*) ; 
 int FUNC6 (struct btrfs_root*,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct inode*,struct inode*,struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 struct inode* FUNC9 (struct inode*,struct btrfs_root*,struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  btrfs_special_inode_operations ; 
 struct inode* FUNC10 (struct btrfs_root*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*,struct btrfs_root*,struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(struct inode *dir, struct dentry *dentry,
			int mode, dev_t rdev)
{
	struct btrfs_trans_handle *trans;
	struct btrfs_root *root = FUNC0(dir)->root;
	struct inode *inode = NULL;
	int err;
	int drop_inode = 0;
	u64 objectid;
	unsigned long nr = 0;
	u64 index = 0;

	if (!FUNC16(rdev))
		return -EINVAL;

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

	inode->i_op = &btrfs_special_inode_operations;
	err = FUNC3(trans, dir, dentry, inode, 0, index);
	if (err)
		drop_inode = 1;
	else {
		FUNC13(inode, inode->i_mode, rdev);
		FUNC11(trans, root, inode);
		FUNC12(dentry, inode);
	}
out_unlock:
	nr = trans->blocks_used;
	FUNC5(trans, root);
	FUNC4(root, nr);
	if (drop_inode) {
		FUNC14(inode);
		FUNC15(inode);
	}
	return err;
}