#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int8_t ;
typedef  scalar_t__ u_int32_t ;
struct sk_buff {int len; scalar_t__ mark; } ;
struct net_device {int dummy; } ;
struct iphdr {scalar_t__ saddr; scalar_t__ daddr; scalar_t__ tos; } ;
typedef  scalar_t__ __be32 ;
struct TYPE_3__ {int /*<<< orphan*/  iptable_mangle; } ;
struct TYPE_4__ {TYPE_1__ ipv4; } ;

/* Variables and functions */
 unsigned int NF_ACCEPT ; 
 unsigned int NF_DROP ; 
 unsigned int NF_QUEUE ; 
 unsigned int NF_STOLEN ; 
 int /*<<< orphan*/  RTN_UNSPEC ; 
 TYPE_2__* FUNC0 (struct net_device const*) ; 
 struct iphdr* FUNC1 (struct sk_buff*) ; 
 int FUNC2 (struct sk_buff*) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (struct sk_buff*,unsigned int,struct net_device const*,struct net_device const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int
FUNC5(unsigned int hook,
		   struct sk_buff *skb,
		   const struct net_device *in,
		   const struct net_device *out,
		   int (*okfn)(struct sk_buff *))
{
	unsigned int ret;
	const struct iphdr *iph;
	u_int8_t tos;
	__be32 saddr, daddr;
	u_int32_t mark;

	/* root is playing with raw sockets. */
	if (skb->len < sizeof(struct iphdr)
	    || FUNC2(skb) < sizeof(struct iphdr))
		return NF_ACCEPT;

	/* Save things which could affect route */
	mark = skb->mark;
	iph = FUNC1(skb);
	saddr = iph->saddr;
	daddr = iph->daddr;
	tos = iph->tos;

	ret = FUNC4(skb, hook, in, out,
			   FUNC0(out)->ipv4.iptable_mangle);
	/* Reroute for ANY change. */
	if (ret != NF_DROP && ret != NF_STOLEN && ret != NF_QUEUE) {
		iph = FUNC1(skb);

		if (iph->saddr != saddr ||
		    iph->daddr != daddr ||
		    skb->mark != mark ||
		    iph->tos != tos)
			if (FUNC3(skb, RTN_UNSPEC))
				ret = NF_DROP;
	}

	return ret;
}