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
struct hfsc_class {int /*<<< orphan*/  rate_est; int /*<<< orphan*/  bstats; int /*<<< orphan*/  qdisc; int /*<<< orphan*/  filter_list; } ;
struct hfsc_sched {struct hfsc_class root; } ;
struct Qdisc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct hfsc_class*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct hfsc_sched* FUNC3 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct Qdisc *sch, struct hfsc_class *cl)
{
	struct hfsc_sched *q = FUNC3(sch);

	FUNC4(&cl->filter_list);
	FUNC2(cl->qdisc);
	FUNC0(&cl->bstats, &cl->rate_est);
	if (cl != &q->root)
		FUNC1(cl);
}