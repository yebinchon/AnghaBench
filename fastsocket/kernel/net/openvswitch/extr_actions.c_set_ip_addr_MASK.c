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
struct tcphdr {int dummy; } ;
struct sk_buff {int len; scalar_t__ ip_summed; scalar_t__ rxhash; } ;
struct iphdr {scalar_t__ protocol; int /*<<< orphan*/  check; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_2__ {scalar_t__ check; } ;

/* Variables and functions */
 scalar_t__ CHECKSUM_PARTIAL ; 
 scalar_t__ CSUM_MANGLED_0 ; 
 scalar_t__ IPPROTO_TCP ; 
 scalar_t__ IPPROTO_UDP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (struct sk_buff*) ; 
 TYPE_1__* FUNC4 (struct sk_buff*) ; 
 struct udphdr* FUNC5 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC6(struct sk_buff *skb, struct iphdr *nh,
				__be32 *addr, __be32 new_addr)
{
	int transport_len = skb->len - FUNC3(skb);

	if (nh->protocol == IPPROTO_TCP) {
		if (FUNC2(transport_len >= sizeof(struct tcphdr)))
			FUNC1(&FUNC4(skb)->check, skb,
						 *addr, new_addr, 1);
	} else if (nh->protocol == IPPROTO_UDP) {
		if (FUNC2(transport_len >= sizeof(struct udphdr))) {
			struct udphdr *uh = FUNC5(skb);

			if (uh->check || skb->ip_summed == CHECKSUM_PARTIAL) {
				FUNC1(&uh->check, skb,
							 *addr, new_addr, 1);
				if (!uh->check)
					uh->check = CSUM_MANGLED_0;
			}
		}
	}

	FUNC0(&nh->check, *addr, new_addr);
	skb->rxhash = 0;
	*addr = new_addr;
}