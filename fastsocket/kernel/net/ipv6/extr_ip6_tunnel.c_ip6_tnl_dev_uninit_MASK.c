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
struct ip6_tnl_net {int /*<<< orphan*/ ** tnls_wc; struct net_device* fb_tnl_dev; } ;
struct ip6_tnl {int dummy; } ;

/* Variables and functions */
 struct net* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct ip6_tnl*) ; 
 int /*<<< orphan*/  ip6_tnl_lock ; 
 int /*<<< orphan*/  ip6_tnl_net_id ; 
 int /*<<< orphan*/  FUNC3 (struct ip6_tnl_net*,struct ip6_tnl*) ; 
 struct ip6_tnl_net* FUNC4 (struct net*,int /*<<< orphan*/ ) ; 
 struct ip6_tnl* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(struct net_device *dev)
{
	struct ip6_tnl *t = FUNC5(dev);
	struct net *net = FUNC0(dev);
	struct ip6_tnl_net *ip6n = FUNC4(net, ip6_tnl_net_id);

	if (dev == ip6n->fb_tnl_dev) {
		FUNC6(&ip6_tnl_lock);
		ip6n->tnls_wc[0] = NULL;
		FUNC7(&ip6_tnl_lock);
	} else {
		FUNC3(ip6n, t);
	}
	FUNC2(t);
	FUNC1(dev);
}