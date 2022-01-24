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
struct TYPE_2__ {int /*<<< orphan*/  i_mmap_nonlinear; int /*<<< orphan*/  i_mmap; int /*<<< orphan*/  private_lock; int /*<<< orphan*/  private_list; int /*<<< orphan*/  i_mmap_lock; int /*<<< orphan*/  tree_lock; int /*<<< orphan*/  page_tree; } ;
struct inode {int /*<<< orphan*/  i_fsnotify_mark_entries; int /*<<< orphan*/  inotify_mutex; int /*<<< orphan*/  inotify_watches; TYPE_1__ i_data; int /*<<< orphan*/  i_devices; int /*<<< orphan*/  i_dentry; int /*<<< orphan*/  i_hash; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void FUNC9(struct inode *inode)
{
	FUNC6(inode, 0, sizeof(*inode));
	FUNC1(&inode->i_hash);
	FUNC2(&inode->i_dentry);
	FUNC2(&inode->i_devices);
	FUNC3(&inode->i_data.page_tree, GFP_ATOMIC);
	FUNC8(&inode->i_data.tree_lock);
	FUNC8(&inode->i_data.i_mmap_lock);
	FUNC2(&inode->i_data.private_list);
	FUNC8(&inode->i_data.private_lock);
	FUNC4(&inode->i_data.i_mmap);
	FUNC2(&inode->i_data.i_mmap_nonlinear);
	FUNC5(inode);
#ifdef CONFIG_INOTIFY
	INIT_LIST_HEAD(&inode->inotify_watches);
	mutex_init(&inode->inotify_mutex);
#endif
#ifdef CONFIG_FSNOTIFY
	INIT_HLIST_HEAD(&inode->i_fsnotify_mark_entries);
#endif
}