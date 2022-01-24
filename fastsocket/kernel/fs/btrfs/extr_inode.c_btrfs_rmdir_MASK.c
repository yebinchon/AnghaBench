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
struct inode {scalar_t__ i_size; } ;
struct TYPE_5__ {int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;
struct dentry {TYPE_2__ d_name; struct inode* d_inode; } ;
struct btrfs_trans_handle {unsigned long blocks_used; } ;
struct btrfs_root {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  objectid; } ;
struct TYPE_6__ {TYPE_1__ location; struct btrfs_root* root; } ;

/* Variables and functions */
 scalar_t__ BTRFS_EMPTY_DIR_SIZE ; 
 scalar_t__ BTRFS_EMPTY_SUBVOL_DIR_OBJECTID ; 
 scalar_t__ BTRFS_FIRST_FREE_OBJECTID ; 
 TYPE_3__* FUNC0 (struct inode*) ; 
 int ENOTEMPTY ; 
 scalar_t__ FUNC1 (struct btrfs_trans_handle*) ; 
 int FUNC2 (struct btrfs_trans_handle*) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_trans_handle*,struct btrfs_root*) ; 
 struct btrfs_trans_handle* FUNC4 (struct inode*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct btrfs_root*,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct inode*) ; 
 int FUNC8 (struct btrfs_trans_handle*,struct inode*) ; 
 int FUNC9 (struct btrfs_trans_handle*,struct btrfs_root*,struct inode*,struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct btrfs_trans_handle*,struct btrfs_root*,struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static int FUNC12(struct inode *dir, struct dentry *dentry)
{
	struct inode *inode = dentry->d_inode;
	int err = 0;
	struct btrfs_root *root = FUNC0(dir)->root;
	struct btrfs_trans_handle *trans;
	unsigned long nr = 0;

	if (inode->i_size > BTRFS_EMPTY_DIR_SIZE ||
	    FUNC7(inode) == BTRFS_FIRST_FREE_OBJECTID)
		return -ENOTEMPTY;

	trans = FUNC4(dir, dentry);
	if (FUNC1(trans))
		return FUNC2(trans);

	if (FUNC11(FUNC7(inode) == BTRFS_EMPTY_SUBVOL_DIR_OBJECTID)) {
		err = FUNC10(trans, root, dir,
					  FUNC0(inode)->location.objectid,
					  dentry->d_name.name,
					  dentry->d_name.len);
		goto out;
	}

	err = FUNC8(trans, inode);
	if (err)
		goto out;

	/* now the directory is empty */
	err = FUNC9(trans, root, dir, dentry->d_inode,
				 dentry->d_name.name, dentry->d_name.len);
	if (!err)
		FUNC6(inode, 0);
out:
	nr = trans->blocks_used;
	FUNC3(trans, root);
	FUNC5(root, nr);

	return err;
}