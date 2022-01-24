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
struct sk_buff {int dummy; } ;
struct net_offload {int (* gso_send_check ) (struct sk_buff*) ;} ;
struct ipv6hdr {int /*<<< orphan*/  nexthdr; } ;
struct inet6_protocol {scalar_t__ gso_send_check; } ;

/* Variables and functions */
 int EINVAL ; 
 int EPROTONOSUPPORT ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int) ; 
 int /*<<< orphan*/ * inet6_offloads ; 
 int /*<<< orphan*/ * inet6_protos ; 
 int FUNC1 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct ipv6hdr* FUNC2 (struct sk_buff*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 int FUNC9 (struct sk_buff*) ; 
 int FUNC10 (struct sk_buff*) ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static int FUNC12(struct sk_buff *skb)
{
	struct ipv6hdr *ipv6h;
	const struct net_offload *ops;
	const struct inet6_protocol *proto_ops;
	int proto;
	int err = -EINVAL;

	if (FUNC11(!FUNC4(skb, sizeof(*ipv6h))))
		goto out;

	ipv6h = FUNC2(skb);
	FUNC0(skb, sizeof(*ipv6h));
	err = -EPROTONOSUPPORT;

	FUNC6();
	proto = FUNC1(skb, ipv6h->nexthdr);
	ops = FUNC5(inet6_offloads[proto]);

	if (FUNC3(ops && ops->gso_send_check)) {
		FUNC8(skb);
		err = ops->gso_send_check(skb);
	} else {
		proto_ops = FUNC5(inet6_protos[proto]);
		if (proto_ops && proto_ops->gso_send_check) {
			FUNC8(skb);
			err = ops->gso_send_check(skb);
		}
	}

	FUNC7();

out:
	return err;
}