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
struct sk_buff {int dummy; } ;
struct fifo_sched_data {scalar_t__ limit; } ;
struct Qdisc {int /*<<< orphan*/  q; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct sk_buff*,struct Qdisc*) ; 
 struct fifo_sched_data* FUNC2 (struct Qdisc*) ; 
 int FUNC3 (struct sk_buff*,struct Qdisc*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct sk_buff *skb, struct Qdisc* sch)
{
	struct fifo_sched_data *q = FUNC2(sch);

	if (FUNC0(FUNC4(&sch->q) < q->limit))
		return FUNC1(skb, sch);

	return FUNC3(skb, sch);
}