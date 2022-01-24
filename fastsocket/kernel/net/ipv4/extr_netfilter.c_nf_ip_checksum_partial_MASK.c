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
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct iphdr* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static __sum16 FUNC4(struct sk_buff *skb, unsigned int hook,
				      unsigned int dataoff, unsigned int len,
				      u_int8_t protocol)
{
	const struct iphdr *iph = FUNC2(skb);
	__sum16 csum = 0;

	switch (skb->ip_summed) {
	case CHECKSUM_COMPLETE:
		if (len == skb->len - dataoff)
			return FUNC3(skb, hook, dataoff, protocol);
		/* fall through */
	case CHECKSUM_NONE:
		skb->csum = FUNC1(iph->saddr, iph->daddr, protocol,
					       skb->len - dataoff, 0);
		skb->ip_summed = CHECKSUM_NONE;
		csum = FUNC0(skb, dataoff + len);
		if (!csum)
			skb->ip_summed = CHECKSUM_UNNECESSARY;
	}
	return csum;
}