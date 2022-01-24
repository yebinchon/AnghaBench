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
typedef  scalar_t__ u8 ;
struct udphdr {scalar_t__ check; } ;
struct tcphdr {int dummy; } ;
struct sk_buff {int len; scalar_t__ ip_summed; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_2__ {scalar_t__ check; } ;

/* Variables and functions */
 scalar_t__ CHECKSUM_PARTIAL ; 
 scalar_t__ CSUM_MANGLED_0 ; 
 scalar_t__ IPPROTO_TCP ; 
 scalar_t__ IPPROTO_UDP ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,struct sk_buff*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (struct sk_buff*) ; 
 TYPE_1__* FUNC3 (struct sk_buff*) ; 
 struct udphdr* FUNC4 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC5(struct sk_buff *skb, u8 l4_proto,
				 __be32 addr[4], const __be32 new_addr[4])
{
	int transport_len = skb->len - FUNC2(skb);

	if (l4_proto == IPPROTO_TCP) {
		if (FUNC1(transport_len >= sizeof(struct tcphdr)))
			FUNC0(&FUNC3(skb)->check, skb,
						  addr, new_addr, 1);
	} else if (l4_proto == IPPROTO_UDP) {
		if (FUNC1(transport_len >= sizeof(struct udphdr))) {
			struct udphdr *uh = FUNC4(skb);

			if (uh->check || skb->ip_summed == CHECKSUM_PARTIAL) {
				FUNC0(&uh->check, skb,
							  addr, new_addr, 1);
				if (!uh->check)
					uh->check = CSUM_MANGLED_0;
			}
		}
	}
}