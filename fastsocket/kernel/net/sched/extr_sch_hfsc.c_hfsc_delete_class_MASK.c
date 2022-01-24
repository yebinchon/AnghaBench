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
struct hfsc_class {scalar_t__ level; scalar_t__ filter_cnt; scalar_t__ refcnt; int /*<<< orphan*/  cl_common; int /*<<< orphan*/  cl_parent; int /*<<< orphan*/  siblings; } ;
struct hfsc_sched {int /*<<< orphan*/  clhash; struct hfsc_class root; } ;
struct Qdisc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EBUSY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct Qdisc*,struct hfsc_class*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct hfsc_sched* FUNC5 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC6 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC7 (struct Qdisc*) ; 

__attribute__((used)) static int
FUNC8(struct Qdisc *sch, unsigned long arg)
{
	struct hfsc_sched *q = FUNC5(sch);
	struct hfsc_class *cl = (struct hfsc_class *)arg;

	if (cl->level > 0 || cl->filter_cnt > 0 || cl == &q->root)
		return -EBUSY;

	FUNC6(sch);

	FUNC3(&cl->siblings);
	FUNC1(cl->cl_parent);

	FUNC2(sch, cl);
	FUNC4(&q->clhash, &cl->cl_common);

	FUNC0(--cl->refcnt == 0);
	/*
	 * This shouldn't happen: we "hold" one cops->get() when called
	 * from tc_ctl_tclass; the destroy method is done from cops->put().
	 */

	FUNC7(sch);
	return 0;
}