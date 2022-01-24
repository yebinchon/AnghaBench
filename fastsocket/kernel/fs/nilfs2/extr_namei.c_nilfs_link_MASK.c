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
struct inode {scalar_t__ i_nlink; int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_count; int /*<<< orphan*/  i_ctime; } ;
struct dentry {struct inode* d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  CURRENT_TIME ; 
 int EMLINK ; 
 scalar_t__ NILFS_LINK_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int FUNC2 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct nilfs_transaction_info*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct dentry *old_dentry, struct inode *dir,
		      struct dentry *dentry)
{
	struct inode *inode = old_dentry->d_inode;
	struct nilfs_transaction_info ti;
	int err;

	if (inode->i_nlink >= NILFS_LINK_MAX)
		return -EMLINK;

	err = FUNC4(dir->i_sb, &ti, 1);
	if (err)
		return err;

	inode->i_ctime = CURRENT_TIME;
	FUNC1(inode);
	FUNC0(&inode->i_count);

	err = FUNC2(dentry, inode);
	if (!err)
		err = FUNC5(dir->i_sb);
	else
		FUNC3(dir->i_sb);

	return err;
}