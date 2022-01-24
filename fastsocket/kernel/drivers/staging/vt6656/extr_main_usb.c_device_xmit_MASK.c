#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct net_device_stats {int /*<<< orphan*/  tx_dropped; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {scalar_t__ bLinkPass; scalar_t__ bStopDataPkt; int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; struct net_device_stats stats; } ;
typedef  TYPE_1__* PSDevice ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  TYPE_AC0DMA ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 TYPE_1__* FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int  FUNC8(struct sk_buff *skb, struct net_device *dev) {
    PSDevice    pDevice=FUNC1(dev);
    struct net_device_stats* pStats = &pDevice->stats;


    FUNC6(&pDevice->lock);

    FUNC3(pDevice->dev);

    if (pDevice->bLinkPass == FALSE) {
        FUNC0(skb);
        FUNC7(&pDevice->lock);
        return 0;
    }
    if (pDevice->bStopDataPkt == TRUE) {
        FUNC0(skb);
        pStats->tx_dropped++;
        FUNC7(&pDevice->lock);
        return 0;
    }

    if(FUNC5(pDevice, TYPE_AC0DMA, skb) !=0) {  //mike add:xmit fail!
         if (FUNC2(pDevice->dev))
              FUNC4(pDevice->dev);
    }

    FUNC7(&pDevice->lock);

    return 0;
}