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
struct inode {int /*<<< orphan*/  i_lock; } ;
struct fsnotify_mark_entry {int /*<<< orphan*/  lock; struct fsnotify_group* group; int /*<<< orphan*/  g_list; struct inode* inode; int /*<<< orphan*/  i_list; int /*<<< orphan*/  refcnt; } ;
struct fsnotify_group {int /*<<< orphan*/  num_marks; TYPE_1__* ops; int /*<<< orphan*/  mark_lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* freeing_mark ) (struct fsnotify_mark_entry*,struct fsnotify_group*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct fsnotify_group*) ; 
 int /*<<< orphan*/  FUNC4 (struct fsnotify_mark_entry*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct fsnotify_mark_entry*,struct fsnotify_group*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 

void FUNC13(struct fsnotify_mark_entry *entry)
{
	struct fsnotify_group *group;
	struct inode *inode;

	FUNC9(&entry->lock);

	group = entry->group;
	inode = entry->inode;

	FUNC0(group && !inode);
	FUNC0(!group && inode);

	/* if !group something else already marked this to die */
	if (!group) {
		FUNC10(&entry->lock);
		return;
	}

	/* 1 from caller and 1 for being on i_list/g_list */
	FUNC0(FUNC2(&entry->refcnt) < 2);

	FUNC9(&group->mark_lock);
	FUNC9(&inode->i_lock);

	FUNC6(&entry->i_list);
	entry->inode = NULL;

	FUNC8(&entry->g_list);
	entry->group = NULL;

	FUNC4(entry); /* for i_list and g_list */

	/*
	 * this mark is now off the inode->i_fsnotify_mark_entries list and we
	 * hold the inode->i_lock, so this is the perfect time to update the
	 * inode->i_fsnotify_mask
	 */
	FUNC5(inode);

	FUNC10(&inode->i_lock);
	FUNC10(&group->mark_lock);
	FUNC10(&entry->lock);

	/*
	 * Some groups like to know that marks are being freed.  This is a
	 * callback to the group function to let it know that this entry
	 * is being freed.
	 */
	if (group->ops->freeing_mark)
		group->ops->freeing_mark(entry, group);

	/*
	 * __fsnotify_update_child_dentry_flags(inode);
	 *
	 * I really want to call that, but we can't, we have no idea if the inode
	 * still exists the second we drop the entry->lock.
	 *
	 * The next time an event arrive to this inode from one of it's children
	 * __fsnotify_parent will see that the inode doesn't care about it's
	 * children and will update all of these flags then.  So really this
	 * is just a lazy update (and could be a perf win...)
	 */


	FUNC7(inode);

	/*
	 * it's possible that this group tried to destroy itself, but this
	 * this mark was simultaneously being freed by inode.  If that's the
	 * case, we finish freeing the group here.
	 */
	if (FUNC12(FUNC1(&group->num_marks)))
		FUNC3(group);
}