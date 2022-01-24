#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {scalar_t__ protocol; int /*<<< orphan*/  mark; } ;
struct TYPE_6__ {int obsolete; int /*<<< orphan*/  input; struct net_device* dev; int /*<<< orphan*/  tclassid; int /*<<< orphan*/  flags; int /*<<< orphan*/  __refcnt; int /*<<< orphan*/  output; } ;
struct TYPE_7__ {TYPE_2__ dst; } ;
struct TYPE_5__ {scalar_t__ oif; int /*<<< orphan*/  iif; void* fl4_src; int /*<<< orphan*/  mark; int /*<<< orphan*/  fl4_tos; void* fl4_dst; } ;
struct rtable {TYPE_3__ u; int /*<<< orphan*/  rt_flags; int /*<<< orphan*/  rt_type; int /*<<< orphan*/  rt_genid; void* rt_spec_dst; void* rt_gateway; TYPE_1__ fl; void* idev; int /*<<< orphan*/  rt_iif; void* rt_src; void* rt_dst; } ;
struct net_device {int /*<<< orphan*/  ifindex; } ;
struct in_device {int dummy; } ;
typedef  void* __be32 ;
struct TYPE_8__ {struct net_device* loopback_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DST_HOST ; 
 int /*<<< orphan*/  DST_NOPOLICY ; 
 int EINVAL ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  ETH_P_IP ; 
 scalar_t__ FUNC0 (struct in_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct in_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct in_device*) ; 
 int /*<<< orphan*/  NOPOLICY ; 
 int /*<<< orphan*/  RTCF_LOCAL ; 
 int /*<<< orphan*/  RTCF_MULTICAST ; 
 int /*<<< orphan*/  RTN_MULTICAST ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RT_SCOPE_LINK ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 struct rtable* FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*,void**,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 void* FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct in_device*) ; 
 int /*<<< orphan*/  in_slow_mc ; 
 void* FUNC12 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__ init_net ; 
 int /*<<< orphan*/  ip_local_deliver ; 
 int /*<<< orphan*/  ip_mr_input ; 
 int /*<<< orphan*/  ip_rt_bug ; 
 int /*<<< orphan*/  ipv4_dst_ops ; 
 scalar_t__ FUNC13 (void*) ; 
 int /*<<< orphan*/  FUNC14 (void*) ; 
 scalar_t__ FUNC15 (void*) ; 
 scalar_t__ FUNC16 (void*) ; 
 scalar_t__ FUNC17 (void*) ; 
 scalar_t__ FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC20 (void*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC21 (unsigned int,struct rtable*,int /*<<< orphan*/ *,struct sk_buff*) ; 

__attribute__((used)) static int FUNC22(struct sk_buff *skb, __be32 daddr, __be32 saddr,
				u8 tos, struct net_device *dev, int our)
{
	unsigned hash;
	struct rtable *rth;
	__be32 spec_dst;
	struct in_device *in_dev = FUNC10(dev);
	u32 itag = 0;

	/* Primary sanity checks. */

	if (in_dev == NULL)
		return -EINVAL;

	if (FUNC16(saddr) || FUNC13(saddr) ||
	    skb->protocol != FUNC9(ETH_P_IP))
		goto e_inval;

	if (FUNC18(!FUNC2(in_dev)))
		if (FUNC15(saddr))
			goto e_inval;

	if (FUNC17(saddr)) {
		if (!FUNC14(daddr))
			goto e_inval;
		spec_dst = FUNC12(dev, 0, RT_SCOPE_LINK);
	} else if (FUNC8(saddr, 0, tos, 0,
					dev, &spec_dst, &itag, 0) < 0)
		goto e_inval;

	rth = FUNC7(&ipv4_dst_ops);
	if (!rth)
		goto e_nobufs;

	rth->u.dst.output = ip_rt_bug;
	rth->u.dst.obsolete = -1;

	FUNC4(&rth->u.dst.__refcnt, 1);
	rth->u.dst.flags= DST_HOST;
	if (FUNC0(in_dev, NOPOLICY))
		rth->u.dst.flags |= DST_NOPOLICY;
	rth->fl.fl4_dst	= daddr;
	rth->rt_dst	= daddr;
	rth->fl.fl4_tos	= tos;
	rth->fl.mark    = skb->mark;
	rth->fl.fl4_src	= saddr;
	rth->rt_src	= saddr;
#ifdef CONFIG_NET_CLS_ROUTE
	rth->u.dst.tclassid = itag;
#endif
	rth->rt_iif	=
	rth->fl.iif	= dev->ifindex;
	rth->u.dst.dev	= init_net.loopback_dev;
	FUNC5(rth->u.dst.dev);
	rth->idev	= FUNC10(rth->u.dst.dev);
	rth->fl.oif	= 0;
	rth->rt_gateway	= daddr;
	rth->rt_spec_dst= spec_dst;
	rth->rt_genid	= FUNC19(FUNC6(dev));
	rth->rt_flags	= RTCF_MULTICAST;
	rth->rt_type	= RTN_MULTICAST;
	if (our) {
		rth->u.dst.input= ip_local_deliver;
		rth->rt_flags |= RTCF_LOCAL;
	}

#ifdef CONFIG_IP_MROUTE
	if (!ipv4_is_local_multicast(daddr) && IN_DEV_MFORWARD(in_dev))
		rth->u.dst.input = ip_mr_input;
#endif
	FUNC3(in_slow_mc);

	FUNC11(in_dev);
	hash = FUNC20(daddr, saddr, dev->ifindex, FUNC19(FUNC6(dev)));
	return FUNC21(hash, rth, NULL, skb);

e_nobufs:
	FUNC11(in_dev);
	return -ENOBUFS;

e_inval:
	FUNC11(in_dev);
	return -EINVAL;
}