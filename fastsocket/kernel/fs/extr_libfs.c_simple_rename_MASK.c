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
struct inode {int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_mode; } ;
struct dentry {struct inode* d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  CURRENT_TIME ; 
 int ENOTEMPTY ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,struct dentry*) ; 

int FUNC5(struct inode *old_dir, struct dentry *old_dentry,
		struct inode *new_dir, struct dentry *new_dentry)
{
	struct inode *inode = old_dentry->d_inode;
	int they_are_dirs = FUNC0(old_dentry->d_inode->i_mode);

	if (!FUNC3(new_dentry))
		return -ENOTEMPTY;

	if (new_dentry->d_inode) {
		FUNC4(new_dir, new_dentry);
		if (they_are_dirs)
			FUNC1(old_dir);
	} else if (they_are_dirs) {
		FUNC1(old_dir);
		FUNC2(new_dir);
	}

	old_dir->i_ctime = old_dir->i_mtime = new_dir->i_ctime =
		new_dir->i_mtime = inode->i_ctime = CURRENT_TIME;

	return 0;
}