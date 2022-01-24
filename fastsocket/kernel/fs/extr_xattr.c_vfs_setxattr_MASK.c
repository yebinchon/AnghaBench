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
struct inode {int /*<<< orphan*/  i_mutex; } ;
struct dentry {struct inode* d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAY_WRITE ; 
 int FUNC0 (struct dentry*,char const*,void const*,size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct dentry*,char const*,void const*,size_t,int) ; 
 int FUNC4 (struct inode*,char const*,int /*<<< orphan*/ ) ; 

int
FUNC5(struct dentry *dentry, const char *name, const void *value,
		size_t size, int flags)
{
	struct inode *inode = dentry->d_inode;
	int error;

	error = FUNC4(inode, name, MAY_WRITE);
	if (error)
		return error;

	FUNC1(&inode->i_mutex);
	error = FUNC3(dentry, name, value, size, flags);
	if (error)
		goto out;

	error = FUNC0(dentry, name, value, size, flags);

out:
	FUNC2(&inode->i_mutex);
	return error;
}