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
struct inode {int /*<<< orphan*/  i_mode; } ;
struct dentry {int dummy; } ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int FUNC1 (struct inode*) ; 
 int FUNC2 (struct dentry*,struct inode*) ; 
 struct inode* FUNC3 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct inode *dir, struct dentry *dentry, int mode,
		       dev_t rdev)
{
	struct inode *inode;
	int err;

	if (!FUNC6(rdev))
		return -EINVAL;

	inode = FUNC3(dir, mode);
	err = FUNC1(inode);
	if (!FUNC0(inode)) {
		FUNC4(inode, inode->i_mode, rdev);
		FUNC5(inode);
		err = FUNC2(dentry, inode);
	}
	return err;
}