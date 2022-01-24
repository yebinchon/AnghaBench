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
struct list_head {int /*<<< orphan*/  prev; int /*<<< orphan*/ * next; } ;
struct timer_list {struct list_head entry; } ;

/* Variables and functions */
 int /*<<< orphan*/  LIST_POISON2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct timer_list*) ; 

__attribute__((used)) static inline void FUNC2(struct timer_list *timer,
				int clear_pending)
{
	struct list_head *entry = &timer->entry;

	FUNC1(timer);

	FUNC0(entry->prev, entry->next);
	if (clear_pending)
		entry->next = NULL;
	entry->prev = LIST_POISON2;
}