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
typedef  short u32 ;
struct r8192_priv {int txringcount; TYPE_1__* tx_ring; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ desc; } ;

/* Variables and functions */
 int MAX_TX_QUEUE_COUNT ; 
 struct r8192_priv* FUNC0 (struct net_device*) ; 
 short FUNC1 (struct net_device*) ; 
 short FUNC2 (struct net_device*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int) ; 

__attribute__((used)) static short FUNC5(struct net_device *dev)
{
    u32 ret;
    int i;
    struct r8192_priv *priv = FUNC0(dev);

    ret = FUNC1(dev);
    if (ret) {
        return ret;
    }


    /* general process for other queue */
    for (i = 0; i < MAX_TX_QUEUE_COUNT; i++) {
        if ((ret = FUNC2(dev, i, priv->txringcount)))
            goto err_free_rings;
    }

#if 0
    /* specific process for hardware beacon process */
    if ((ret = rtl8192_alloc_tx_desc_ring(dev, MAX_TX_QUEUE_COUNT - 1, 2)))
        goto err_free_rings;
#endif

    return 0;

err_free_rings:
    FUNC3(dev);
    for (i = 0; i < MAX_TX_QUEUE_COUNT; i++)
        if (priv->tx_ring[i].desc)
            FUNC4(dev, i);
    return 1;
}