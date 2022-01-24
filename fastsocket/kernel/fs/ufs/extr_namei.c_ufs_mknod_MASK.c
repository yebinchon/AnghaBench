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
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct dentry*,struct inode*) ; 
 struct inode* FUNC8 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static int FUNC11 (struct inode * dir, struct dentry *dentry, int mode, dev_t rdev)
{
	struct inode *inode;
	int err;

	if (!FUNC6(rdev))
		return -EINVAL;
	inode = FUNC8(dir, mode);
	err = FUNC1(inode);
	if (!FUNC0(inode)) {
		FUNC3(inode, mode, rdev);
		FUNC9(inode->i_sb, FUNC2(inode), rdev);
		FUNC5(inode);
		FUNC4();
		err = FUNC7(dentry, inode);
		FUNC10();
	}
	return err;
}