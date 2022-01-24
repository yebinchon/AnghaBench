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
struct net_device {int /*<<< orphan*/  mtu; int /*<<< orphan*/  rtnl_link_ops; } ;
struct net {int dummy; } ;
struct ip_tunnel_parm {int dummy; } ;
struct ip_tunnel_net {struct net_device* fb_tunnel_dev; } ;
struct ip_tunnel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct net_device*) ; 
 struct net_device* FUNC2 (struct net*,int /*<<< orphan*/ ,struct ip_tunnel_parm*) ; 
 int /*<<< orphan*/  FUNC3 (struct ip_tunnel_net*,struct ip_tunnel*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 struct ip_tunnel* FUNC5 (struct net_device*) ; 

__attribute__((used)) static struct ip_tunnel *FUNC6(struct net *net,
					  struct ip_tunnel_net *itn,
					  struct ip_tunnel_parm *parms)
{
	struct ip_tunnel *nt, *fbt;
	struct net_device *dev;

	FUNC0(!itn->fb_tunnel_dev);
	fbt = FUNC5(itn->fb_tunnel_dev);
	dev = FUNC2(net, itn->fb_tunnel_dev->rtnl_link_ops, parms);
	if (FUNC1(dev))
		return NULL;

	dev->mtu = FUNC4(dev);

	nt = FUNC5(dev);
	FUNC3(itn, nt);
	return nt;
}