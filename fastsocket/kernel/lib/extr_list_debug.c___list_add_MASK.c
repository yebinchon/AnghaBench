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
struct list_head {struct list_head* next; struct list_head* prev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,struct list_head*,struct list_head*,struct list_head*) ; 

void FUNC1(struct list_head *new,
			      struct list_head *prev,
			      struct list_head *next)
{
	FUNC0(next->prev != prev,
		"list_add corruption. next->prev should be "
		"prev (%p), but was %p. (next=%p).\n",
		prev, next->prev, next);
	FUNC0(prev->next != next,
		"list_add corruption. prev->next should be "
		"next (%p), but was %p. (prev=%p).\n",
		next, prev->next, prev);
	next->prev = new;
	new->next = next;
	new->prev = prev;
	prev->next = new;
}