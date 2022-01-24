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
typedef  int /*<<< orphan*/  u_int8_t ;
struct sk_buff {int ip_summed; int /*<<< orphan*/  len; int /*<<< orphan*/  csum; } ;
struct iphdr {int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;
typedef  int /*<<< orphan*/  __sum16 ;

/* Variables and functions */
#define  CHECKSUM_COMPLETE 129 
#define  CHECKSUM_NONE 128 
 int CHECKSUM_UNNECESSARY ; 
 unsigned int NF_INET_LOCAL_IN ; 
 unsigned int NF_INET_PRE_ROUTING ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct iphdr* FUNC4 (struct sk_buff*) ; 

__sum16 FUNC5(struct sk_buff *skb, unsigned int hook,
			    unsigned int dataoff, u_int8_t protocol)
{
	const struct iphdr *iph = FUNC4(skb);
	__sum16 csum = 0;

	switch (skb->ip_summed) {
	case CHECKSUM_COMPLETE:
		if (hook != NF_INET_PRE_ROUTING && hook != NF_INET_LOCAL_IN)
			break;
		if ((protocol == 0 && !FUNC1(skb->csum)) ||
		    !FUNC2(iph->saddr, iph->daddr,
				       skb->len - dataoff, protocol,
				       skb->csum)) {
			skb->ip_summed = CHECKSUM_UNNECESSARY;
			break;
		}
		/* fall through */
	case CHECKSUM_NONE:
		if (protocol == 0)
			skb->csum = 0;
		else
			skb->csum = FUNC3(iph->saddr, iph->daddr,
						       skb->len - dataoff,
						       protocol, 0);
		csum = FUNC0(skb);
	}
	return csum;
}