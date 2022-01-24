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
struct fsnotify_mark_entry {void (* free_mark ) (struct fsnotify_mark_entry*) ;int /*<<< orphan*/ * inode; scalar_t__ mask; int /*<<< orphan*/ * group; int /*<<< orphan*/  i_list; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct fsnotify_mark_entry *entry,
			void (*free_mark)(struct fsnotify_mark_entry *entry))

{
	FUNC2(&entry->lock);
	FUNC1(&entry->refcnt, 1);
	FUNC0(&entry->i_list);
	entry->group = NULL;
	entry->mask = 0;
	entry->inode = NULL;
	entry->free_mark = free_mark;
}