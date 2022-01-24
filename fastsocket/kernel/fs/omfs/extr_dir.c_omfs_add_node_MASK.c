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

/* Variables and functions */
 scalar_t__ FUNC0 (struct inode*) ; 
 int FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int FUNC4 (struct dentry*,struct inode*) ; 
 int FUNC5 (struct inode*,int /*<<< orphan*/ ) ; 
 struct inode* FUNC6 (struct inode*,int) ; 

__attribute__((used)) static int FUNC7(struct inode *dir, struct dentry *dentry, int mode)
{
	int err;
	struct inode *inode = FUNC6(dir, mode);

	if (FUNC0(inode))
		return FUNC1(inode);

	err = FUNC5(inode, dir->i_sb);
	if (err)
		goto out_free_inode;

	err = FUNC4(dentry, inode);
	if (err)
		goto out_free_inode;

	FUNC2(dentry, inode);
	return 0;

out_free_inode:
	FUNC3(inode);
	return err;
}