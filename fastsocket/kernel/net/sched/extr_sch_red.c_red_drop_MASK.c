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
struct TYPE_5__ {int /*<<< orphan*/  other; } ;
struct red_sched_data {int /*<<< orphan*/  parms; TYPE_1__ stats; struct Qdisc* qdisc; } ;
struct TYPE_7__ {int /*<<< orphan*/  qlen; } ;
struct TYPE_6__ {int /*<<< orphan*/  drops; } ;
struct Qdisc {TYPE_3__ q; TYPE_2__ qstats; TYPE_4__* ops; } ;
struct TYPE_8__ {unsigned int (* drop ) (struct Qdisc*) ;} ;

/* Variables and functions */
 struct red_sched_data* FUNC0 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC3 (struct Qdisc*) ; 

__attribute__((used)) static unsigned int FUNC4(struct Qdisc* sch)
{
	struct red_sched_data *q = FUNC0(sch);
	struct Qdisc *child = q->qdisc;
	unsigned int len;

	if (child->ops->drop && (len = child->ops->drop(child)) > 0) {
		q->stats.other++;
		sch->qstats.drops++;
		sch->q.qlen--;
		return len;
	}

	if (!FUNC1(&q->parms))
		FUNC2(&q->parms);

	return 0;
}