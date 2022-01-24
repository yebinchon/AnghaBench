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
struct nlattr {int dummy; } ;
struct net_device {scalar_t__ type; int mtu; } ;
struct net {int dummy; } ;
struct ip_tunnel_parm {int dummy; } ;
struct ip_tunnel_net {int dummy; } ;
struct ip_tunnel {struct ip_tunnel_parm parms; int /*<<< orphan*/  ip_tnl_net_id; } ;

/* Variables and functions */
 scalar_t__ ARPHRD_ETHER ; 
 int EEXIST ; 
 size_t IFLA_ADDRESS ; 
 size_t IFLA_MTU ; 
 struct net* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct ip_tunnel_net*,struct ip_tunnel*) ; 
 int FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (struct ip_tunnel_net*,struct ip_tunnel_parm*,scalar_t__) ; 
 struct ip_tunnel_net* FUNC5 (struct net*,int /*<<< orphan*/ ) ; 
 struct ip_tunnel* FUNC6 (struct net_device*) ; 
 int FUNC7 (struct net_device*) ; 

int FUNC8(struct net_device *dev, struct nlattr *tb[],
		      struct ip_tunnel_parm *p)
{
	struct ip_tunnel *nt;
	struct net *net = FUNC0(dev);
	struct ip_tunnel_net *itn;
	int mtu;
	int err;

	nt = FUNC6(dev);
	itn = FUNC5(net, nt->ip_tnl_net_id);

	if (FUNC4(itn, p, dev->type))
		return -EEXIST;

	nt->parms = *p;
	err = FUNC7(dev);
	if (err)
		goto out;

	if (dev->type == ARPHRD_ETHER && !tb[IFLA_ADDRESS])
		FUNC1(dev);

	mtu = FUNC3(dev);
	if (!tb[IFLA_MTU])
		dev->mtu = mtu;

	FUNC2(itn, nt);

out:
	return err;
}