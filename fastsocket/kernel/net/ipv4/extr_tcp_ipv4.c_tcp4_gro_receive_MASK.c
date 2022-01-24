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
struct sk_buff {int ip_summed; int /*<<< orphan*/  csum; } ;
struct iphdr {int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;
typedef  int /*<<< orphan*/  __wsum ;
typedef  int /*<<< orphan*/  __sum16 ;
struct TYPE_2__ {int flush; } ;

/* Variables and functions */
#define  CHECKSUM_COMPLETE 129 
#define  CHECKSUM_NONE 128 
 void* CHECKSUM_UNNECESSARY ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 struct iphdr* FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 struct sk_buff** FUNC7 (struct sk_buff**,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct sk_buff **FUNC9(struct sk_buff **head, struct sk_buff *skb)
{
	struct iphdr *iph = FUNC5(skb);
	__wsum wsum;
	__sum16 sum;

	switch (skb->ip_summed) {
	case CHECKSUM_COMPLETE:
		if (!FUNC8(FUNC4(skb), iph->saddr, iph->daddr,
				  skb->csum)) {
			skb->ip_summed = CHECKSUM_UNNECESSARY;
			break;
		}
flush:
		FUNC0(skb)->flush = 1;
		return NULL;

	case CHECKSUM_NONE:
		wsum = FUNC2(iph->saddr, iph->daddr,
					  FUNC4(skb), IPPROTO_TCP, 0);
		sum = FUNC1(FUNC3(skb,
					     FUNC6(skb),
					     FUNC4(skb),
					     wsum));
		if (sum)
			goto flush;

		skb->ip_summed = CHECKSUM_UNNECESSARY;
		break;
	}

	return FUNC7(head, skb);
}