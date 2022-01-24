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
struct cbq_class {int /*<<< orphan*/  rate_est; int /*<<< orphan*/  bstats; int /*<<< orphan*/  R_tab; int /*<<< orphan*/  q; int /*<<< orphan*/  filter_list; int /*<<< orphan*/  filters; } ;
struct cbq_sched_data {struct cbq_class link; } ;
struct Qdisc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct cbq_class*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct cbq_sched_data* FUNC4 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct Qdisc *sch, struct cbq_class *cl)
{
	struct cbq_sched_data *q = FUNC4(sch);

	FUNC0(cl->filters);

	FUNC6(&cl->filter_list);
	FUNC3(cl->q);
	FUNC5(cl->R_tab);
	FUNC1(&cl->bstats, &cl->rate_est);
	if (cl != &q->link)
		FUNC2(cl);
}