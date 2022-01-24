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
struct tbf_sched_data {struct Qdisc* qdisc; } ;
struct TYPE_2__ {int /*<<< orphan*/  qlen; } ;
struct Qdisc {TYPE_1__ q; } ;

/* Variables and functions */
 struct Qdisc noop_qdisc ; 
 struct tbf_sched_data* FUNC0 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC1 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC2 (struct Qdisc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC4 (struct Qdisc*) ; 

__attribute__((used)) static int FUNC5(struct Qdisc *sch, unsigned long arg, struct Qdisc *new,
		     struct Qdisc **old)
{
	struct tbf_sched_data *q = FUNC0(sch);

	if (new == NULL)
		new = &noop_qdisc;

	FUNC3(sch);
	*old = q->qdisc;
	q->qdisc = new;
	FUNC2(*old, (*old)->q.qlen);
	FUNC1(*old);
	FUNC4(sch);

	return 0;
}