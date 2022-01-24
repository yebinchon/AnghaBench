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
struct inode {int i_fsnotify_mask; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;
struct dentry {int d_flags; TYPE_1__ d_name; struct inode* d_inode; int /*<<< orphan*/  d_lock; struct dentry* d_parent; } ;
typedef  int __u32 ;

/* Variables and functions */
 int DCACHE_FSNOTIFY_PARENT_WATCHED ; 
 int /*<<< orphan*/  FSNOTIFY_EVENT_INODE ; 
 int FS_EVENT_ON_CHILD ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,int,struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int) ; 

void FUNC8(struct dentry *dentry, __u32 mask)
{
	struct dentry *parent;
	struct inode *p_inode;
	bool send = false;
	bool should_update_children = false;

	if (!(dentry->d_flags & DCACHE_FSNOTIFY_PARENT_WATCHED))
		return;

	FUNC5(&dentry->d_lock);
	parent = dentry->d_parent;
	p_inode = parent->d_inode;

	if (FUNC4(p_inode)) {
		if (p_inode->i_fsnotify_mask & mask) {
			FUNC1(parent);
			send = true;
		}
	} else {
		/*
		 * The parent doesn't care about events on it's children but
		 * at least one child thought it did.  We need to run all the
		 * children and update their d_flags to let them know p_inode
		 * doesn't care about them any more.
		 */
		FUNC1(parent);
		should_update_children = true;
	}

	FUNC6(&dentry->d_lock);

	if (send) {
		/* we are notifying a parent so come up with the new mask which
		 * specifies these are events which came from a child. */
		mask |= FS_EVENT_ON_CHILD;

		FUNC3(p_inode, mask, dentry->d_inode, FSNOTIFY_EVENT_INODE,
			 dentry->d_name.name, 0);
		FUNC2(parent);
	}

	if (FUNC7(should_update_children)) {
		FUNC0(p_inode);
		FUNC2(parent);
	}
}