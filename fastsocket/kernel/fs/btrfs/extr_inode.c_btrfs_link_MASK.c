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
typedef  int /*<<< orphan*/  u64 ;
struct inode {unsigned int i_nlink; int /*<<< orphan*/  i_ctime; } ;
struct dentry {struct dentry* d_parent; struct inode* d_inode; } ;
struct btrfs_trans_handle {unsigned long blocks_used; } ;
struct btrfs_root {scalar_t__ objectid; } ;
struct TYPE_2__ {struct btrfs_root* root; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  CURRENT_TIME ; 
 int EMLINK ; 
 int EXDEV ; 
 scalar_t__ FUNC1 (struct btrfs_trans_handle*) ; 
 int FUNC2 (struct btrfs_trans_handle*) ; 
 int FUNC3 (struct btrfs_trans_handle*,struct inode*,struct dentry*,struct inode*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_root*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct btrfs_trans_handle*,struct btrfs_root*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct btrfs_trans_handle*,struct inode*,int /*<<< orphan*/ *,struct dentry*) ; 
 int FUNC8 (struct inode*,int /*<<< orphan*/ *) ; 
 struct btrfs_trans_handle* FUNC9 (struct btrfs_root*,int) ; 
 int FUNC10 (struct btrfs_trans_handle*,struct btrfs_root*,struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*) ; 

__attribute__((used)) static int FUNC16(struct dentry *old_dentry, struct inode *dir,
		      struct dentry *dentry)
{
	struct btrfs_trans_handle *trans;
	struct btrfs_root *root = FUNC0(dir)->root;
	struct inode *inode = old_dentry->d_inode;
	u64 index;
	unsigned long nr = 0;
	int err;
	int drop_inode = 0;

	/* do not allow sys_link's with other subvols of the same device */
	if (root->objectid != FUNC0(inode)->root->objectid)
		return -EXDEV;

	if (inode->i_nlink == ~0U)
		return -EMLINK;

	err = FUNC8(dir, &index);
	if (err)
		goto fail;

	/*
	 * 2 items for inode and inode ref
	 * 2 items for dir items
	 * 1 item for parent inode
	 */
	trans = FUNC9(root, 5);
	if (FUNC1(trans)) {
		err = FUNC2(trans);
		goto fail;
	}

	FUNC6(inode);
	FUNC14(inode);
	inode->i_ctime = CURRENT_TIME;
	FUNC12(inode);

	err = FUNC3(trans, dir, dentry, inode, 1, index);

	if (err) {
		drop_inode = 1;
	} else {
		struct dentry *parent = dentry->d_parent;
		err = FUNC10(trans, root, inode);
		if (err)
			goto fail;
		FUNC11(dentry, inode);
		FUNC7(trans, inode, NULL, parent);
	}

	nr = trans->blocks_used;
	FUNC5(trans, root);
fail:
	if (drop_inode) {
		FUNC13(inode);
		FUNC15(inode);
	}
	FUNC4(root, nr);
	return err;
}