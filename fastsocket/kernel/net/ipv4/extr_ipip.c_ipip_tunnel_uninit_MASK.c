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
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct ipip_net {int /*<<< orphan*/ ** tunnels_wc; struct net_device* fb_tunnel_dev; } ;

/* Variables and functions */
 struct net* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  ipip_lock ; 
 int /*<<< orphan*/  ipip_net_id ; 
 int /*<<< orphan*/  FUNC2 (struct ipip_net*,int /*<<< orphan*/ ) ; 
 struct ipip_net* FUNC3 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct net_device *dev)
{
	struct net *net = FUNC0(dev);
	struct ipip_net *ipn = FUNC3(net, ipip_net_id);

	if (dev == ipn->fb_tunnel_dev) {
		FUNC5(&ipip_lock);
		ipn->tunnels_wc[0] = NULL;
		FUNC6(&ipip_lock);
	} else
		FUNC2(ipn, FUNC4(dev));
	FUNC1(dev);
}