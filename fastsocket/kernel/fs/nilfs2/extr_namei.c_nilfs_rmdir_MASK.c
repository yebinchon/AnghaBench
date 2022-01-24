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
struct inode {int /*<<< orphan*/  i_sb; scalar_t__ i_size; } ;
struct dentry {struct inode* d_inode; } ;

/* Variables and functions */
 int ENOTEMPTY ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct nilfs_transaction_info*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct inode*,struct dentry*) ; 

__attribute__((used)) static int FUNC6(struct inode *dir, struct dentry *dentry)
{
	struct inode *inode = dentry->d_inode;
	struct nilfs_transaction_info ti;
	int err;

	err = FUNC3(dir->i_sb, &ti, 0);
	if (err)
		return err;

	err = -ENOTEMPTY;
	if (FUNC1(inode)) {
		err = FUNC5(dir, dentry);
		if (!err) {
			inode->i_size = 0;
			FUNC0(inode);
			FUNC0(dir);
		}
	}
	if (!err)
		err = FUNC4(dir->i_sb);
	else
		FUNC2(dir->i_sb);

	return err;
}