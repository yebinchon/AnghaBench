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
struct net_protocol {int (* gso_send_check ) (struct sk_buff*) ;} ;
struct net_offload {int (* gso_send_check ) (struct sk_buff*) ;} ;
struct iphdr {int ihl; int protocol; } ;

/* Variables and functions */
 int EINVAL ; 
 int EPROTONOSUPPORT ; 
 int MAX_INET_PROTOS ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int) ; 
 int /*<<< orphan*/ * inet_offloads ; 
 int /*<<< orphan*/ * inet_protos ; 
 struct iphdr* FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int FUNC8 (struct sk_buff*) ; 
 int FUNC9 (struct sk_buff*) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(struct sk_buff *skb)
{
	struct iphdr *iph;
	const struct net_offload *ops;
	const struct net_protocol *proto_ops;
	int proto;
	int ihl;
	int err = -EINVAL;

	if (FUNC10(!FUNC3(skb, sizeof(*iph))))
		goto out;

	iph = FUNC1(skb);
	ihl = iph->ihl * 4;
	if (ihl < sizeof(*iph))
		goto out;

	if (FUNC10(!FUNC3(skb, ihl)))
		goto out;

	FUNC0(skb, ihl);
	FUNC7(skb);
	iph = FUNC1(skb);
	proto = iph->protocol & (MAX_INET_PROTOS - 1);
	err = -EPROTONOSUPPORT;

	FUNC5();
	ops = FUNC4(inet_offloads[proto]);
	if (FUNC2(ops && ops->gso_send_check))
		err = ops->gso_send_check(skb);
	else {
		/* Check protocols array for any protocols
		 * using old API.
		 */
		proto_ops = FUNC4(inet_protos[proto]);
		if (proto_ops && proto_ops->gso_send_check)
			err = proto_ops->gso_send_check(skb);
	}

	FUNC6();

out:
	return err;
}