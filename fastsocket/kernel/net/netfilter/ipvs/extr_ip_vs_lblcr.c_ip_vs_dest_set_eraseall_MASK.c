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
struct ip_vs_dest_set {int /*<<< orphan*/  lock; struct ip_vs_dest_list* list; } ;
struct ip_vs_dest_list {TYPE_1__* dest; struct ip_vs_dest_list* next; } ;
struct TYPE_2__ {int /*<<< orphan*/  refcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ip_vs_dest_list*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct ip_vs_dest_set *set)
{
	struct ip_vs_dest_list *e, **ep;

	FUNC2(&set->lock);
	for (ep=&set->list, e=*ep; e!=NULL; e=*ep) {
		*ep = e->next;
		/*
		 * We don't kfree dest because it is refered either
		 * by its service or by the trash dest list.
		 */
		FUNC0(&e->dest->refcnt);
		FUNC1(e);
	}
	FUNC3(&set->lock);
}