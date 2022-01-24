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
struct inode {int i_mode; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_sb; } ;
struct dentry {int dummy; } ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int /*<<< orphan*/  CURRENT_TIME ; 
 int ENOSPC ; 
 scalar_t__ FUNC0 (int) ; 
 int S_ISGID ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 struct inode* FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct inode *dir, struct dentry *dentry, int mode, dev_t dev)
{
	struct inode * inode = FUNC3(dir->i_sb, mode, dev);
	int error = -ENOSPC;

	if (inode) {
		if (dir->i_mode & S_ISGID) {
			inode->i_gid = dir->i_gid;
			if (FUNC0(mode))
				inode->i_mode |= S_ISGID;
		}
		FUNC1(dentry, inode);
		FUNC2(dentry);	/* Extra count - pin the dentry in core */
		error = 0;
		dir->i_mtime = dir->i_ctime = CURRENT_TIME;
	}
	return error;
}