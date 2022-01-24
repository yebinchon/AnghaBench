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
typedef  int u32 ;
struct super_block {int dummy; } ;
struct inode {scalar_t__ i_sb; int i_state; int /*<<< orphan*/  i_rdev; int /*<<< orphan*/  i_mode; int /*<<< orphan*/ * i_fop; int /*<<< orphan*/ * i_op; } ;
struct dentry {int /*<<< orphan*/ * d_op; struct inode* d_inode; } ;

/* Variables and functions */
 int EACCES ; 
 int ECRYPTFS_INTERPOSE_FLAG_D_ADD ; 
 int ESTALE ; 
 int EXDEV ; 
 int I_NEW ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  ecryptfs_dir_fops ; 
 int /*<<< orphan*/  ecryptfs_dir_iops ; 
 int /*<<< orphan*/  ecryptfs_dops ; 
 int /*<<< orphan*/  ecryptfs_inode_set ; 
 int /*<<< orphan*/  ecryptfs_inode_test ; 
 scalar_t__ FUNC4 (struct super_block*) ; 
 int /*<<< orphan*/  ecryptfs_symlink_iops ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,struct inode*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,struct inode*) ; 
 struct inode* FUNC7 (struct super_block*,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*) ; 

int FUNC13(struct dentry *lower_dentry, struct dentry *dentry,
		       struct super_block *sb, u32 flags)
{
	struct inode *lower_inode;
	struct inode *inode;
	int rc = 0;

	lower_inode = lower_dentry->d_inode;
	if (lower_inode->i_sb != FUNC4(sb)) {
		rc = -EXDEV;
		goto out;
	}
	if (!FUNC8(lower_inode)) {
		rc = -ESTALE;
		goto out;
	}
	inode = FUNC7(sb, (unsigned long)lower_inode,
			     ecryptfs_inode_test, ecryptfs_inode_set,
			     lower_inode);
	if (!inode) {
		rc = -EACCES;
		FUNC10(lower_inode);
		goto out;
	}
	if (inode->i_state & I_NEW)
		FUNC12(inode);
	else
		FUNC10(lower_inode);
	if (FUNC1(lower_inode->i_mode))
		inode->i_op = &ecryptfs_symlink_iops;
	else if (FUNC0(lower_inode->i_mode))
		inode->i_op = &ecryptfs_dir_iops;
	if (FUNC0(lower_inode->i_mode))
		inode->i_fop = &ecryptfs_dir_fops;
	if (FUNC11(lower_inode->i_mode))
		FUNC9(inode, lower_inode->i_mode,
				   lower_inode->i_rdev);
	dentry->d_op = &ecryptfs_dops;
	FUNC5(inode, lower_inode, NULL);
	/* This size will be overwritten for real files w/ headers and
	 * other metadata */
	FUNC6(inode, lower_inode);
	if (flags & ECRYPTFS_INTERPOSE_FLAG_D_ADD)
		FUNC2(dentry, inode);
	else
		FUNC3(dentry, inode);
out:
	return rc;
}