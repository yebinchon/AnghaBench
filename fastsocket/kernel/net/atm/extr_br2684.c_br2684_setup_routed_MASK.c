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
struct net_device {int mtu; int flags; int tx_queue_len; int /*<<< orphan*/  type; scalar_t__ addr_len; int /*<<< orphan*/ * netdev_ops; scalar_t__ hard_header_len; } ;
struct br2684_dev {int /*<<< orphan*/  brvccs; struct net_device* net_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARPHRD_PPP ; 
 struct br2684_dev* FUNC0 (struct net_device*) ; 
 int IFF_MULTICAST ; 
 int IFF_NOARP ; 
 int IFF_POINTOPOINT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  br2684_netdev_ops ; 

__attribute__((used)) static void FUNC2(struct net_device *netdev)
{
	struct br2684_dev *brdev = FUNC0(netdev);
	brdev->net_dev = netdev;

	netdev->hard_header_len = 0;

	netdev->netdev_ops = &br2684_netdev_ops;
	netdev->addr_len = 0;
	netdev->mtu = 1500;
	netdev->type = ARPHRD_PPP;
	netdev->flags = IFF_POINTOPOINT | IFF_NOARP | IFF_MULTICAST;
	netdev->tx_queue_len = 100;
	FUNC1(&brdev->brvccs);
}