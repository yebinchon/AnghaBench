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
struct inode {scalar_t__ i_nlink; TYPE_1__* i_mapping; int /*<<< orphan*/  i_sb; int /*<<< orphan*/ * i_fop; int /*<<< orphan*/ * i_op; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * a_ops; } ;

/* Variables and functions */
 int EMLINK ; 
 scalar_t__ EXT2_LINK_MAX ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  NOBH ; 
 int FUNC1 (struct inode*) ; 
 int S_IFDIR ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*,struct inode*) ; 
 int FUNC3 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  ext2_aops ; 
 int /*<<< orphan*/  ext2_dir_inode_operations ; 
 int /*<<< orphan*/  ext2_dir_operations ; 
 int FUNC4 (struct inode*,struct inode*) ; 
 struct inode* FUNC5 (struct inode*,int) ; 
 int /*<<< orphan*/  ext2_nobh_aops ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 

__attribute__((used)) static int FUNC11(struct inode * dir, struct dentry * dentry, int mode)
{
	struct inode * inode;
	int err = -EMLINK;

	if (dir->i_nlink >= EXT2_LINK_MAX)
		goto out;

	FUNC7(dir);

	inode = FUNC5 (dir, S_IFDIR | mode);
	err = FUNC1(inode);
	if (FUNC0(inode))
		goto out_dir;

	inode->i_op = &ext2_dir_inode_operations;
	inode->i_fop = &ext2_dir_operations;
	if (FUNC9(inode->i_sb, NOBH))
		inode->i_mapping->a_ops = &ext2_nobh_aops;
	else
		inode->i_mapping->a_ops = &ext2_aops;

	FUNC7(inode);

	err = FUNC4(inode, dir);
	if (err)
		goto out_fail;

	err = FUNC3(dentry, inode);
	if (err)
		goto out_fail;

	FUNC2(dentry, inode);
	FUNC10(inode);
out:
	return err;

out_fail:
	FUNC6(inode);
	FUNC6(inode);
	FUNC10(inode);
	FUNC8(inode);
out_dir:
	FUNC6(dir);
	goto out;
}