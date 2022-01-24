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
struct iphdr {int ihl; int /*<<< orphan*/  ttl; int /*<<< orphan*/  tos; int /*<<< orphan*/  frag_off; int /*<<< orphan*/  id; } ;
struct TYPE_2__ {int ihl; int optlen; int /*<<< orphan*/  flow_lbl; int /*<<< orphan*/  ttl; int /*<<< orphan*/  tos; int /*<<< orphan*/  frag_off; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 struct iphdr* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC3(struct sk_buff *skb)
{
	struct iphdr *iph = FUNC1(skb);

	FUNC0(skb)->ihl = sizeof(*iph);
	FUNC0(skb)->id = iph->id;
	FUNC0(skb)->frag_off = iph->frag_off;
	FUNC0(skb)->tos = iph->tos;
	FUNC0(skb)->ttl = iph->ttl;
	FUNC0(skb)->optlen = iph->ihl * 4 - sizeof(*iph);
	FUNC2(FUNC0(skb)->flow_lbl, 0,
	       sizeof(FUNC0(skb)->flow_lbl));

	return 0;
}