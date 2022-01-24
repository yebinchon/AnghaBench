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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_3__ {int header_len; } ;
struct xfrm_state {int /*<<< orphan*/  lock; int /*<<< orphan*/ * coaddr; TYPE_1__ props; } ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {int hdrlen; int segments_left; int /*<<< orphan*/  type; int /*<<< orphan*/  nexthdr; } ;
struct rt2_hdr {int /*<<< orphan*/  addr; TYPE_2__ rt_hdr; int /*<<< orphan*/  reserved; } ;
struct ipv6hdr {int /*<<< orphan*/  daddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPPROTO_ROUTING ; 
 int /*<<< orphan*/  IPV6_SRCRT_TYPE_2 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct ipv6hdr* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct xfrm_state *x, struct sk_buff *skb)
{
	struct ipv6hdr *iph;
	struct rt2_hdr *rt2;
	u8 nexthdr;

	FUNC6(skb, -FUNC5(skb));
	iph = FUNC1(skb);

	nexthdr = *FUNC4(skb);
	*FUNC4(skb) = IPPROTO_ROUTING;

	rt2 = (struct rt2_hdr *)FUNC7(skb);
	rt2->rt_hdr.nexthdr = nexthdr;
	rt2->rt_hdr.hdrlen = (x->props.header_len >> 3) - 1;
	rt2->rt_hdr.type = IPV6_SRCRT_TYPE_2;
	rt2->rt_hdr.segments_left = 1;
	FUNC3(&rt2->reserved, 0, sizeof(rt2->reserved));

	FUNC0(rt2->rt_hdr.hdrlen != 2);

	FUNC2(&rt2->addr, &iph->daddr, sizeof(rt2->addr));
	FUNC8(&x->lock);
	FUNC2(&iph->daddr, x->coaddr, sizeof(iph->daddr));
	FUNC9(&x->lock);

	return 0;
}