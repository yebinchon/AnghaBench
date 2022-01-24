#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct tbf_sched_data {scalar_t__ max_size; int /*<<< orphan*/  qdisc; } ;
struct sk_buff {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  packets; int /*<<< orphan*/  bytes; } ;
struct TYPE_5__ {int /*<<< orphan*/  qlen; } ;
struct TYPE_4__ {int /*<<< orphan*/  drops; } ;
struct Qdisc {TYPE_3__ bstats; TYPE_2__ q; TYPE_1__ qstats; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct sk_buff*) ; 
 struct tbf_sched_data* FUNC3 (struct Qdisc*) ; 
 int FUNC4 (struct sk_buff*,struct Qdisc*) ; 
 scalar_t__ FUNC5 (struct sk_buff*) ; 
 int FUNC6 (struct sk_buff*,struct Qdisc*) ; 

__attribute__((used)) static int FUNC7(struct sk_buff *skb, struct Qdisc* sch)
{
	struct tbf_sched_data *q = FUNC3(sch);
	int ret;

	if (FUNC2(skb) > q->max_size) {
		if (FUNC5(skb))
			return FUNC6(skb, sch);
		return FUNC4(skb, sch);
	}
	ret = FUNC1(skb, q->qdisc);
	if (ret != 0) {
		if (FUNC0(ret))
			sch->qstats.drops++;
		return ret;
	}

	sch->q.qlen++;
	sch->bstats.bytes += FUNC2(skb);
	sch->bstats.packets++;
	return 0;
}