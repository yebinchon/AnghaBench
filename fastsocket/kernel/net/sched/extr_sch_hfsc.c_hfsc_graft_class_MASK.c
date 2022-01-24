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
struct hfsc_class {scalar_t__ level; struct Qdisc* qdisc; TYPE_1__ cl_common; } ;
struct Qdisc {int /*<<< orphan*/  dev_queue; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct Qdisc*,struct hfsc_class*) ; 
 struct Qdisc noop_qdisc ; 
 int /*<<< orphan*/  pfifo_qdisc_ops ; 
 struct Qdisc* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC3 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC4 (struct Qdisc*) ; 

__attribute__((used)) static int
FUNC5(struct Qdisc *sch, unsigned long arg, struct Qdisc *new,
		 struct Qdisc **old)
{
	struct hfsc_class *cl = (struct hfsc_class *)arg;

	if (cl->level > 0)
		return -EINVAL;
	if (new == NULL) {
		new = FUNC1(FUNC2(sch), sch->dev_queue,
					&pfifo_qdisc_ops,
					cl->cl_common.classid);
		if (new == NULL)
			new = &noop_qdisc;
	}

	FUNC3(sch);
	FUNC0(sch, cl);
	*old = cl->qdisc;
	cl->qdisc = new;
	FUNC4(sch);
	return 0;
}