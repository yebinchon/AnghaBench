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
struct inode {int dummy; } ;
struct dentry {scalar_t__ d_inode; } ;
struct TYPE_2__ {int (* inode_rename ) (struct inode*,struct dentry*,struct inode*,struct dentry*) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 TYPE_1__* security_ops ; 
 int FUNC1 (struct inode*,struct dentry*,struct inode*,struct dentry*) ; 
 scalar_t__ FUNC2 (int) ; 

int FUNC3(struct inode *old_dir, struct dentry *old_dentry,
			   struct inode *new_dir, struct dentry *new_dentry)
{
        if (FUNC2(FUNC0(old_dentry->d_inode) ||
            (new_dentry->d_inode && FUNC0(new_dentry->d_inode))))
		return 0;
	return security_ops->inode_rename(old_dir, old_dentry,
					   new_dir, new_dentry);
}