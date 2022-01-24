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
struct inode {scalar_t__ i_nlink; } ;
struct TYPE_3__ {int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;
struct dentry {TYPE_1__ d_name; struct inode* d_inode; } ;
struct btrfs_trans_handle {unsigned long blocks_used; } ;
struct btrfs_root {int dummy; } ;
struct TYPE_4__ {struct btrfs_root* root; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct btrfs_trans_handle*) ; 
 int FUNC2 (struct btrfs_trans_handle*) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_trans_handle*,struct btrfs_root*) ; 
 struct btrfs_trans_handle* FUNC4 (struct inode*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct btrfs_root*,unsigned long) ; 
 int FUNC6 (struct btrfs_trans_handle*,struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct btrfs_trans_handle*,struct inode*,struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct btrfs_trans_handle*,struct btrfs_root*,struct inode*,struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct inode *dir, struct dentry *dentry)
{
	struct btrfs_root *root = FUNC0(dir)->root;
	struct btrfs_trans_handle *trans;
	struct inode *inode = dentry->d_inode;
	int ret;
	unsigned long nr = 0;

	trans = FUNC4(dir, dentry);
	if (FUNC1(trans))
		return FUNC2(trans);

	FUNC7(trans, dir, dentry->d_inode, 0);

	ret = FUNC8(trans, root, dir, dentry->d_inode,
				 dentry->d_name.name, dentry->d_name.len);
	if (ret)
		goto out;

	if (inode->i_nlink == 0) {
		ret = FUNC6(trans, inode);
		if (ret)
			goto out;
	}

out:
	nr = trans->blocks_used;
	FUNC3(trans, root);
	FUNC5(root, nr);
	return ret;
}