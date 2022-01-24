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
struct nameidata {int dummy; } ;
struct dentry {int /*<<< orphan*/  d_inode; } ;
struct TYPE_2__ {int (* inode_follow_link ) (struct dentry*,struct nameidata*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* security_ops ; 
 int FUNC1 (struct dentry*,struct nameidata*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(struct dentry *dentry, struct nameidata *nd)
{
	if (FUNC2(FUNC0(dentry->d_inode)))
		return 0;
	return security_ops->inode_follow_link(dentry, nd);
}