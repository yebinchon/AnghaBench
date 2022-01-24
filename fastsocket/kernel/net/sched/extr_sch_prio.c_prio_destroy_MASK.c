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
struct prio_sched_data {int bands; int /*<<< orphan*/ * queues; int /*<<< orphan*/  filter_list; } ;
struct Qdisc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct prio_sched_data* FUNC1 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct Qdisc* sch)
{
	int prio;
	struct prio_sched_data *q = FUNC1(sch);

	FUNC2(&q->filter_list);
	for (prio=0; prio<q->bands; prio++)
		FUNC0(q->queues[prio]);
}