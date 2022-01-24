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
struct nlattr {int dummy; } ;
struct net_device {unsigned int flags; int /*<<< orphan*/  type; } ;
struct net {int dummy; } ;
struct TYPE_2__ {scalar_t__ daddr; } ;
struct ip_tunnel_parm {TYPE_1__ iph; } ;
struct ip_tunnel_net {struct net_device* fb_tunnel_dev; } ;
struct ip_tunnel {struct net_device* dev; int /*<<< orphan*/  ip_tnl_net_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARPHRD_ETHER ; 
 int EEXIST ; 
 int EINVAL ; 
 unsigned int IFF_BROADCAST ; 
 unsigned int IFF_POINTOPOINT ; 
 size_t IFLA_MTU ; 
 struct net* FUNC0 (struct net_device*) ; 
 struct ip_tunnel* FUNC1 (struct ip_tunnel_net*,struct ip_tunnel_parm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ip_tunnel_net*,struct ip_tunnel*,struct net_device*,struct ip_tunnel_parm*,int) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 struct ip_tunnel_net* FUNC4 (struct net*,int /*<<< orphan*/ ) ; 
 struct ip_tunnel* FUNC5 (struct net_device*) ; 

int FUNC6(struct net_device *dev, struct nlattr *tb[],
			 struct ip_tunnel_parm *p)
{
	struct ip_tunnel *t, *nt;
	struct net *net = FUNC0(dev);
	struct ip_tunnel *tunnel = FUNC5(dev);
	struct ip_tunnel_net *itn = FUNC4(net, tunnel->ip_tnl_net_id);

	if (dev == itn->fb_tunnel_dev)
		return -EINVAL;

	nt = FUNC5(dev);

	t = FUNC1(itn, p, dev->type);

	if (t) {
		if (t->dev != dev)
			return -EEXIST;
	} else {
		t = nt;

		if (dev->type != ARPHRD_ETHER) {
			unsigned int nflags = 0;

			if (FUNC3(p->iph.daddr))
				nflags = IFF_BROADCAST;
			else if (p->iph.daddr)
				nflags = IFF_POINTOPOINT;

			if ((dev->flags ^ nflags) &
			    (IFF_POINTOPOINT | IFF_BROADCAST))
				return -EINVAL;
		}
	}

	FUNC2(itn, t, dev, p, !tb[IFLA_MTU]);
	return 0;
}