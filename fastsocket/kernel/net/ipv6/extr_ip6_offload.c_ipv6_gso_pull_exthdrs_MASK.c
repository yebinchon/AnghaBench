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
struct sk_buff {scalar_t__ data; } ;
struct net_offload {int flags; } ;
struct ipv6_opt_hdr {int nexthdr; } ;
struct inet6_protocol {int flags; } ;

/* Variables and functions */
 int INET6_PROTO_GSO_EXTHDR ; 
 int NEXTHDR_HOP ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int) ; 
 int /*<<< orphan*/ * inet6_offloads ; 
 int /*<<< orphan*/ * inet6_protos ; 
 int FUNC1 (struct ipv6_opt_hdr*) ; 
 scalar_t__ FUNC2 (struct net_offload const*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct sk_buff *skb, int proto)
{
	const struct net_offload *ops = NULL;
	const struct inet6_protocol *proto_ops = NULL;

	for (;;) {
		struct ipv6_opt_hdr *opth;
		int len;

		if (proto != NEXTHDR_HOP) {
			ops = FUNC4(inet6_offloads[proto]);

			if (FUNC2(ops)) {
				if (!(ops->flags & INET6_PROTO_GSO_EXTHDR))
					break;
			} else {
				proto_ops = FUNC4(inet6_protos[proto]);
				if (!proto_ops)
					break;

				if (!(proto_ops->flags & INET6_PROTO_GSO_EXTHDR))
					break;
			}
		}

		if (FUNC5(!FUNC3(skb, 8)))
			break;

		opth = (void *)skb->data;
		len = FUNC1(opth);

		if (FUNC5(!FUNC3(skb, len)))
			break;

		proto = opth->nexthdr;
		FUNC0(skb, len);
	}

	return proto;
}