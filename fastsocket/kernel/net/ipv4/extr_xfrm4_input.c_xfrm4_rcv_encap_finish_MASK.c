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
struct iphdr {int /*<<< orphan*/  tos; int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; } ;

/* Variables and functions */
 int NET_RX_DROP ; 
 int FUNC0 (struct sk_buff*) ; 
 struct iphdr* FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/ * FUNC4 (struct sk_buff*) ; 

__attribute__((used)) static inline int FUNC5(struct sk_buff *skb)
{
	if (FUNC4(skb) == NULL) {
		const struct iphdr *iph = FUNC1(skb);

		if (FUNC2(skb, iph->daddr, iph->saddr, iph->tos,
				   skb->dev))
			goto drop;
	}
	return FUNC0(skb);
drop:
	FUNC3(skb);
	return NET_RX_DROP;
}