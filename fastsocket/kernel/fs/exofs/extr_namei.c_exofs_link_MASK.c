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
struct inode {scalar_t__ i_nlink; int /*<<< orphan*/  i_count; int /*<<< orphan*/  i_ctime; } ;
struct dentry {struct inode* d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  CURRENT_TIME ; 
 int EMLINK ; 
 scalar_t__ EXOFS_LINK_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 

__attribute__((used)) static int FUNC3(struct dentry *old_dentry, struct inode *dir,
		struct dentry *dentry)
{
	struct inode *inode = old_dentry->d_inode;

	if (inode->i_nlink >= EXOFS_LINK_MAX)
		return -EMLINK;

	inode->i_ctime = CURRENT_TIME;
	FUNC2(inode);
	FUNC0(&inode->i_count);

	return FUNC1(dentry, inode);
}