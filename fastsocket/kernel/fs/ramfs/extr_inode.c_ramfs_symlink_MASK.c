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

/* Variables and functions */
 int /*<<< orphan*/  CURRENT_TIME ; 
 int ENOSPC ; 
 int S_IFLNK ; 
 int S_IRWXUGO ; 
 int S_ISGID ; 
 int /*<<< orphan*/  FUNC0 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int FUNC3 (struct inode*,char const*,int) ; 
 struct inode* FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (char const*) ; 

__attribute__((used)) static int FUNC6(struct inode * dir, struct dentry *dentry, const char * symname)
{
	struct inode *inode;
	int error = -ENOSPC;

	inode = FUNC4(dir->i_sb, S_IFLNK|S_IRWXUGO, 0);
	if (inode) {
		int l = FUNC5(symname)+1;
		error = FUNC3(inode, symname, l);
		if (!error) {
			if (dir->i_mode & S_ISGID)
				inode->i_gid = dir->i_gid;
			FUNC0(dentry, inode);
			FUNC1(dentry);
			dir->i_mtime = dir->i_ctime = CURRENT_TIME;
		} else
			FUNC2(inode);
	}
	return error;
}