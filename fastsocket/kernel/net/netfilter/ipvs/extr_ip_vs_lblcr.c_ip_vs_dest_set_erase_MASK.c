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
struct ip_vs_dest_set {int /*<<< orphan*/  lastmod; int /*<<< orphan*/  size; struct ip_vs_dest_list* list; } ;
struct ip_vs_dest_list {struct ip_vs_dest_list* next; struct ip_vs_dest* dest; } ;
struct ip_vs_dest {int /*<<< orphan*/  refcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC1 (struct ip_vs_dest_list*) ; 

__attribute__((used)) static void
FUNC2(struct ip_vs_dest_set *set, struct ip_vs_dest *dest)
{
	struct ip_vs_dest_list *e, **ep;

	for (ep=&set->list, e=*ep; e!=NULL; e=*ep) {
		if (e->dest == dest) {
			/* HIT */
			*ep = e->next;
			FUNC0(&set->size);
			set->lastmod = jiffies;
			FUNC0(&e->dest->refcnt);
			FUNC1(e);
			break;
		}
		ep = &e->next;
	}
}