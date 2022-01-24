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
struct ipv6hdr {int version; int /*<<< orphan*/  hop_limit; int /*<<< orphan*/  nexthdr; int /*<<< orphan*/  flow_lbl; } ;
struct TYPE_2__ {int /*<<< orphan*/  ttl; int /*<<< orphan*/  tos; int /*<<< orphan*/  protocol; int /*<<< orphan*/  flow_lbl; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct ipv6hdr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ipv6hdr* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct sk_buff *skb)
{
	struct ipv6hdr *iph = FUNC2(skb);

	iph->version = 6;

	FUNC3(iph->flow_lbl, FUNC0(skb)->flow_lbl,
	       sizeof(iph->flow_lbl));
	iph->nexthdr = FUNC0(skb)->protocol;

	FUNC1(iph, 0, FUNC0(skb)->tos);
	iph->hop_limit = FUNC0(skb)->ttl;
}