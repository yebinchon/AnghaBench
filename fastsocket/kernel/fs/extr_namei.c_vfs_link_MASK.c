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
struct inode {scalar_t__ i_sb; scalar_t__ i_nlink; int /*<<< orphan*/  i_mutex; TYPE_1__* i_op; int /*<<< orphan*/  i_mode; } ;
struct dentry {struct inode* d_inode; } ;
struct TYPE_2__ {int (* link ) (struct dentry*,struct inode*,struct dentry*) ;} ;

/* Variables and functions */
 int ENOENT ; 
 int EPERM ; 
 int EXDEV ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,struct inode*,struct dentry*) ; 
 int FUNC4 (struct inode*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct dentry*,struct inode*,struct dentry*) ; 
 int FUNC8 (struct dentry*,struct inode*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 

int FUNC10(struct dentry *old_dentry, struct inode *dir, struct dentry *new_dentry)
{
	struct inode *inode = old_dentry->d_inode;
	int error;

	if (!inode)
		return -ENOENT;

	error = FUNC4(dir, new_dentry);
	if (error)
		return error;

	if (dir->i_sb != inode->i_sb)
		return -EXDEV;

	/*
	 * A link to an append-only or immutable file cannot be created.
	 */
	if (FUNC0(inode) || FUNC1(inode))
		return -EPERM;
	if (!dir->i_op->link)
		return -EPERM;
	if (FUNC2(inode->i_mode))
		return -EPERM;

	error = FUNC7(old_dentry, dir, new_dentry);
	if (error)
		return error;

	FUNC5(&inode->i_mutex);
	FUNC9(dir);
	/* Make sure we don't allow creating hardlink to an unlinked file */
	if (inode->i_nlink == 0)
		error =  -ENOENT;
	else
		error = dir->i_op->link(old_dentry, dir, new_dentry);
	FUNC6(&inode->i_mutex);
	if (!error)
		FUNC3(dir, inode, new_dentry);
	return error;
}