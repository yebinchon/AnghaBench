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
struct net_device {int /*<<< orphan*/  name; } ;
struct ipip_net {struct ip_tunnel** tunnels_wc; } ;
struct iphdr {int version; int ihl; int /*<<< orphan*/  protocol; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; struct iphdr iph; } ;
struct ip_tunnel {TYPE_1__ parms; struct net_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPPROTO_IPIP ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  ipip_net_id ; 
 struct ipip_net* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ip_tunnel* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct net_device *dev)
{
	struct ip_tunnel *tunnel = FUNC3(dev);
	struct iphdr *iph = &tunnel->parms.iph;
	struct ipip_net *ipn = FUNC2(FUNC1(dev), ipip_net_id);

	tunnel->dev = dev;
	FUNC4(tunnel->parms.name, dev->name);

	iph->version		= 4;
	iph->protocol		= IPPROTO_IPIP;
	iph->ihl		= 5;

	FUNC0(dev);
	ipn->tunnels_wc[0]	= tunnel;
}