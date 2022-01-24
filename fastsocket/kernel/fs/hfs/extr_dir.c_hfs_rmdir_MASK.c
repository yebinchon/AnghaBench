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
struct inode {int i_size; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_ino; } ;
struct dentry {int /*<<< orphan*/  d_name; struct inode* d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  CURRENT_TIME_SEC ; 
 int ENOTEMPTY ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct inode*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 

__attribute__((used)) static int FUNC4(struct inode *dir, struct dentry *dentry)
{
	struct inode *inode;
	int res;

	inode = dentry->d_inode;
	if (inode->i_size != 2)
		return -ENOTEMPTY;
	res = FUNC1(inode->i_ino, dir, &dentry->d_name);
	if (res)
		return res;
	FUNC0(inode);
	inode->i_ctime = CURRENT_TIME_SEC;
	FUNC2(inode);
	FUNC3(inode);
	return 0;
}