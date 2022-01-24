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
struct proc_dir_entry {int /*<<< orphan*/  mode; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; } ;
struct inode {int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; } ;
struct iattr {int dummy; } ;
struct dentry {struct inode* d_inode; } ;

/* Variables and functions */
 struct proc_dir_entry* FUNC0 (struct inode*) ; 
 int FUNC1 (struct inode*,struct iattr*) ; 
 int FUNC2 (struct inode*,struct iattr*) ; 

__attribute__((used)) static int FUNC3(struct dentry *dentry, struct iattr *iattr)
{
	struct inode *inode = dentry->d_inode;
	struct proc_dir_entry *de = FUNC0(inode);
	int error;

	error = FUNC1(inode, iattr);
	if (error)
		goto out;

	error = FUNC2(inode, iattr);
	if (error)
		goto out;
	
	de->uid = inode->i_uid;
	de->gid = inode->i_gid;
	de->mode = inode->i_mode;
out:
	return error;
}