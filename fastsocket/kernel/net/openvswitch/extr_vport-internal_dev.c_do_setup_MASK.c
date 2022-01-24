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
struct net_device {int features; int vlan_features; int /*<<< orphan*/  dev_addr; scalar_t__ tx_queue_len; int /*<<< orphan*/  destructor; int /*<<< orphan*/ * netdev_ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  ext_priv_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFF_LIVE_ADDR_CHANGE ; 
 int /*<<< orphan*/  IFF_TX_SKB_SHARING ; 
 int NETIF_F_FRAGLIST ; 
 int NETIF_F_HIGHDMA ; 
 int NETIF_F_HW_CSUM ; 
 int NETIF_F_HW_VLAN_TX ; 
 int NETIF_F_LLTX ; 
 int NETIF_F_SG ; 
 int NETIF_F_TSO ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  internal_dev_destructor ; 
 int /*<<< orphan*/  internal_dev_ethtool_ops ; 
 int /*<<< orphan*/  internal_dev_netdev_ops ; 
 TYPE_1__* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct net_device *netdev)
{
	FUNC1(netdev);

	netdev->netdev_ops = &internal_dev_netdev_ops;

	FUNC2(netdev)->ext_priv_flags &= ~IFF_TX_SKB_SHARING;
	FUNC2(netdev)->ext_priv_flags |= IFF_LIVE_ADDR_CHANGE;
	netdev->destructor = internal_dev_destructor;
	FUNC0(netdev, &internal_dev_ethtool_ops);
	netdev->tx_queue_len = 0;

	netdev->features = NETIF_F_LLTX | NETIF_F_SG | NETIF_F_FRAGLIST |
			   NETIF_F_HIGHDMA | NETIF_F_HW_CSUM | NETIF_F_TSO;

	netdev->vlan_features = netdev->features;
	netdev->features |= NETIF_F_HW_VLAN_TX;
	netdev->features &= ~NETIF_F_LLTX;
	FUNC3(netdev->dev_addr);
}