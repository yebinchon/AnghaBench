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
struct inode {int dummy; } ;
struct iattr {int dummy; } ;
struct dentry {struct inode* d_inode; } ;

/* Variables and functions */
 int FUNC0 (struct inode*,struct iattr*) ; 
 int FUNC1 (struct inode*,struct iattr*) ; 

int FUNC2(struct dentry *dentry, struct iattr *iattr)
{
	struct inode *inode = dentry->d_inode;
	int error;

	error = FUNC0(inode, iattr);
	if (error)
		return error;

	error = FUNC1(inode, iattr);
	return error;
}