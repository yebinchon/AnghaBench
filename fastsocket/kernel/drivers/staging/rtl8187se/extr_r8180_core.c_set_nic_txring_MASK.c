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
struct r8180_priv {int /*<<< orphan*/  txbeaconringdma; int /*<<< orphan*/  txhpringdma; int /*<<< orphan*/  txvopringdma; int /*<<< orphan*/  txvipringdma; int /*<<< orphan*/  txbepringdma; int /*<<< orphan*/  txbkpringdma; int /*<<< orphan*/  txmapringdma; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TX_BEACON_RING_ADDR ; 
 int /*<<< orphan*/  TX_BEPRIORITY_RING_ADDR ; 
 int /*<<< orphan*/  TX_BKPRIORITY_RING_ADDR ; 
 int /*<<< orphan*/  TX_HIGHPRIORITY_RING_ADDR ; 
 int /*<<< orphan*/  TX_MANAGEPRIORITY_RING_ADDR ; 
 int /*<<< orphan*/  TX_VIPRIORITY_RING_ADDR ; 
 int /*<<< orphan*/  TX_VOPRIORITY_RING_ADDR ; 
 scalar_t__ FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(struct net_device *dev)
{
	struct r8180_priv *priv = (struct r8180_priv *)FUNC0(dev);

	FUNC1(dev, TX_MANAGEPRIORITY_RING_ADDR, priv->txmapringdma);
	FUNC1(dev, TX_BKPRIORITY_RING_ADDR, priv->txbkpringdma);
	FUNC1(dev, TX_BEPRIORITY_RING_ADDR, priv->txbepringdma);
	FUNC1(dev, TX_VIPRIORITY_RING_ADDR, priv->txvipringdma);
	FUNC1(dev, TX_VOPRIORITY_RING_ADDR, priv->txvopringdma);
	FUNC1(dev, TX_HIGHPRIORITY_RING_ADDR, priv->txhpringdma);
	FUNC1(dev, TX_BEACON_RING_ADDR, priv->txbeaconringdma);
}