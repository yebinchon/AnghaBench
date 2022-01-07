
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u16_t ;
struct TYPE_4__ {int tx_packets; int tx_bytes; } ;
struct TYPE_5__ {TYPE_1__ net_stats; } ;
struct usbdrv_private {TYPE_2__ drv_stats; } ;
struct sk_buff {scalar_t__ len; } ;
struct net_device {struct usbdrv_private* ml_priv; } ;
struct TYPE_6__ {scalar_t__ openFlag; } ;


 int FALSE ;
 int NETDEV_TX_OK ;
 size_t ZM_VAP_PORT_NUMBER ;
 int dev_kfree_skb_irq (struct sk_buff*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 TYPE_3__* vap ;
 size_t zfLnxGetVapId (struct net_device*) ;
 int zfiTxSendEth (struct net_device*,struct sk_buff*,int) ;

int zfLnxVapXmitFrame(struct sk_buff *skb, struct net_device *dev)
{
    int notify_stop = FALSE;
    struct usbdrv_private *macp = dev->ml_priv;
    u16_t vapId;

    vapId = zfLnxGetVapId(dev);



    if (vapId >= ZM_VAP_PORT_NUMBER)
    {
        dev_kfree_skb_irq(skb);
        return NETDEV_TX_OK;
    }

    if (vap[vapId].openFlag == 0)
    {
        dev_kfree_skb_irq(skb);
        return NETDEV_TX_OK;
    }



    zfiTxSendEth(dev, skb, 0x1);

    macp->drv_stats.net_stats.tx_bytes += skb->len;
    macp->drv_stats.net_stats.tx_packets++;



    if (notify_stop) {
        netif_carrier_off(dev);
        netif_stop_queue(dev);
    }

    return NETDEV_TX_OK;
}
