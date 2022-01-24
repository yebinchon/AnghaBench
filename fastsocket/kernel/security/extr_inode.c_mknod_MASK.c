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
struct inode {int /*<<< orphan*/  i_sb; } ;
struct dentry {scalar_t__ d_inode; } ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int EEXIST ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 struct inode* FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct inode *dir, struct dentry *dentry,
			 int mode, dev_t dev)
{
	struct inode *inode;
	int error = -EPERM;

	if (dentry->d_inode)
		return -EEXIST;

	inode = FUNC2(dir->i_sb, mode, dev);
	if (inode) {
		FUNC0(dentry, inode);
		FUNC1(dentry);
		error = 0;
	}
	return error;
}