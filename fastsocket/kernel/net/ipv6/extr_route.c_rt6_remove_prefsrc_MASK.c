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
struct net {int dummy; } ;
struct inet6_ifaddr {int /*<<< orphan*/  addr; TYPE_1__* idev; } ;
struct arg_dev_net_ip {int /*<<< orphan*/ * addr; struct net* net; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct net* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct arg_dev_net_ip*) ; 
 int /*<<< orphan*/  fib6_remove_prefsrc ; 

void FUNC2(struct inet6_ifaddr *ifp)
{
	struct net *net = FUNC0(ifp->idev->dev);
	struct arg_dev_net_ip adni = {
		.dev = ifp->idev->dev,
		.net = net,
		.addr = &ifp->addr,
	};
	FUNC1(net, fib6_remove_prefsrc, 0, &adni);
}