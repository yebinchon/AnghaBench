#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct inode {int i_mode; scalar_t__ i_nlink; int /*<<< orphan*/ * i_fop; int /*<<< orphan*/ * i_op; int /*<<< orphan*/  i_ino; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; scalar_t__ len; } ;
struct dentry {TYPE_1__ d_name; } ;

/* Variables and functions */
 int ENOSPC ; 
 int /*<<< orphan*/  ST_USERDIR ; 
 int S_IFDIR ; 
 int FUNC0 (struct inode*,struct inode*,struct dentry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  affs_dir_inode_operations ; 
 int /*<<< orphan*/  affs_dir_operations ; 
 struct inode* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 

int
FUNC6(struct inode *dir, struct dentry *dentry, int mode)
{
	struct inode		*inode;
	int			 error;

	FUNC5("AFFS: mkdir(%lu,\"%.*s\",0%o)\n",dir->i_ino,
		 (int)dentry->d_name.len,dentry->d_name.name,mode);

	inode = FUNC1(dir);
	if (!inode)
		return -ENOSPC;

	inode->i_mode = S_IFDIR | mode;
	FUNC4(inode);

	inode->i_op = &affs_dir_inode_operations;
	inode->i_fop = &affs_dir_operations;

	error = FUNC0(dir, inode, dentry, ST_USERDIR);
	if (error) {
		inode->i_nlink = 0;
		FUNC3(inode);
		FUNC2(inode);
		return error;
	}
	return 0;
}