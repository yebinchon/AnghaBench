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
struct inode {int /*<<< orphan*/  i_dentry; } ;
struct dentry {struct inode* d_inode; int /*<<< orphan*/  d_alias; int /*<<< orphan*/  d_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DCACHE_NEED_AUTOMOUNT ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct dentry *dentry, struct inode *inode)
{
	if (inode) {
		if (FUNC3(FUNC0(inode)))
			dentry->d_flags |= DCACHE_NEED_AUTOMOUNT;
		FUNC2(&dentry->d_alias, &inode->i_dentry);
	}
	dentry->d_inode = inode;
	FUNC1(dentry, inode);
}