#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u16_t ;
struct TYPE_4__ {int /*<<< orphan*/  tx_packets; int /*<<< orphan*/  tx_bytes; } ;
struct TYPE_5__ {TYPE_1__ net_stats; } ;
struct usbdrv_private {TYPE_2__ drv_stats; } ;
struct sk_buff {scalar_t__ len; } ;
struct net_device {struct usbdrv_private* ml_priv; } ;
struct TYPE_6__ {scalar_t__ openFlag; } ;

/* Variables and functions */
 int FALSE ; 
 int NETDEV_TX_OK ; 
 size_t ZM_VAP_PORT_NUMBER ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 TYPE_3__* vap ; 
 size_t FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,struct sk_buff*,int) ; 

int FUNC5(struct sk_buff *skb, struct net_device *dev)
{
    int notify_stop = FALSE;
    struct usbdrv_private *macp = dev->ml_priv;
    u16_t vapId;

    vapId = FUNC3(dev);
    //printk("zfLnxVapXmitFrame: vap ID=%d\n", vapId);
    //printk("zfLnxVapXmitFrame(), skb=%lxh\n", (u32_t)skb);

    if (vapId >= ZM_VAP_PORT_NUMBER)
    {
        FUNC0(skb);
        return NETDEV_TX_OK;
    }
#if 1
    if (vap[vapId].openFlag == 0)
    {
        FUNC0(skb);
        return NETDEV_TX_OK;
    }
#endif


    FUNC4(dev, skb, 0x1);

    macp->drv_stats.net_stats.tx_bytes += skb->len;
    macp->drv_stats.net_stats.tx_packets++;

    //dev_kfree_skb_irq(skb);

    if (notify_stop) {
        FUNC1(dev);
        FUNC2(dev);
    }

    return NETDEV_TX_OK;
}