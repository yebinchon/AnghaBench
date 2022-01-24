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
struct sit_net {int /*<<< orphan*/ ** tunnels_wc; struct net_device* fb_tunnel_dev; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 struct net* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  ipip6_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sit_net*,int /*<<< orphan*/ ) ; 
 struct sit_net* FUNC4 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  sit_net_id ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct net_device *dev)
{
	struct net *net = FUNC0(dev);
	struct sit_net *sitn = FUNC4(net, sit_net_id);

	if (dev == sitn->fb_tunnel_dev) {
		FUNC6(&ipip6_lock);
		sitn->tunnels_wc[0] = NULL;
		FUNC7(&ipip6_lock);
		FUNC1(dev);
	} else {
		FUNC3(sitn, FUNC5(dev));
		FUNC2(FUNC5(dev), NULL);
		FUNC1(dev);
	}
}