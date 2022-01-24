#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  TxBuffAddr; } ;
typedef  TYPE_1__ tx_desc_819x_pci ;
struct sk_buff {int /*<<< orphan*/  len; } ;
struct rtl8192_tx_ring {size_t idx; int entries; TYPE_1__* desc; int /*<<< orphan*/  dma; int /*<<< orphan*/  queue; } ;
struct r8192_priv {int /*<<< orphan*/  pdev; struct rtl8192_tx_ring* tx_ring; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ *) ; 
 struct r8192_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct net_device *dev, unsigned int prio)
{
    struct r8192_priv *priv = FUNC1(dev);
    struct rtl8192_tx_ring *ring = &priv->tx_ring[prio];

    while (FUNC6(&ring->queue)) {
        tx_desc_819x_pci *entry = &ring->desc[ring->idx];
        struct sk_buff *skb = FUNC0(&ring->queue);

        FUNC5(priv->pdev, FUNC3(entry->TxBuffAddr),
                skb->len, PCI_DMA_TODEVICE);
        FUNC2(skb);
        ring->idx = (ring->idx + 1) % ring->entries;
    }

    FUNC4(priv->pdev, sizeof(*ring->desc)*ring->entries,
            ring->desc, ring->dma);
    ring->desc = NULL;
}