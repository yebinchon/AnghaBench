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
struct nilfs_transaction_info {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_mode; } ;
struct dentry {int dummy; } ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct dentry*,struct inode*) ; 
 struct inode* FUNC6 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,struct nilfs_transaction_info*,int) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(struct inode *dir, struct dentry *dentry, int mode, dev_t rdev)
{
	struct inode *inode;
	struct nilfs_transaction_info ti;
	int err;

	if (!FUNC4(rdev))
		return -EINVAL;

	err = FUNC8(dir->i_sb, &ti, 1);
	if (err)
		return err;
	inode = FUNC6(dir, mode);
	err = FUNC1(inode);
	if (!FUNC0(inode)) {
		FUNC2(inode, inode->i_mode, rdev);
		FUNC3(inode);
		err = FUNC5(dentry, inode);
	}
	if (!err)
		err = FUNC9(dir->i_sb);
	else
		FUNC7(dir->i_sb);

	return err;
}