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
struct pohmelfs_inode {int dummy; } ;
struct inode {int dummy; } ;
struct iattr {int dummy; } ;
struct dentry {struct inode* d_inode; } ;

/* Variables and functions */
 struct pohmelfs_inode* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  POHMELFS_WRITE_LOCK ; 
 int FUNC1 (struct pohmelfs_inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct inode*,struct iattr*) ; 
 int FUNC3 (struct dentry*,struct iattr*) ; 

int FUNC4(struct dentry *dentry, struct iattr *attr)
{
	struct inode *inode = dentry->d_inode;
	struct pohmelfs_inode *pi = FUNC0(inode);
	int err;

	err = FUNC1(pi, 0, ~0, POHMELFS_WRITE_LOCK);
	if (err)
		goto err_out_exit;

	err = FUNC3(dentry, attr);
	if (err)
		goto err_out_exit;

	err = FUNC2(inode, attr);
	if (err)
		goto err_out_exit;

	return 0;

err_out_exit:
	return err;
}