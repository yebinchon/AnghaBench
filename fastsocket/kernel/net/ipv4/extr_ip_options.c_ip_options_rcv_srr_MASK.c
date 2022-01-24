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
struct sk_buff {scalar_t__ pkt_type; int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dst; } ;
struct rtable {scalar_t__ rt_type; TYPE_1__ u; } ;
struct iphdr {int /*<<< orphan*/  daddr; int /*<<< orphan*/  tos; int /*<<< orphan*/  saddr; } ;
struct ip_options {int srr; int is_changed; int srr_is_hit; int /*<<< orphan*/  is_strictroute; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_4__ {struct ip_options opt; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  ICMP_PARAMETERPROB ; 
 TYPE_2__* FUNC0 (struct sk_buff*) ; 
 scalar_t__ PACKET_HOST ; 
 scalar_t__ RTN_LOCAL ; 
 scalar_t__ RTN_UNICAST ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct iphdr* FUNC3 (struct sk_buff*) ; 
 int FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rtable*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int /*<<< orphan*/ *) ; 
 unsigned char* FUNC8 (struct sk_buff*) ; 
 struct rtable* FUNC9 (struct sk_buff*) ; 

int FUNC10(struct sk_buff *skb)
{
	struct ip_options *opt = &(FUNC0(skb)->opt);
	int srrspace, srrptr;
	__be32 nexthop;
	struct iphdr *iph = FUNC3(skb);
	unsigned char *optptr = FUNC8(skb) + opt->srr;
	struct rtable *rt = FUNC9(skb);
	struct rtable *rt2;
	int err;

	if (!opt->srr)
		return 0;

	if (skb->pkt_type != PACKET_HOST)
		return -EINVAL;
	if (rt->rt_type == RTN_UNICAST) {
		if (!opt->is_strictroute)
			return 0;
		FUNC2(skb, ICMP_PARAMETERPROB, 0, FUNC1(16<<24));
		return -EINVAL;
	}
	if (rt->rt_type != RTN_LOCAL)
		return -EINVAL;

	for (srrptr=optptr[2], srrspace = optptr[1]; srrptr <= srrspace; srrptr += 4) {
		if (srrptr + 3 > srrspace) {
			FUNC2(skb, ICMP_PARAMETERPROB, 0, FUNC1((opt->srr+2)<<24));
			return -EINVAL;
		}
		FUNC6(&nexthop, &optptr[srrptr-1], 4);

		rt = FUNC9(skb);
		FUNC7(skb, NULL);
		err = FUNC4(skb, nexthop, iph->saddr, iph->tos, skb->dev);
		rt2 = FUNC9(skb);
		if (err || (rt2->rt_type != RTN_UNICAST && rt2->rt_type != RTN_LOCAL)) {
			FUNC5(rt2);
			FUNC7(skb, &rt->u.dst);
			return -EINVAL;
		}
		FUNC5(rt);
		if (rt2->rt_type != RTN_LOCAL)
			break;
		/* Superfast 8) loopback forward */
		FUNC6(&iph->daddr, &optptr[srrptr-1], 4);
		opt->is_changed = 1;
	}
	if (srrptr <= srrspace) {
		opt->srr_is_hit = 1;
		opt->is_changed = 1;
	}
	return 0;
}