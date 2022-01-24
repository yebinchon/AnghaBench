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
struct qfq_sched {int /*<<< orphan*/  clhash; } ;
struct qfq_class {scalar_t__ filter_cnt; scalar_t__ refcnt; int /*<<< orphan*/  common; } ;
struct Qdisc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EBUSY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct qfq_sched* FUNC2 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC3 (struct qfq_class*) ; 
 int /*<<< orphan*/  FUNC4 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC5 (struct Qdisc*) ; 

__attribute__((used)) static int FUNC6(struct Qdisc *sch, unsigned long arg)
{
	struct qfq_sched *q = FUNC2(sch);
	struct qfq_class *cl = (struct qfq_class *)arg;

	if (cl->filter_cnt > 0)
		return -EBUSY;

	FUNC4(sch);

	FUNC3(cl);
	FUNC1(&q->clhash, &cl->common);

	FUNC0(--cl->refcnt == 0);
	/*
	 * This shouldn't happen: we "hold" one cops->get() when called
	 * from tc_ctl_tclass; the destroy method is done from cops->put().
	 */

	FUNC5(sch);
	return 0;
}