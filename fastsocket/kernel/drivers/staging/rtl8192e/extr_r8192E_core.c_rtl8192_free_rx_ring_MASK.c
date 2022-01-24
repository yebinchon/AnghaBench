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
struct sk_buff {scalar_t__ cb; } ;
struct r8192_priv {int rxringcount; int /*<<< orphan*/ * rx_ring; int /*<<< orphan*/  rx_ring_dma; int /*<<< orphan*/  pdev; int /*<<< orphan*/  rxbuffersize; struct sk_buff** rx_buf; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 struct r8192_priv* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct net_device *dev)
{
    struct r8192_priv *priv = FUNC0(dev);
    int i;

    for (i = 0; i < priv->rxringcount; i++) {
        struct sk_buff *skb = priv->rx_buf[i];
        if (!skb)
            continue;

        FUNC3(priv->pdev,
                *((dma_addr_t *)skb->cb),
                priv->rxbuffersize, PCI_DMA_FROMDEVICE);
        FUNC1(skb);
    }

    FUNC2(priv->pdev, sizeof(*priv->rx_ring) * priv->rxringcount,
            priv->rx_ring, priv->rx_ring_dma);
    priv->rx_ring = NULL;
}