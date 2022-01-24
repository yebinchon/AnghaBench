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
struct iattr {int ia_valid; } ;
struct dentry {struct inode* d_inode; } ;

/* Variables and functions */
 int ATTR_MODE ; 
 int EPERM ; 
 int FUNC0 (struct inode*,struct iattr*) ; 
 int FUNC1 (struct inode*,struct iattr*) ; 

int FUNC2(struct dentry *dentry, struct iattr *attr)
{
	int error;
	struct inode *inode = dentry->d_inode;

	if (attr->ia_valid & ATTR_MODE)
		return -EPERM;

	error = FUNC0(inode, attr);
	if (!error)
		error = FUNC1(inode, attr);
	return error;
}