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
struct inode {int /*<<< orphan*/  i_sb; } ;
struct file {int dummy; } ;
struct dentry {struct inode* d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  LLONG_MAX ; 
 int FUNC0 (int /*<<< orphan*/ ,struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 

int FUNC3(struct file *file, struct dentry *dentry, int datasync)
{
	/*
	 * Called from fsync() system call
	 * This is the only entry point that can catch write and synch
	 * timing for both data blocks and intermediate blocks.
	 *
	 * This function should be implemented when the writeback function
	 * will be implemented.
	 */
	struct inode *inode = dentry->d_inode;
	int err;

	if (!FUNC2(inode))
		return 0;

	if (datasync)
		err = FUNC0(inode->i_sb, inode, 0,
						    LLONG_MAX);
	else
		err = FUNC1(inode->i_sb);

	return err;
}