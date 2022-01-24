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
struct nameidata {int dummy; } ;
struct inode {int /*<<< orphan*/ * i_fop; TYPE_1__* i_mapping; int /*<<< orphan*/  i_sb; int /*<<< orphan*/ * i_op; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * a_ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  NOBH ; 
 int FUNC1 (struct inode*) ; 
 int FUNC2 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  ext2_aops ; 
 int /*<<< orphan*/  ext2_aops_xip ; 
 int /*<<< orphan*/  ext2_file_inode_operations ; 
 int /*<<< orphan*/  ext2_file_operations ; 
 struct inode* FUNC3 (struct inode*,int) ; 
 int /*<<< orphan*/  ext2_nobh_aops ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ext2_xip_file_operations ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7 (struct inode * dir, struct dentry * dentry, int mode, struct nameidata *nd)
{
	struct inode * inode = FUNC3 (dir, mode);
	int err = FUNC1(inode);
	if (!FUNC0(inode)) {
		inode->i_op = &ext2_file_inode_operations;
		if (FUNC4(inode->i_sb)) {
			inode->i_mapping->a_ops = &ext2_aops_xip;
			inode->i_fop = &ext2_xip_file_operations;
		} else if (FUNC6(inode->i_sb, NOBH)) {
			inode->i_mapping->a_ops = &ext2_nobh_aops;
			inode->i_fop = &ext2_file_operations;
		} else {
			inode->i_mapping->a_ops = &ext2_aops;
			inode->i_fop = &ext2_file_operations;
		}
		FUNC5(inode);
		err = FUNC2(dentry, inode);
	}
	return err;
}