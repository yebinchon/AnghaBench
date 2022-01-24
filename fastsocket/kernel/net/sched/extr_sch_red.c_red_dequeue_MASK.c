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
struct sk_buff {int dummy; } ;
struct red_sched_data {int /*<<< orphan*/  parms; struct Qdisc* qdisc; } ;
struct TYPE_2__ {int /*<<< orphan*/  qlen; } ;
struct Qdisc {TYPE_1__ q; struct sk_buff* (* dequeue ) (struct Qdisc*) ;} ;

/* Variables and functions */
 struct red_sched_data* FUNC0 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC3 (struct Qdisc*) ; 

__attribute__((used)) static struct sk_buff * FUNC4(struct Qdisc* sch)
{
	struct sk_buff *skb;
	struct red_sched_data *q = FUNC0(sch);
	struct Qdisc *child = q->qdisc;

	skb = child->dequeue(child);
	if (skb)
		sch->q.qlen--;
	else if (!FUNC1(&q->parms))
		FUNC2(&q->parms);

	return skb;
}