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
struct inode {int dummy; } ;
struct dentry {int /*<<< orphan*/  d_lock; int /*<<< orphan*/  d_flags; scalar_t__ d_inode; struct dentry* d_parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  DCACHE_INOTIFY_PARENT_WATCHED ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct dentry *entry, struct inode *inode)
{
	struct dentry *parent;

	if (!inode)
		return;

	FUNC1(&entry->d_lock);
	parent = entry->d_parent;
	if (parent->d_inode && FUNC0(parent->d_inode))
		entry->d_flags |= DCACHE_INOTIFY_PARENT_WATCHED;
	FUNC2(&entry->d_lock);
}