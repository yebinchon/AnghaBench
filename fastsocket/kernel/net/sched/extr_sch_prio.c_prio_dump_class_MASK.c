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
struct tcmsg {int /*<<< orphan*/  tcm_info; int /*<<< orphan*/  tcm_handle; } ;
struct sk_buff {int dummy; } ;
struct prio_sched_data {TYPE_1__** queues; } ;
struct Qdisc {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 struct prio_sched_data* FUNC1 (struct Qdisc*) ; 

__attribute__((used)) static int FUNC2(struct Qdisc *sch, unsigned long cl, struct sk_buff *skb,
			   struct tcmsg *tcm)
{
	struct prio_sched_data *q = FUNC1(sch);

	tcm->tcm_handle |= FUNC0(cl);
	tcm->tcm_info = q->queues[cl-1]->handle;
	return 0;
}