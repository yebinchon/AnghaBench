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
struct inode {int /*<<< orphan*/  i_sb; } ;
struct dentry {int /*<<< orphan*/ * d_op; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 struct dentry* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*,struct inode*) ; 
 char* FUNC4 (struct dentry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hostfs_dentry_ops ; 
 struct inode* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct inode*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int FUNC9 (struct inode*,char*) ; 

struct dentry *FUNC10(struct inode *ino, struct dentry *dentry,
			     struct nameidata *nd)
{
	struct inode *inode;
	char *name;
	int err;

	inode = FUNC5(ino->i_sb);
	if (FUNC1(inode)) {
		err = FUNC2(inode);
		goto out;
	}

	err = FUNC6(inode, dentry);
	if (err)
		goto out_put;

	err = -ENOMEM;
	name = FUNC4(dentry, 0);
	if (name == NULL)
		goto out_put;

	err = FUNC9(inode, name);
	FUNC8(name);
	if (err == -ENOENT) {
		FUNC7(inode);
		inode = NULL;
	}
	else if (err)
		goto out_put;

	FUNC3(dentry, inode);
	dentry->d_op = &hostfs_dentry_ops;
	return NULL;

 out_put:
	FUNC7(inode);
 out:
	return FUNC0(err);
}