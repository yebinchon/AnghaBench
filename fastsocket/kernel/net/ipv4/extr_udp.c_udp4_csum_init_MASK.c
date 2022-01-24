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
struct udphdr {scalar_t__ check; } ;
struct sk_buff {scalar_t__ ip_summed; int /*<<< orphan*/  len; int /*<<< orphan*/  csum; } ;
struct iphdr {int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;
struct TYPE_2__ {int /*<<< orphan*/  cscov; scalar_t__ partial_cov; } ;

/* Variables and functions */
 scalar_t__ CHECKSUM_COMPLETE ; 
 void* CHECKSUM_UNNECESSARY ; 
 int IPPROTO_UDPLITE ; 
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct iphdr* FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int FUNC5 (struct sk_buff*,struct udphdr*) ; 

__attribute__((used)) static inline int FUNC6(struct sk_buff *skb, struct udphdr *uh,
				 int proto)
{
	const struct iphdr *iph;
	int err;

	FUNC0(skb)->partial_cov = 0;
	FUNC0(skb)->cscov = skb->len;

	if (proto == IPPROTO_UDPLITE) {
		err = FUNC5(skb, uh);
		if (err)
			return err;
	}

	iph = FUNC3(skb);
	if (uh->check == 0) {
		skb->ip_summed = CHECKSUM_UNNECESSARY;
	} else if (skb->ip_summed == CHECKSUM_COMPLETE) {
		if (!FUNC1(iph->saddr, iph->daddr, skb->len,
				      proto, skb->csum))
			skb->ip_summed = CHECKSUM_UNNECESSARY;
	}
	if (!FUNC4(skb))
		skb->csum = FUNC2(iph->saddr, iph->daddr,
					       skb->len, proto, 0);
	/* Probably, we should checksum udp header (it should be in cache
	 * in any case) and data in tiny packets (< rx copybreak).
	 */

	return 0;
}