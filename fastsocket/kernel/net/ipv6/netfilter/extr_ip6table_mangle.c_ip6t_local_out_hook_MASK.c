#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int8_t ;
typedef  scalar_t__ u_int32_t ;
struct sk_buff {int len; scalar_t__ mark; } ;
struct net_device {int dummy; } ;
struct iphdr {int dummy; } ;
struct in6_addr {int dummy; } ;
typedef  int /*<<< orphan*/  saddr ;
typedef  int /*<<< orphan*/  daddr ;
struct TYPE_4__ {int /*<<< orphan*/  ip6table_mangle; } ;
struct TYPE_6__ {TYPE_1__ ipv6; } ;
struct TYPE_5__ {scalar_t__ hop_limit; int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;

/* Variables and functions */
 unsigned int NF_ACCEPT ; 
 unsigned int NF_DROP ; 
 unsigned int NF_STOLEN ; 
 TYPE_3__* FUNC0 (struct net_device const*) ; 
 scalar_t__ FUNC1 (struct sk_buff*) ; 
 unsigned int FUNC2 (struct sk_buff*,unsigned int,struct net_device const*,struct net_device const*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct sk_buff*) ; 
 TYPE_2__* FUNC4 (struct sk_buff*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,struct in6_addr*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct in6_addr*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static unsigned int
FUNC9(unsigned int hook,
		   struct sk_buff *skb,
		   const struct net_device *in,
		   const struct net_device *out,
		   int (*okfn)(struct sk_buff *))
{

	unsigned int ret;
	struct in6_addr saddr, daddr;
	u_int8_t hop_limit;
	u_int32_t flowlabel, mark;

#if 0
	/* root is playing with raw sockets. */
	if (skb->len < sizeof(struct iphdr)
	    || ip_hdrlen(skb) < sizeof(struct iphdr)) {
		if (net_ratelimit())
			printk("ip6t_hook: happy cracking.\n");
		return NF_ACCEPT;
	}
#endif

	/* save source/dest address, mark, hoplimit, flowlabel, priority,  */
	FUNC6(&saddr, &FUNC4(skb)->saddr, sizeof(saddr));
	FUNC6(&daddr, &FUNC4(skb)->daddr, sizeof(daddr));
	mark = skb->mark;
	hop_limit = FUNC4(skb)->hop_limit;

	/* flowlabel and prio (includes version, which shouldn't change either */
	flowlabel = *((u_int32_t *)FUNC4(skb));

	ret = FUNC2(skb, hook, in, out,
			    FUNC0(out)->ipv6.ip6table_mangle);

	if (ret != NF_DROP && ret != NF_STOLEN
		&& (FUNC5(&FUNC4(skb)->saddr, &saddr, sizeof(saddr))
		    || FUNC5(&FUNC4(skb)->daddr, &daddr, sizeof(daddr))
		    || skb->mark != mark
		    || FUNC4(skb)->hop_limit != hop_limit))
		return FUNC1(skb) == 0 ? ret : NF_DROP;

	return ret;
}