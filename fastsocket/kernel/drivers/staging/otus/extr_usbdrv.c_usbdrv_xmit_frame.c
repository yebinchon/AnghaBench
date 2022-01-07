
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tx_packets; int tx_bytes; } ;
struct TYPE_4__ {TYPE_1__ net_stats; } ;
struct usbdrv_private {TYPE_2__ drv_stats; } ;
struct sk_buff {char* data; scalar_t__ len; } ;
struct net_device {struct usbdrv_private* ml_priv; } ;


 int FALSE ;
 int GFP_ATOMIC ;
 int NETDEV_TX_OK ;
 int RTMGRP_LINK ;
 int dev_kfree_skb_irq (struct sk_buff*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int netlink_broadcast (int ,struct sk_buff*,int ,int ,int ) ;
 int printk (char*,scalar_t__,scalar_t__) ;
 int rtnl ;
 struct sk_buff* skb_copy_expand (struct sk_buff*,int,int ,int ) ;
 int skb_push (struct sk_buff*,int) ;
 int zfiTxSendEth (struct net_device*,struct sk_buff*,int ) ;

int usbdrv_xmit_frame(struct sk_buff *skb, struct net_device *dev)
{
    int notify_stop = FALSE;
    struct usbdrv_private *macp = dev->ml_priv;
    zfiTxSendEth(dev, skb, 0);

    macp->drv_stats.net_stats.tx_bytes += skb->len;
    macp->drv_stats.net_stats.tx_packets++;



    if (notify_stop) {
        netif_carrier_off(dev);
        netif_stop_queue(dev);
    }

    return NETDEV_TX_OK;
}
