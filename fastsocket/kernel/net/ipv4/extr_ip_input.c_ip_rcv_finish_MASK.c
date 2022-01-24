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
typedef  int u32 ;
struct sk_buff {scalar_t__ len; int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {TYPE_1__ dst; } ;
struct rtable {scalar_t__ rt_type; TYPE_2__ u; } ;
struct iphdr {int ihl; int /*<<< orphan*/  tos; int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; } ;
struct ip_rt_acct {int /*<<< orphan*/  i_bytes; int /*<<< orphan*/  i_packets; int /*<<< orphan*/  o_bytes; int /*<<< orphan*/  o_packets; } ;
struct direct_tcp_stat {int /*<<< orphan*/  input_route_fast; int /*<<< orphan*/  input_route_slow; } ;
struct TYPE_6__ {int tclassid; } ;

/* Variables and functions */
 int EHOSTUNREACH ; 
 int ENETUNREACH ; 
 int /*<<< orphan*/  IPSTATS_MIB_INADDRERRORS ; 
 int /*<<< orphan*/  IPSTATS_MIB_INBCAST ; 
 int /*<<< orphan*/  IPSTATS_MIB_INMCAST ; 
 int /*<<< orphan*/  IPSTATS_MIB_INNOROUTES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int NET_RX_DROP ; 
 scalar_t__ RTN_BROADCAST ; 
 scalar_t__ RTN_MULTICAST ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  direct_tcp_stats ; 
 int FUNC3 (struct sk_buff*) ; 
 struct iphdr* FUNC4 (struct sk_buff*) ; 
 scalar_t__ FUNC5 (struct sk_buff*) ; 
 int FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ip_rt_acct ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 void* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC9 (struct sk_buff*) ; 
 struct rtable* FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 scalar_t__ FUNC12 (int) ; 

__attribute__((used)) static int FUNC13(struct sk_buff *skb)
{
	const struct iphdr *iph = FUNC4(skb);
	struct rtable *rt;
	struct direct_tcp_stat *stat;

	stat = FUNC8(direct_tcp_stats, FUNC11());

	/*
	 *	Initialise the virtual path cache for the packet. It describes
	 *	how the packet travels inside Linux networking.
	 */

	if (FUNC9(skb) == NULL) {
		int err = FUNC6(skb, iph->daddr, iph->saddr, iph->tos,
					 skb->dev);
		stat->input_route_slow++;
		//FPRINTK("Skb 0x%p needs to go through route lookup\n", skb);

		if (FUNC12(err)) {
			if (err == -EHOSTUNREACH)
				FUNC0(FUNC2(skb->dev),
						IPSTATS_MIB_INADDRERRORS);
			else if (err == -ENETUNREACH)
				FUNC0(FUNC2(skb->dev),
						IPSTATS_MIB_INNOROUTES);
			goto drop;
		}
	} else {
		stat->input_route_fast++;
		//FPRINTK("Skb 0x%p has set dst cache 0x%p[%u]\n", skb, skb_dst(skb), atomic_read(&skb_dst(skb)->__refcnt));
	}

#ifdef CONFIG_NET_CLS_ROUTE
	if (unlikely(skb_dst(skb)->tclassid)) {
		struct ip_rt_acct *st = per_cpu_ptr(ip_rt_acct, smp_processor_id());
		u32 idx = skb_dst(skb)->tclassid;
		st[idx&0xFF].o_packets++;
		st[idx&0xFF].o_bytes += skb->len;
		st[(idx>>16)&0xFF].i_packets++;
		st[(idx>>16)&0xFF].i_bytes += skb->len;
	}
#endif

	if (iph->ihl > 5 && FUNC5(skb))
		goto drop;

	rt = FUNC10(skb);
	if (rt->rt_type == RTN_MULTICAST) {
		FUNC1(FUNC2(rt->u.dst.dev), IPSTATS_MIB_INMCAST,
				skb->len);
	} else if (rt->rt_type == RTN_BROADCAST)
		FUNC1(FUNC2(rt->u.dst.dev), IPSTATS_MIB_INBCAST,
				skb->len);

	return FUNC3(skb);

drop:
	FUNC7(skb);
	return NET_RX_DROP;
}