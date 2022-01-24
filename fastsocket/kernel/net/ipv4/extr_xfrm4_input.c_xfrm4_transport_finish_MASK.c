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
struct sk_buff {int /*<<< orphan*/  dev; int /*<<< orphan*/  len; scalar_t__ data; } ;
struct iphdr {int protocol; int /*<<< orphan*/  tot_len; } ;
struct TYPE_2__ {int protocol; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NF_INET_PRE_ROUTING ; 
 int /*<<< orphan*/  PF_INET ; 
 TYPE_1__* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct iphdr* FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct iphdr*) ; 
 scalar_t__ FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  xfrm4_rcv_encap_finish ; 

int FUNC7(struct sk_buff *skb, int async)
{
	struct iphdr *iph = FUNC4(skb);

	iph->protocol = FUNC1(skb)->protocol;

#ifndef CONFIG_NETFILTER
	if (!async)
		return -iph->protocol;
#endif

	FUNC2(skb, skb->data - FUNC6(skb));
	iph->tot_len = FUNC3(skb->len);
	FUNC5(iph);

	FUNC0(PF_INET, NF_INET_PRE_ROUTING, skb, skb->dev, NULL,
		xfrm4_rcv_encap_finish);
	return 0;
}