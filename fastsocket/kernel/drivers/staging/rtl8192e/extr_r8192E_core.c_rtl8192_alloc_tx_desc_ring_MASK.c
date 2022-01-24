#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_6__ {int /*<<< orphan*/  NextDescAddress; } ;
typedef  TYPE_2__ tx_desc_819x_pci ;
struct r8192_priv {TYPE_1__* tx_ring; int /*<<< orphan*/  pdev; } ;
struct net_device {int dummy; } ;
typedef  scalar_t__ dma_addr_t ;
struct TYPE_5__ {unsigned int entries; int /*<<< orphan*/  queue; scalar_t__ idx; scalar_t__ dma; TYPE_2__* desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_ERR ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev,
        unsigned int prio, unsigned int entries)
{
    struct r8192_priv *priv = (struct r8192_priv *)FUNC2(dev);
    tx_desc_819x_pci *ring;
    dma_addr_t dma;
    int i;

    ring = FUNC4(priv->pdev, sizeof(*ring) * entries, &dma);
    if (!ring || (unsigned long)ring & 0xFF) {
        FUNC0(COMP_ERR, "Cannot allocate TX ring (prio = %d)\n", prio);
        return -ENOMEM;
    }

    FUNC3(ring, 0, sizeof(*ring)*entries);
    priv->tx_ring[prio].desc = ring;
    priv->tx_ring[prio].dma = dma;
    priv->tx_ring[prio].idx = 0;
    priv->tx_ring[prio].entries = entries;
    FUNC5(&priv->tx_ring[prio].queue);

    for (i = 0; i < entries; i++)
        ring[i].NextDescAddress =
            FUNC1((u32)dma + ((i + 1) % entries) * sizeof(*ring));

    return 0;
}