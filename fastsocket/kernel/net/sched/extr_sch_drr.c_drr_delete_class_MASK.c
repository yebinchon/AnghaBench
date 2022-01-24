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
struct drr_sched {int /*<<< orphan*/  clhash; } ;
struct drr_class {scalar_t__ filter_cnt; scalar_t__ refcnt; int /*<<< orphan*/  common; } ;
struct Qdisc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EBUSY ; 
 int /*<<< orphan*/  FUNC1 (struct drr_class*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct drr_sched* FUNC3 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC4 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC5 (struct Qdisc*) ; 

__attribute__((used)) static int FUNC6(struct Qdisc *sch, unsigned long arg)
{
	struct drr_sched *q = FUNC3(sch);
	struct drr_class *cl = (struct drr_class *)arg;

	if (cl->filter_cnt > 0)
		return -EBUSY;

	FUNC4(sch);

	FUNC1(cl);
	FUNC2(&q->clhash, &cl->common);

	FUNC0(--cl->refcnt == 0);
	/*
	 * This shouldn't happen: we "hold" one cops->get() when called
	 * from tc_ctl_tclass; the destroy method is done from cops->put().
	 */

	FUNC5(sch);
	return 0;
}