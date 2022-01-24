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
struct TYPE_3__ {int /*<<< orphan*/  classid; } ;
struct cbq_class {scalar_t__ police; struct Qdisc* q; TYPE_1__ common; } ;
struct TYPE_4__ {int /*<<< orphan*/  qlen; } ;
struct Qdisc {TYPE_2__ q; int /*<<< orphan*/  reshape_fail; int /*<<< orphan*/  dev_queue; } ;

/* Variables and functions */
 int ENOBUFS ; 
 scalar_t__ TC_POLICE_RECLASSIFY ; 
 int /*<<< orphan*/  cbq_reshape_fail ; 
 int /*<<< orphan*/  pfifo_qdisc_ops ; 
 struct Qdisc* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC2 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC3 (struct Qdisc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC5 (struct Qdisc*) ; 

__attribute__((used)) static int FUNC6(struct Qdisc *sch, unsigned long arg, struct Qdisc *new,
		     struct Qdisc **old)
{
	struct cbq_class *cl = (struct cbq_class*)arg;

	if (new == NULL) {
		new = FUNC0(FUNC1(sch), sch->dev_queue,
					&pfifo_qdisc_ops, cl->common.classid);
		if (new == NULL)
			return -ENOBUFS;
	} else {
#ifdef CONFIG_NET_CLS_ACT
		if (cl->police == TC_POLICE_RECLASSIFY)
			new->reshape_fail = cbq_reshape_fail;
#endif
	}
	FUNC4(sch);
	*old = cl->q;
	cl->q = new;
	FUNC3(*old, (*old)->q.qlen);
	FUNC2(*old);
	FUNC5(sch);

	return 0;
}