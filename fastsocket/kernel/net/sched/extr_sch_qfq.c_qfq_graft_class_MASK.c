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
struct TYPE_2__ {int /*<<< orphan*/  classid; } ;
struct qfq_class {struct Qdisc* qdisc; TYPE_1__ common; } ;
struct Qdisc {int /*<<< orphan*/  dev_queue; } ;

/* Variables and functions */
 struct Qdisc noop_qdisc ; 
 int /*<<< orphan*/  pfifo_qdisc_ops ; 
 struct Qdisc* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC2 (struct qfq_class*) ; 
 int /*<<< orphan*/  FUNC3 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC4 (struct Qdisc*) ; 

__attribute__((used)) static int FUNC5(struct Qdisc *sch, unsigned long arg,
			   struct Qdisc *new, struct Qdisc **old)
{
	struct qfq_class *cl = (struct qfq_class *)arg;

	if (new == NULL) {
		new = FUNC0(FUNC1(sch), sch->dev_queue,
					&pfifo_qdisc_ops, cl->common.classid);
		if (new == NULL)
			new = &noop_qdisc;
	}

	FUNC3(sch);
	FUNC2(cl);
	*old = cl->qdisc;
	cl->qdisc = new;
	FUNC4(sch);
	return 0;
}