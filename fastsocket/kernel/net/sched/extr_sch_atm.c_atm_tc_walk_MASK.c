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
struct qdisc_walker {int stop; scalar_t__ count; scalar_t__ skip; scalar_t__ (* fn ) (struct Qdisc*,unsigned long,struct qdisc_walker*) ;} ;
struct atm_qdisc_data {struct atm_flow_data* flows; } ;
struct atm_flow_data {struct atm_flow_data* next; } ;
struct Qdisc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct Qdisc*,struct atm_qdisc_data*,struct qdisc_walker*) ; 
 struct atm_qdisc_data* FUNC1 (struct Qdisc*) ; 
 scalar_t__ FUNC2 (struct Qdisc*,unsigned long,struct qdisc_walker*) ; 

__attribute__((used)) static void FUNC3(struct Qdisc *sch, struct qdisc_walker *walker)
{
	struct atm_qdisc_data *p = FUNC1(sch);
	struct atm_flow_data *flow;

	FUNC0("atm_tc_walk(sch %p,[qdisc %p],walker %p)\n", sch, p, walker);
	if (walker->stop)
		return;
	for (flow = p->flows; flow; flow = flow->next) {
		if (walker->count >= walker->skip)
			if (walker->fn(sch, (unsigned long)flow, walker) < 0) {
				walker->stop = 1;
				break;
			}
		walker->count++;
	}
}