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
struct inode {int /*<<< orphan*/  i_mode; } ;
struct dentry {int dummy; } ;
struct btrfs_trans_handle {int /*<<< orphan*/  transid; } ;
struct btrfs_root {TYPE_1__* fs_info; } ;
struct TYPE_4__ {scalar_t__ logged_trans; int /*<<< orphan*/  last_unlink_trans; struct btrfs_root* root; } ;
struct TYPE_3__ {scalar_t__ last_trans_committed; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct btrfs_trans_handle*,struct btrfs_root*,struct inode*,struct dentry*,int) ; 

int FUNC3(struct btrfs_trans_handle *trans,
			struct inode *inode, struct inode *old_dir,
			struct dentry *parent)
{
	struct btrfs_root * root = FUNC0(inode)->root;

	/*
	 * this will force the logging code to walk the dentry chain
	 * up for the file
	 */
	if (FUNC1(inode->i_mode))
		FUNC0(inode)->last_unlink_trans = trans->transid;

	/*
	 * if this inode hasn't been logged and directory we're renaming it
	 * from hasn't been logged, we don't need to log it
	 */
	if (FUNC0(inode)->logged_trans <=
	    root->fs_info->last_trans_committed &&
	    (!old_dir || FUNC0(old_dir)->logged_trans <=
		    root->fs_info->last_trans_committed))
		return 0;

	return FUNC2(trans, root, inode, parent, 1);
}