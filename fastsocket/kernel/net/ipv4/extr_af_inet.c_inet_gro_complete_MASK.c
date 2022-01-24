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
struct sk_buff {scalar_t__ len; } ;
struct net_protocol {int (* gro_complete ) (struct sk_buff*) ;} ;
struct net_offload {int (* gro_complete ) (struct sk_buff*) ;} ;
struct iphdr {int protocol; int /*<<< orphan*/  tot_len; int /*<<< orphan*/  check; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int ENOSYS ; 
 int MAX_INET_PROTOS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/ * inet_offloads ; 
 int /*<<< orphan*/ * inet_protos ; 
 struct iphdr* FUNC3 (struct sk_buff*) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (struct sk_buff*) ; 
 int FUNC8 (struct sk_buff*) ; 
 int FUNC9 (struct sk_buff*) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(struct sk_buff *skb)
{
	const struct net_protocol *proto_ops;
	const struct net_offload *ops;
	struct iphdr *iph = FUNC3(skb);
	int proto = iph->protocol & (MAX_INET_PROTOS - 1);
	int err = -ENOSYS;
	__be16 newlen = FUNC2(skb->len - FUNC7(skb));

	FUNC1(&iph->check, iph->tot_len, newlen);
	iph->tot_len = newlen;

	FUNC5();
	ops = FUNC4(inet_offloads[proto]);
	if (FUNC10(!ops || !ops->gro_complete)) {
		/* Check the old protocol array */
		proto_ops = FUNC4(inet_protos[proto]);
		if (!proto_ops || !proto_ops->gro_complete) {
			FUNC0(true);
			goto out_unlock;
		}
		err = proto_ops->gro_complete(skb);
	} else
		err = ops->gro_complete(skb);

out_unlock:
	FUNC6();

	return err;
}