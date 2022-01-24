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
struct ubifs_info {int dummy; } ;
struct inode {scalar_t__ i_size; int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_ino; TYPE_1__* i_sb; } ;
struct iattr {int ia_valid; scalar_t__ ia_size; } ;
struct dentry {struct inode* d_inode; } ;
struct TYPE_2__ {struct ubifs_info* s_fs_info; } ;

/* Variables and functions */
 int ATTR_SIZE ; 
 int FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct ubifs_info*,struct inode*,struct iattr*) ; 
 int FUNC3 (struct ubifs_info*,struct inode*,struct iattr*) ; 
 int FUNC4 (struct inode*,struct iattr*) ; 

int FUNC5(struct dentry *dentry, struct iattr *attr)
{
	int err;
	struct inode *inode = dentry->d_inode;
	struct ubifs_info *c = inode->i_sb->s_fs_info;

	FUNC1("ino %lu, mode %#x, ia_valid %#x",
		inode->i_ino, inode->i_mode, attr->ia_valid);
	err = FUNC4(inode, attr);
	if (err)
		return err;

	err = FUNC0(inode);
	if (err)
		return err;

	if ((attr->ia_valid & ATTR_SIZE) && attr->ia_size < inode->i_size)
		/* Truncation to a smaller size */
		err = FUNC3(c, inode, attr);
	else
		err = FUNC2(c, inode, attr);

	return err;
}