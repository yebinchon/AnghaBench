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
struct prio_sched_data {int /*<<< orphan*/ ** queues; } ;
struct nlattr {int dummy; } ;
struct Qdisc {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int TCQ_PRIO_BANDS ; 
 int /*<<< orphan*/  noop_qdisc ; 
 int FUNC0 (struct Qdisc*,struct nlattr*) ; 
 struct prio_sched_data* FUNC1 (struct Qdisc*) ; 

__attribute__((used)) static int FUNC2(struct Qdisc *sch, struct nlattr *opt)
{
	struct prio_sched_data *q = FUNC1(sch);
	int i;

	for (i=0; i<TCQ_PRIO_BANDS; i++)
		q->queues[i] = &noop_qdisc;

	if (opt == NULL) {
		return -EINVAL;
	} else {
		int err;

		if ((err= FUNC0(sch, opt)) != 0)
			return err;
	}
	return 0;
}