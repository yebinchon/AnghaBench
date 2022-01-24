#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct cbq_sched_data {struct cbq_class** active; } ;
struct cbq_class {TYPE_4__* q; struct cbq_class* next_alive; } ;
struct TYPE_6__ {int /*<<< orphan*/  qlen; } ;
struct Qdisc {TYPE_2__ q; } ;
struct TYPE_7__ {int /*<<< orphan*/  qlen; } ;
struct TYPE_8__ {TYPE_3__ q; TYPE_1__* ops; } ;
struct TYPE_5__ {unsigned int (* drop ) (TYPE_4__*) ;} ;

/* Variables and functions */
 int TC_CBQ_MAXPRIO ; 
 int /*<<< orphan*/  FUNC0 (struct cbq_class*) ; 
 struct cbq_sched_data* FUNC1 (struct Qdisc*) ; 
 unsigned int FUNC2 (TYPE_4__*) ; 

__attribute__((used)) static unsigned int FUNC3(struct Qdisc* sch)
{
	struct cbq_sched_data *q = FUNC1(sch);
	struct cbq_class *cl, *cl_head;
	int prio;
	unsigned int len;

	for (prio = TC_CBQ_MAXPRIO; prio >= 0; prio--) {
		if ((cl_head = q->active[prio]) == NULL)
			continue;

		cl = cl_head;
		do {
			if (cl->q->ops->drop && (len = cl->q->ops->drop(cl->q))) {
				sch->q.qlen--;
				if (!cl->q->q.qlen)
					FUNC0(cl);
				return len;
			}
		} while ((cl = cl->next_alive) != cl_head);
	}
	return 0;
}