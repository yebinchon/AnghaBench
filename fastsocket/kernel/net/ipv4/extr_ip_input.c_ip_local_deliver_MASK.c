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
struct sk_buff {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int frag_off; } ;

/* Variables and functions */
 int /*<<< orphan*/  IP_DEFRAG_LOCAL_DELIVER ; 
 int IP_MF ; 
 int IP_OFFSET ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NF_INET_LOCAL_IN ; 
 int /*<<< orphan*/  PF_INET ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  ip_local_deliver_finish ; 

int FUNC4(struct sk_buff *skb)
{
	/*
	 *	Reassemble IP fragments.
	 */

	if (FUNC3(skb)->frag_off & FUNC1(IP_MF | IP_OFFSET)) {
		if (FUNC2(skb, IP_DEFRAG_LOCAL_DELIVER))
			return 0;
	}

	return FUNC0(PF_INET, NF_INET_LOCAL_IN, skb, skb->dev, NULL,
		       ip_local_deliver_finish);
}