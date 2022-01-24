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
struct inode {int dummy; } ;
struct dentry {int dummy; } ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int FUNC1 (struct inode*) ; 
 int FUNC2 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct inode* FUNC5 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct inode * dir, struct dentry * dentry, int mode, dev_t rdev)
{
	struct inode * inode;
	int err;

	if (!FUNC4(rdev))
		return -EINVAL;

	inode = FUNC5(dir, mode);
	err = FUNC1(inode);

	if (!FUNC0(inode)) {
		FUNC6(inode, rdev);
		FUNC3(inode);
		err = FUNC2(dentry, inode);
	}
	return err;
}