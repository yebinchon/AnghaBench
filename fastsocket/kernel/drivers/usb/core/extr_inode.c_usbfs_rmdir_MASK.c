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
struct inode {int /*<<< orphan*/  i_mutex; int /*<<< orphan*/  i_flags; } ;
struct dentry {struct inode* d_inode; } ;

/* Variables and functions */
 int ENOTEMPTY ; 
 int /*<<< orphan*/  S_DEAD ; 
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct dentry*) ; 

__attribute__((used)) static int FUNC7(struct inode *dir, struct dentry *dentry)
{
	int error = -ENOTEMPTY;
	struct inode * inode = dentry->d_inode;

	FUNC4(&inode->i_mutex);
	FUNC1(dentry);
	if (FUNC6(dentry)) {
		FUNC3(dentry->d_inode);
		FUNC3(dentry->d_inode);
		FUNC2(dentry);
		inode->i_flags |= S_DEAD;
		FUNC3(dir);
		error = 0;
	}
	FUNC5(&inode->i_mutex);
	if (!error)
		FUNC0(dentry);
	FUNC2(dentry);
	return error;
}