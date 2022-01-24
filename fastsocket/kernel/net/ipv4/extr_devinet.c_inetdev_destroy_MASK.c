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
struct net_device {int /*<<< orphan*/ * ip_ptr; } ;
struct in_ifaddr {int dummy; } ;
struct in_device {int dead; int /*<<< orphan*/  rcu_head; int /*<<< orphan*/  arp_parms; struct in_ifaddr* ifa_list; struct net_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  arp_tbl ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct in_device*) ; 
 int /*<<< orphan*/  in_dev_rcu_put ; 
 int /*<<< orphan*/  FUNC4 (struct in_device*,struct in_ifaddr**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct in_ifaddr*) ; 
 int /*<<< orphan*/  FUNC6 (struct in_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct in_device *in_dev)
{
	struct in_ifaddr *ifa;
	struct net_device *dev;

	FUNC0();

	dev = in_dev->dev;

	in_dev->dead = 1;

	FUNC6(in_dev);

	while ((ifa = in_dev->ifa_list) != NULL) {
		FUNC4(in_dev, &in_dev->ifa_list, 0);
		FUNC5(ifa);
	}

	dev->ip_ptr = NULL;

	FUNC3(in_dev);
	FUNC7(&arp_tbl, in_dev->arp_parms);
	FUNC1(dev);

	FUNC2(&in_dev->rcu_head, in_dev_rcu_put);
}