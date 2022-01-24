#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct prio_sched_data {struct Qdisc** queues; } ;
struct gnet_dump {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  qlen; } ;
struct TYPE_3__ {int /*<<< orphan*/  qlen; } ;
struct Qdisc {TYPE_2__ qstats; int /*<<< orphan*/  bstats; TYPE_1__ q; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct gnet_dump*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct gnet_dump*,TYPE_2__*) ; 
 struct prio_sched_data* FUNC2 (struct Qdisc*) ; 

__attribute__((used)) static int FUNC3(struct Qdisc *sch, unsigned long cl,
				 struct gnet_dump *d)
{
	struct prio_sched_data *q = FUNC2(sch);
	struct Qdisc *cl_q;

	cl_q = q->queues[cl - 1];
	cl_q->qstats.qlen = cl_q->q.qlen;
	if (FUNC0(d, &cl_q->bstats) < 0 ||
	    FUNC1(d, &cl_q->qstats) < 0)
		return -1;

	return 0;
}