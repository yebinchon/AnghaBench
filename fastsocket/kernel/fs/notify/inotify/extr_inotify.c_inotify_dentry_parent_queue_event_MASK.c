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
typedef  int /*<<< orphan*/  u32 ;
struct inode {int dummy; } ;
struct dentry {int d_flags; int /*<<< orphan*/  d_lock; struct inode* d_inode; struct dentry* d_parent; } ;

/* Variables and functions */
 int DCACHE_INOTIFY_PARENT_WATCHED ; 
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,struct inode*) ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct dentry *dentry, u32 mask,
				       u32 cookie, const char *name)
{
	struct dentry *parent;
	struct inode *inode;

	if (!(dentry->d_flags & DCACHE_INOTIFY_PARENT_WATCHED))
		return;

	FUNC4(&dentry->d_lock);
	parent = dentry->d_parent;
	inode = parent->d_inode;

	if (FUNC3(inode)) {
		FUNC0(parent);
		FUNC5(&dentry->d_lock);
		FUNC2(inode, mask, cookie, name,
					  dentry->d_inode);
		FUNC1(parent);
	} else
		FUNC5(&dentry->d_lock);
}