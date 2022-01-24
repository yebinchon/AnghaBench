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
struct sk_buff {int /*<<< orphan*/  dev; } ;
struct rps_dev_flow {int /*<<< orphan*/  last_qtail; } ;

/* Variables and functions */
 int FUNC0 (struct sk_buff*) ; 
 scalar_t__ enable_rps_framework ; 
 int FUNC1 (struct sk_buff*,int,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct sk_buff*,struct rps_dev_flow**) ; 
 int FUNC3 (struct sk_buff*) ; 

int FUNC4(struct sk_buff *skb)
{
	struct rps_dev_flow voidflow, *rflow = &voidflow;
	int cpu = -1, ret;

	if (enable_rps_framework)
		cpu = FUNC3(skb);

	//if (enable_direct_tcp)
	//	netif_direct_tcp(skb);
	//if (enable_receive_flow_deliver)
	//	cpu = get_rfd_cpu(skb);
	//else if (enable_receive_cpu_selection)
	//	cpu = get_rcs_cpu(skb);
		
	if (cpu == -1)
		cpu = FUNC2(skb->dev, skb, &rflow);

	if (cpu >= 0)
		ret = FUNC1(skb, cpu, &rflow->last_qtail);
	else
		ret = FUNC0(skb);

	return ret;
}