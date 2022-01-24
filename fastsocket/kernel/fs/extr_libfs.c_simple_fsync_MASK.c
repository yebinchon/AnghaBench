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
struct inode {int i_state; int /*<<< orphan*/  i_mapping; } ;
struct file {int dummy; } ;
struct dentry {struct inode* d_inode; } ;

/* Variables and functions */
 int I_DIRTY ; 
 int I_DIRTY_DATASYNC ; 
 int FUNC0 (struct inode*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

int FUNC2(struct file *file, struct dentry *dentry, int datasync)
{
	struct inode *inode = dentry->d_inode;
	int err;
	int ret;

	ret = FUNC1(inode->i_mapping);
	if (!(inode->i_state & I_DIRTY))
		return ret;
	if (datasync && !(inode->i_state & I_DIRTY_DATASYNC))
		return ret;

	err = FUNC0(inode, 1);
	if (ret == 0)
		ret = err;
	return ret;
}