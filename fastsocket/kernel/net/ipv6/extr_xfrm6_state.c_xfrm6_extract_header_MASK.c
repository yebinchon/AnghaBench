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
struct ipv6hdr {int /*<<< orphan*/  flow_lbl; int /*<<< orphan*/  hop_limit; } ;
struct TYPE_2__ {int ihl; int /*<<< orphan*/  flow_lbl; scalar_t__ optlen; int /*<<< orphan*/  ttl; int /*<<< orphan*/  tos; int /*<<< orphan*/  frag_off; scalar_t__ id; } ;

/* Variables and functions */
 int /*<<< orphan*/  IP_DF ; 
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ipv6hdr*) ; 
 struct ipv6hdr* FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC5(struct sk_buff *skb)
{
	struct ipv6hdr *iph = FUNC3(skb);

	FUNC0(skb)->ihl = sizeof(*iph);
	FUNC0(skb)->id = 0;
	FUNC0(skb)->frag_off = FUNC1(IP_DF);
	FUNC0(skb)->tos = FUNC2(iph);
	FUNC0(skb)->ttl = iph->hop_limit;
	FUNC0(skb)->optlen = 0;
	FUNC4(FUNC0(skb)->flow_lbl, iph->flow_lbl,
	       sizeof(FUNC0(skb)->flow_lbl));

	return 0;
}