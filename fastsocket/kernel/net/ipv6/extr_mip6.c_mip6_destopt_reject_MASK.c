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
typedef  int /*<<< orphan*/  xfrm_address_t ;
struct xfrm_state {int dummy; } ;
struct xfrm_selector {int prefixlen_d; int prefixlen_s; scalar_t__ proto; int /*<<< orphan*/  ifindex; void* sport_mask; scalar_t__ sport; void* dport_mask; scalar_t__ dport; int /*<<< orphan*/  family; int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; } ;
struct timeval {int dummy; } ;
struct sk_buff {scalar_t__ cb; } ;
struct net {int dummy; } ;
struct ipv6_destopt_hao {int /*<<< orphan*/  addr; } ;
struct inet6_skb_parm {int dsthao; int /*<<< orphan*/  iif; } ;
struct flowi {scalar_t__ proto; scalar_t__ fl_mh_type; int /*<<< orphan*/  oif; } ;
typedef  int /*<<< orphan*/  sel ;
struct TYPE_2__ {int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 scalar_t__ IP6_MH_TYPE_MAX ; 
 int /*<<< orphan*/  IPPROTO_DSTOPTS ; 
 scalar_t__ IPPROTO_MH ; 
 int /*<<< orphan*/  IPV6_TLV_HAO ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct sk_buff*,int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (struct sk_buff*) ; 
 int FUNC3 (struct net*,int /*<<< orphan*/ ,struct xfrm_selector*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct xfrm_selector*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct timeval*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,struct timeval*) ; 
 scalar_t__ FUNC9 (struct sk_buff*) ; 
 scalar_t__ FUNC10 (int) ; 
 scalar_t__ FUNC11 (struct flowi*) ; 
 scalar_t__ FUNC12 (struct flowi*) ; 
 struct net* FUNC13 (struct xfrm_state*) ; 

__attribute__((used)) static int FUNC14(struct xfrm_state *x, struct sk_buff *skb, struct flowi *fl)
{
	struct net *net = FUNC13(x);
	struct inet6_skb_parm *opt = (struct inet6_skb_parm *)skb->cb;
	struct ipv6_destopt_hao *hao = NULL;
	struct xfrm_selector sel;
	int offset;
	struct timeval stamp;
	int err = 0;

	if (FUNC10(fl->proto == IPPROTO_MH &&
		     fl->fl_mh_type <= IP6_MH_TYPE_MAX))
		goto out;

	if (FUNC4(opt->dsthao)) {
		offset = FUNC1(skb, opt->dsthao, IPV6_TLV_HAO);
		if (FUNC4(offset >= 0))
			hao = (struct ipv6_destopt_hao *)
					(FUNC9(skb) + offset);
	}

	FUNC8(skb, &stamp);

	if (!FUNC7(&stamp, &FUNC2(skb)->daddr,
				  hao ? &hao->addr : &FUNC2(skb)->saddr,
				  opt->iif))
		goto out;

	FUNC6(&sel, 0, sizeof(sel));
	FUNC5(&sel.daddr, (xfrm_address_t *)&FUNC2(skb)->daddr,
	       sizeof(sel.daddr));
	sel.prefixlen_d = 128;
	FUNC5(&sel.saddr, (xfrm_address_t *)&FUNC2(skb)->saddr,
	       sizeof(sel.saddr));
	sel.prefixlen_s = 128;
	sel.family = AF_INET6;
	sel.proto = fl->proto;
	sel.dport = FUNC11(fl);
	if (sel.dport)
		sel.dport_mask = FUNC0(~0);
	sel.sport = FUNC12(fl);
	if (sel.sport)
		sel.sport_mask = FUNC0(~0);
	sel.ifindex = fl->oif;

	err = FUNC3(net, IPPROTO_DSTOPTS, &sel,
			(hao ? (xfrm_address_t *)&hao->addr : NULL));

 out:
	return err;
}