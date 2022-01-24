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
struct net_device {int addr_len; int /*<<< orphan*/ * header_ops; int /*<<< orphan*/  flags; int /*<<< orphan*/  priv_flags; int /*<<< orphan*/  type; int /*<<< orphan*/  broadcast; int /*<<< orphan*/  dev_addr; } ;
struct iphdr {scalar_t__ saddr; scalar_t__ daddr; } ;
struct TYPE_2__ {struct iphdr iph; } ;
struct ip_tunnel {TYPE_1__ parms; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARPHRD_IPGRE ; 
 int EINVAL ; 
 int /*<<< orphan*/  IFF_BROADCAST ; 
 int /*<<< orphan*/  IFF_NOARP ; 
 int /*<<< orphan*/  IFF_XMIT_DST_RELEASE ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  ipgre_header_ops ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__*,int) ; 
 struct ip_tunnel* FUNC4 (struct net_device*) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev)
{
	struct ip_tunnel *tunnel = FUNC4(dev);
	struct iphdr *iph = &tunnel->parms.iph;

	FUNC0(dev);

	FUNC3(dev->dev_addr, &iph->saddr, 4);
	FUNC3(dev->broadcast, &iph->daddr, 4);

	dev->type		= ARPHRD_IPGRE;
	dev->flags		= IFF_NOARP;
	dev->priv_flags		&= ~IFF_XMIT_DST_RELEASE;
	dev->addr_len		= 4;

	if (iph->daddr) {
#ifdef CONFIG_NET_IPGRE_BROADCAST
		if (ipv4_is_multicast(iph->daddr)) {
			if (!iph->saddr)
				return -EINVAL;
			dev->flags = IFF_BROADCAST;
			dev->header_ops = &ipgre_header_ops;
		}
#endif
	} else
		dev->header_ops = &ipgre_header_ops;

	return FUNC1(dev);
}