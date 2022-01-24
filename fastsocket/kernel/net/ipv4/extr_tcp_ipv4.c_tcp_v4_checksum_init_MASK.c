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
struct sk_buff {scalar_t__ ip_summed; int len; int /*<<< orphan*/  csum; } ;
struct iphdr {int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;
typedef  int /*<<< orphan*/  __sum16 ;

/* Variables and functions */
 scalar_t__ CHECKSUM_COMPLETE ; 
 scalar_t__ CHECKSUM_UNNECESSARY ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct iphdr* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static __sum16 FUNC4(struct sk_buff *skb)
{
	const struct iphdr *iph = FUNC2(skb);

	if (skb->ip_summed == CHECKSUM_COMPLETE) {
		if (!FUNC3(skb->len, iph->saddr,
				  iph->daddr, skb->csum)) {
			skb->ip_summed = CHECKSUM_UNNECESSARY;
			return 0;
		}
	}

	skb->csum = FUNC1(iph->saddr, iph->daddr,
				       skb->len, IPPROTO_TCP, 0);

	if (skb->len <= 76) {
		return FUNC0(skb);
	}
	return 0;
}