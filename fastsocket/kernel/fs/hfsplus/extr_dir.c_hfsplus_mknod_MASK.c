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
struct super_block {int dummy; } ;
struct inode {int /*<<< orphan*/  i_ino; scalar_t__ i_nlink; struct super_block* i_sb; } ;
struct dentry {int /*<<< orphan*/  d_name; } ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int ENOSPC ; 
 int FUNC0 (int /*<<< orphan*/ ,struct inode*,int /*<<< orphan*/ *,struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*,struct inode*,int /*<<< orphan*/ ) ; 
 struct inode* FUNC3 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 

__attribute__((used)) static int FUNC7(struct inode *dir, struct dentry *dentry,
			 int mode, dev_t rdev)
{
	struct super_block *sb;
	struct inode *inode;
	int res;

	sb = dir->i_sb;
	inode = FUNC3(sb, mode);
	if (!inode)
		return -ENOSPC;

	res = FUNC0(inode->i_ino, dir, &dentry->d_name, inode);
	if (res) {
		inode->i_nlink = 0;
		FUNC1(inode);
		FUNC5(inode);
		return res;
	}
	FUNC4(inode, mode, rdev);
	FUNC2(dentry, inode, inode->i_ino);
	FUNC6(inode);

	return 0;
}