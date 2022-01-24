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
struct net_device {int /*<<< orphan*/ * netdev_ops; } ;
struct br2684_dev {int /*<<< orphan*/  brvccs; struct net_device* net_dev; } ;

/* Variables and functions */
 struct br2684_dev* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  br2684_netdev_ops ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 

__attribute__((used)) static void FUNC3(struct net_device *netdev)
{
	struct br2684_dev *brdev = FUNC0(netdev);

	FUNC2(netdev);
	brdev->net_dev = netdev;

	netdev->netdev_ops = &br2684_netdev_ops;

	FUNC1(&brdev->brvccs);
}