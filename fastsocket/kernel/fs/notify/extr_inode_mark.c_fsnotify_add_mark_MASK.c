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
struct inode {int /*<<< orphan*/  i_lock; int /*<<< orphan*/  i_fsnotify_mark_entries; } ;
struct fsnotify_mark_entry {int /*<<< orphan*/  lock; int /*<<< orphan*/  g_list; int /*<<< orphan*/  i_list; struct inode* inode; struct fsnotify_group* group; } ;
struct fsnotify_group {int /*<<< orphan*/  mark_lock; int /*<<< orphan*/  num_marks; int /*<<< orphan*/  mark_entries; } ;

/* Variables and functions */
 int EEXIST ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct fsnotify_mark_entry* FUNC2 (struct fsnotify_group*,struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct fsnotify_mark_entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct fsnotify_mark_entry*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct inode* FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int) ; 

int FUNC13(struct fsnotify_mark_entry *entry,
		      struct fsnotify_group *group, struct inode *inode)
{
	struct fsnotify_mark_entry *lentry;
	int ret = 0;

	inode = FUNC7(inode);
	if (FUNC12(!inode))
		return -EINVAL;

	/*
	 * LOCKING ORDER!!!!
	 * entry->lock
	 * group->mark_lock
	 * inode->i_lock
	 */
	FUNC10(&entry->lock);
	FUNC10(&group->mark_lock);
	FUNC10(&inode->i_lock);

	lentry = FUNC2(group, inode);
	if (!lentry) {
		entry->group = group;
		entry->inode = inode;

		FUNC6(&entry->i_list, &inode->i_fsnotify_mark_entries);
		FUNC9(&entry->g_list, &group->mark_entries);

		FUNC3(entry); /* for i_list and g_list */

		FUNC1(&group->num_marks);

		FUNC5(inode);
	}

	FUNC11(&inode->i_lock);
	FUNC11(&group->mark_lock);
	FUNC11(&entry->lock);

	if (lentry) {
		ret = -EEXIST;
		FUNC8(inode);
		FUNC4(lentry);
	} else {
		FUNC0(inode);
	}

	return ret;
}