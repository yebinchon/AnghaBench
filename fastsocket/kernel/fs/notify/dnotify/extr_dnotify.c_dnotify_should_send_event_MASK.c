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
struct inode {int /*<<< orphan*/  i_lock; int /*<<< orphan*/  i_mode; } ;
struct fsnotify_mark_entry {int mask; } ;
struct fsnotify_group {int dummy; } ;
typedef  int __u32 ;

/* Variables and functions */
 int FS_EVENT_ON_CHILD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct fsnotify_mark_entry* FUNC1 (struct fsnotify_group*,struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct fsnotify_mark_entry*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC5(struct fsnotify_group *group,
				      struct inode *inode, __u32 mask)
{
	struct fsnotify_mark_entry *entry;
	bool send;

	/* !dir_notify_enable should never get here, don't waste time checking
	if (!dir_notify_enable)
		return 0; */

	/* not a dir, dnotify doesn't care */
	if (!FUNC0(inode->i_mode))
		return false;

	FUNC3(&inode->i_lock);
	entry = FUNC1(group, inode);
	FUNC4(&inode->i_lock);

	/* no mark means no dnotify watch */
	if (!entry)
		return false;

	mask = (mask & ~FS_EVENT_ON_CHILD);
	send = (mask & entry->mask);

	FUNC2(entry); /* matches fsnotify_find_mark_entry */

	return send;
}