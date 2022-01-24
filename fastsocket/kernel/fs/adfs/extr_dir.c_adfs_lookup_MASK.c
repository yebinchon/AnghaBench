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
struct object_info {int dummy; } ;
struct nameidata {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct dentry {int /*<<< orphan*/  d_name; int /*<<< orphan*/ * d_op; } ;

/* Variables and functions */
 int EACCES ; 
 struct dentry* FUNC0 (int) ; 
 int /*<<< orphan*/  adfs_dentry_operations ; 
 int FUNC1 (struct inode*,int /*<<< orphan*/ *,struct object_info*) ; 
 struct inode* FUNC2 (int /*<<< orphan*/ ,struct object_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static struct dentry *
FUNC6(struct inode *dir, struct dentry *dentry, struct nameidata *nd)
{
	struct inode *inode = NULL;
	struct object_info obj;
	int error;

	dentry->d_op = &adfs_dentry_operations;	
	FUNC4();
	error = FUNC1(dir, &dentry->d_name, &obj);
	if (error == 0) {
		error = -EACCES;
		/*
		 * This only returns NULL if get_empty_inode
		 * fails.
		 */
		inode = FUNC2(dir->i_sb, &obj);
		if (inode)
			error = 0;
	}
	FUNC5();
	FUNC3(dentry, inode);
	return FUNC0(error);
}