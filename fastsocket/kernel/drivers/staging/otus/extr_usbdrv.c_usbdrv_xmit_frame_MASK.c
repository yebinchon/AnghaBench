#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  tx_packets; int /*<<< orphan*/  tx_bytes; } ;
struct TYPE_4__ {TYPE_1__ net_stats; } ;
struct usbdrv_private {TYPE_2__ drv_stats; } ;
struct sk_buff {char* data; scalar_t__ len; } ;
struct net_device {struct usbdrv_private* ml_priv; } ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int NETDEV_TX_OK ; 
 int /*<<< orphan*/  RTMGRP_LINK ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  rtnl ; 
 struct sk_buff* FUNC5 (struct sk_buff*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,struct sk_buff*,int /*<<< orphan*/ ) ; 

int FUNC8(struct sk_buff *skb, struct net_device *dev)
{
    int notify_stop = FALSE;
    struct usbdrv_private *macp = dev->ml_priv;

#if 0
    /* Test code */
    {
        struct sk_buff* s;

        s = skb_copy_expand(skb, 8, 0, GFP_ATOMIC);
        skb_push(s, 8);
        s->data[0] = 'z';
        s->data[1] = 'y';
        s->data[2] = 'd';
        s->data[3] = 'a';
        s->data[4] = 's';
        printk("len1=%d, len2=%d", skb->len, s->len);
        netlink_broadcast(rtnl, s, 0, RTMGRP_LINK, GFP_ATOMIC);
    }
#endif

#if ZM_DISABLE_XMIT
    dev_kfree_skb_irq(skb);
#else
    FUNC7(dev, skb, 0);
#endif
    macp->drv_stats.net_stats.tx_bytes += skb->len;
    macp->drv_stats.net_stats.tx_packets++;

    //dev_kfree_skb_irq(skb);

    if (notify_stop) {
        FUNC1(dev);
        FUNC2(dev);
    }

    return NETDEV_TX_OK;
}