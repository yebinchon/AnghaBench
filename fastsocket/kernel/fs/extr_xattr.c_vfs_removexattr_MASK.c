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
struct inode {int /*<<< orphan*/  i_mutex; TYPE_1__* i_op; } ;
struct dentry {struct inode* d_inode; } ;
struct TYPE_2__ {int (* removexattr ) (struct dentry*,char const*) ;} ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  MAY_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct dentry*,char const*) ; 
 int FUNC4 (struct dentry*,char const*) ; 
 int FUNC5 (struct inode*,char const*,int /*<<< orphan*/ ) ; 

int
FUNC6(struct dentry *dentry, const char *name)
{
	struct inode *inode = dentry->d_inode;
	int error;

	if (!inode->i_op->removexattr)
		return -EOPNOTSUPP;

	error = FUNC5(inode, name, MAY_WRITE);
	if (error)
		return error;

	error = FUNC3(dentry, name);
	if (error)
		return error;

	FUNC1(&inode->i_mutex);
	error = inode->i_op->removexattr(dentry, name);
	FUNC2(&inode->i_mutex);

	if (!error)
		FUNC0(dentry);
	return error;
}