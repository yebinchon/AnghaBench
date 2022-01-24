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
struct dentry {int dummy; } ;
struct TYPE_2__ {int (* inode_symlink ) (struct inode*,struct dentry*,char const*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 TYPE_1__* security_ops ; 
 int FUNC1 (struct inode*,struct dentry*,char const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(struct inode *dir, struct dentry *dentry,
			    const char *old_name)
{
	if (FUNC2(FUNC0(dir)))
		return 0;
	return security_ops->inode_symlink(dir, dentry, old_name);
}