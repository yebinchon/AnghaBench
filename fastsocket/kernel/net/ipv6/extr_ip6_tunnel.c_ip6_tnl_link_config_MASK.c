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
struct TYPE_4__ {int /*<<< orphan*/  dst; } ;
struct rt6_info {TYPE_2__ u; TYPE_1__* rt6i_dev; } ;
struct net_device {scalar_t__ mtu; scalar_t__ hard_header_len; int /*<<< orphan*/  iflink; int /*<<< orphan*/  flags; int /*<<< orphan*/  broadcast; int /*<<< orphan*/  dev_addr; } ;
struct ipv6hdr {int dummy; } ;
struct ip6_tnl_parm {int flags; int flowinfo; int /*<<< orphan*/  link; int /*<<< orphan*/  laddr; int /*<<< orphan*/  raddr; } ;
struct flowi {int fl6_flowlabel; int /*<<< orphan*/  oif; int /*<<< orphan*/  fl6_dst; int /*<<< orphan*/  fl6_src; } ;
struct ip6_tnl {struct flowi fl; struct ip6_tnl_parm parms; struct net_device* dev; } ;
struct in6_addr {int dummy; } ;
struct TYPE_3__ {scalar_t__ mtu; scalar_t__ hard_header_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFF_POINTOPOINT ; 
 int IP6_TNL_F_CAP_RCV ; 
 int IP6_TNL_F_CAP_XMIT ; 
 int IP6_TNL_F_USE_ORIG_FLOWLABEL ; 
 int IP6_TNL_F_USE_ORIG_TCLASS ; 
 int IPV6_ADDR_LINKLOCAL ; 
 int IPV6_ADDR_MULTICAST ; 
 int IPV6_FLOWLABEL_MASK ; 
 scalar_t__ IPV6_MIN_MTU ; 
 int IPV6_TCLASS_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ip6_tnl*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 struct rt6_info* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC7(struct ip6_tnl *t)
{
	struct net_device *dev = t->dev;
	struct ip6_tnl_parm *p = &t->parms;
	struct flowi *fl = &t->fl;

	FUNC5(dev->dev_addr, &p->laddr, sizeof(struct in6_addr));
	FUNC5(dev->broadcast, &p->raddr, sizeof(struct in6_addr));

	/* Set up flowi template */
	FUNC3(&fl->fl6_src, &p->laddr);
	FUNC3(&fl->fl6_dst, &p->raddr);
	fl->oif = p->link;
	fl->fl6_flowlabel = 0;

	if (!(p->flags&IP6_TNL_F_USE_ORIG_TCLASS))
		fl->fl6_flowlabel |= IPV6_TCLASS_MASK & p->flowinfo;
	if (!(p->flags&IP6_TNL_F_USE_ORIG_FLOWLABEL))
		fl->fl6_flowlabel |= IPV6_FLOWLABEL_MASK & p->flowinfo;

	FUNC2(t);

	if (p->flags&IP6_TNL_F_CAP_XMIT && p->flags&IP6_TNL_F_CAP_RCV)
		dev->flags |= IFF_POINTOPOINT;
	else
		dev->flags &= ~IFF_POINTOPOINT;

	dev->iflink = p->link;

	if (p->flags & IP6_TNL_F_CAP_XMIT) {
		int strict = (FUNC4(&p->raddr) &
			      (IPV6_ADDR_MULTICAST|IPV6_ADDR_LINKLOCAL));

		struct rt6_info *rt = FUNC6(FUNC0(dev),
						 &p->raddr, &p->laddr,
						 p->link, strict);

		if (rt == NULL)
			return;

		if (rt->rt6i_dev) {
			dev->hard_header_len = rt->rt6i_dev->hard_header_len +
				sizeof (struct ipv6hdr);

			dev->mtu = rt->rt6i_dev->mtu - sizeof (struct ipv6hdr);

			if (dev->mtu < IPV6_MIN_MTU)
				dev->mtu = IPV6_MIN_MTU;
		}
		FUNC1(&rt->u.dst);
	}
}