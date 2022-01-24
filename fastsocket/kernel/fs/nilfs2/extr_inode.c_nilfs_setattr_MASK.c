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
struct super_block {int dummy; } ;
struct nilfs_transaction_info {int dummy; } ;
struct inode {struct super_block* i_sb; } ;
struct iattr {int ia_valid; } ;
struct dentry {struct inode* d_inode; } ;

/* Variables and functions */
 int ATTR_MODE ; 
 int FUNC0 (struct inode*,struct iattr*) ; 
 int FUNC1 (struct inode*,struct iattr*) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*) ; 
 int FUNC5 (struct super_block*,struct nilfs_transaction_info*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct super_block*) ; 
 scalar_t__ FUNC7 (int) ; 

int FUNC8(struct dentry *dentry, struct iattr *iattr)
{
	struct nilfs_transaction_info ti;
	struct inode *inode = dentry->d_inode;
	struct super_block *sb = inode->i_sb;
	int err;

	err = FUNC0(inode, iattr);
	if (err)
		return err;

	err = FUNC5(sb, &ti, 0);
	if (FUNC7(err))
		return err;
	err = FUNC1(inode, iattr);
	if (!err && (iattr->ia_valid & ATTR_MODE))
		err = FUNC3(inode);
	if (FUNC2(!err))
		err = FUNC6(sb);
	else
		FUNC4(sb);

	return err;
}