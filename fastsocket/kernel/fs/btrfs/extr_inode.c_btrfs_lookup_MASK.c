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
struct nameidata {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 struct dentry* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 struct inode* FUNC2 (struct inode*,struct dentry*) ; 
 struct dentry* FUNC3 (struct inode*,struct dentry*) ; 

__attribute__((used)) static struct dentry *FUNC4(struct inode *dir, struct dentry *dentry,
				   struct nameidata *nd)
{
	struct inode *inode;

	inode = FUNC2(dir, dentry);
	if (FUNC1(inode))
		return FUNC0(inode);

	return FUNC3(inode, dentry);
}