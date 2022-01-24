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
struct inode {int /*<<< orphan*/  i_sb; } ;
struct dentry {int dummy; } ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*,struct inode*) ; 
 char* FUNC5 (struct dentry*,int /*<<< orphan*/ ) ; 
 int FUNC6 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct inode* FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (struct inode*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int FUNC12 (struct inode*,char*) ; 

int FUNC13(struct inode *dir, struct dentry *dentry, int mode, dev_t dev)
{
	struct inode *inode;
	char *name;
	int err;

	inode = FUNC7(dir->i_sb);
	if (FUNC0(inode)) {
		err = FUNC3(inode);
		goto out;
	}

	err = FUNC8(inode, dentry);
	if (err)
		goto out_put;

	err = -ENOMEM;
	name = FUNC5(dentry, 0);
	if (name == NULL)
		goto out_put;

	FUNC9(inode, mode, dev);
	err = FUNC6(name, mode, FUNC1(dev), FUNC2(dev));
	if (err)
		goto out_free;

	err = FUNC12(inode, name);
	FUNC11(name);
	if (err)
		goto out_put;

	FUNC4(dentry, inode);
	return 0;

 out_free:
	FUNC11(name);
 out_put:
	FUNC10(inode);
 out:
	return err;
}