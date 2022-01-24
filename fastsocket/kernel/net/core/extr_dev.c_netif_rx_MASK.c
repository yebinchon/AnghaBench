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
struct TYPE_2__ {int /*<<< orphan*/  tv64; } ;
struct sk_buff {int /*<<< orphan*/  dev; TYPE_1__ tstamp; } ;
struct rps_dev_flow {int /*<<< orphan*/  last_qtail; } ;

/* Variables and functions */
 int NET_RX_DROP ; 
 int FUNC0 (struct sk_buff*,int,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct sk_buff*,struct rps_dev_flow**) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 scalar_t__ FUNC3 (struct sk_buff*) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 

int FUNC6(struct sk_buff *skb)
{
	struct rps_dev_flow voidflow, *rflow = &voidflow;
	int cpu;

	/* if netpoll wants it, pretend we never saw it */
	if (FUNC3(skb))
		return NET_RX_DROP;

	if (!skb->tstamp.tv64)
		FUNC2(skb);

	FUNC5(skb);
	cpu = FUNC1(skb->dev, skb, &rflow);
	if (cpu < 0)
		cpu = FUNC4();

	return FUNC0(skb, cpu, &rflow->last_qtail);
}