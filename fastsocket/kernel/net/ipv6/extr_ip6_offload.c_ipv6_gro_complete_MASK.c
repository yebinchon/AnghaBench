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
struct sk_buff {scalar_t__ len; } ;
struct net_offload {int (* gro_complete ) (struct sk_buff*) ;} ;
struct ipv6hdr {int /*<<< orphan*/  payload_len; } ;
struct inet6_protocol {int (* gro_complete ) (struct sk_buff*) ;} ;
struct TYPE_2__ {size_t proto; } ;

/* Variables and functions */
 int ENOSYS ; 
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/ * inet6_offloads ; 
 int /*<<< orphan*/ * inet6_protos ; 
 struct ipv6hdr* FUNC3 (struct sk_buff*) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (struct sk_buff*) ; 
 int FUNC8 (struct sk_buff*) ; 
 int FUNC9 (struct sk_buff*) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(struct sk_buff *skb)
{
	const struct net_offload *ops;
	const struct inet6_protocol *proto_ops;
	struct ipv6hdr *iph = FUNC3(skb);
	int err = -ENOSYS;

	iph->payload_len = FUNC2(skb->len - FUNC7(skb) -
				 sizeof(*iph));

	FUNC5();
	ops = FUNC4(inet6_offloads[FUNC0(skb)->proto]);
	if (FUNC10(!ops || !ops->gro_complete)) {
		proto_ops = FUNC4(inet6_protos[FUNC0(skb)->proto]);
		if (!proto_ops || !proto_ops->gro_complete) {
			FUNC1(true);
			goto out_unlock;
		}
		err = proto_ops->gro_complete(skb);
	} else
		err = ops->gro_complete(skb);

out_unlock:
	FUNC6();

	return err;
}