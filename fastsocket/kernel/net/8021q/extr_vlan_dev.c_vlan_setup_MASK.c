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
struct net_device {int /*<<< orphan*/  broadcast; int /*<<< orphan*/ * ethtool_ops; int /*<<< orphan*/  destructor; int /*<<< orphan*/ * netdev_ops; scalar_t__ tx_queue_len; int /*<<< orphan*/  priv_flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  ext_priv_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  IFF_802_1Q_VLAN ; 
 int /*<<< orphan*/  IFF_TX_SKB_SHARING ; 
 int /*<<< orphan*/  IFF_XMIT_DST_RELEASE ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  free_netdev ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  vlan_ethtool_ops ; 
 int /*<<< orphan*/  vlan_netdev_ops ; 

void FUNC3(struct net_device *dev)
{
	FUNC0(dev);

	dev->priv_flags		|= IFF_802_1Q_VLAN;
	dev->priv_flags		&= ~IFF_XMIT_DST_RELEASE;
	FUNC2(dev)->ext_priv_flags &= ~IFF_TX_SKB_SHARING;
	dev->tx_queue_len	= 0;

	dev->netdev_ops		= &vlan_netdev_ops;
	dev->destructor		= free_netdev;
	dev->ethtool_ops	= &vlan_ethtool_ops;

	FUNC1(dev->broadcast, 0, ETH_ALEN);
}