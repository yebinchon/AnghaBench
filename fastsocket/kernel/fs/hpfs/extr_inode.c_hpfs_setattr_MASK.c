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
struct inode {scalar_t__ i_ino; scalar_t__ i_size; int /*<<< orphan*/  i_sb; } ;
struct iattr {int ia_valid; scalar_t__ ia_size; } ;
struct dentry {struct inode* d_inode; } ;
struct TYPE_2__ {scalar_t__ sb_root; } ;

/* Variables and functions */
 int ATTR_SIZE ; 
 int EINVAL ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int FUNC2 (struct inode*,struct iattr*) ; 
 int FUNC3 (struct inode*,struct iattr*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

int FUNC6(struct dentry *dentry, struct iattr *attr)
{
	struct inode *inode = dentry->d_inode;
	int error = -EINVAL;

	FUNC4();
	if (inode->i_ino == FUNC0(inode->i_sb)->sb_root)
		goto out_unlock;
	if ((attr->ia_valid & ATTR_SIZE) && attr->ia_size > inode->i_size)
		goto out_unlock;

	error = FUNC2(inode, attr);
	if (error)
		goto out_unlock;

	error = FUNC3(inode, attr);
	if (error)
		goto out_unlock;

	FUNC1(inode);

 out_unlock:
	FUNC5();
	return error;
}