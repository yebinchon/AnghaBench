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
 int FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct file *filp, struct dentry *dentry,
			      int datasync)
{
	struct inode *inode = dentry->d_inode;
	int err;
	FUNC1(inode->i_sb);
	err = FUNC0(inode);
	FUNC2(inode->i_sb);
	if (err < 0)
		return err;
	return 0;
}