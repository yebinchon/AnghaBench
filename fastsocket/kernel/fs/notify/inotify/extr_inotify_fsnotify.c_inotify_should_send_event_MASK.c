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
struct inode {int /*<<< orphan*/  i_lock; } ;
struct fsnotify_mark_entry {int mask; } ;
struct fsnotify_group {int dummy; } ;
typedef  int __u32 ;

/* Variables and functions */
 int FS_EVENT_ON_CHILD ; 
 struct fsnotify_mark_entry* FUNC0 (struct fsnotify_group*,struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct fsnotify_mark_entry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC4(struct fsnotify_group *group, struct inode *inode, __u32 mask)
{
	struct fsnotify_mark_entry *entry;
	bool send;

	FUNC2(&inode->i_lock);
	entry = FUNC0(group, inode);
	FUNC3(&inode->i_lock);
	if (!entry)
		return false;

	mask = (mask & ~FS_EVENT_ON_CHILD);
	send = (entry->mask & mask);

	/* find took a reference */
	FUNC1(entry);

	return send;
}