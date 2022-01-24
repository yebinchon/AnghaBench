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
struct inode {scalar_t__ i_nlink; TYPE_1__* i_mapping; int /*<<< orphan*/ * i_fop; int /*<<< orphan*/ * i_op; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * a_ops; } ;

/* Variables and functions */
 int EMLINK ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 int FUNC1 (struct inode*) ; 
 int S_IFDIR ; 
 scalar_t__ UFS_LINK_MAX ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  ufs_aops ; 
 int /*<<< orphan*/  ufs_dir_inode_operations ; 
 int /*<<< orphan*/  ufs_dir_operations ; 
 int FUNC8 (struct inode*,struct inode*) ; 
 struct inode* FUNC9 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static int FUNC11(struct inode * dir, struct dentry * dentry, int mode)
{
	struct inode * inode;
	int err = -EMLINK;

	if (dir->i_nlink >= UFS_LINK_MAX)
		goto out;

	FUNC6();
	FUNC4(dir);

	inode = FUNC9(dir, S_IFDIR|mode);
	err = FUNC1(inode);
	if (FUNC0(inode))
		goto out_dir;

	inode->i_op = &ufs_dir_inode_operations;
	inode->i_fop = &ufs_dir_operations;
	inode->i_mapping->a_ops = &ufs_aops;

	FUNC4(inode);

	err = FUNC8(inode, dir);
	if (err)
		goto out_fail;

	err = FUNC7(dentry, inode);
	if (err)
		goto out_fail;
	FUNC10();

	FUNC2(dentry, inode);
out:
	return err;

out_fail:
	FUNC3(inode);
	FUNC3(inode);
	FUNC5 (inode);
out_dir:
	FUNC3(dir);
	FUNC10();
	goto out;
}