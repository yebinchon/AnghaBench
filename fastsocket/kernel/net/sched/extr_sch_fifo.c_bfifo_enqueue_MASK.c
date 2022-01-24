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
struct fifo_sched_data {scalar_t__ limit; } ;
struct TYPE_2__ {scalar_t__ backlog; } ;
struct Qdisc {TYPE_1__ qstats; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct sk_buff*,struct Qdisc*) ; 
 scalar_t__ FUNC2 (struct sk_buff*) ; 
 struct fifo_sched_data* FUNC3 (struct Qdisc*) ; 
 int FUNC4 (struct sk_buff*,struct Qdisc*) ; 

__attribute__((used)) static int FUNC5(struct sk_buff *skb, struct Qdisc* sch)
{
	struct fifo_sched_data *q = FUNC3(sch);

	if (FUNC0(sch->qstats.backlog + FUNC2(skb) <= q->limit))
		return FUNC1(skb, sch);

	return FUNC4(skb, sch);
}