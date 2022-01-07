
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_16__ {void* last_rx; struct usbdrv_private* ml_priv; } ;
typedef TYPE_3__ zdev_t ;
struct TYPE_17__ {scalar_t__ len; void* ip_summed; void* protocol; TYPE_3__* dev; scalar_t__ data; scalar_t__ tail; } ;
typedef TYPE_4__ zbuf_t ;
typedef scalar_t__ u16_t ;
struct TYPE_14__ {scalar_t__ rx_bytes; int rx_packets; } ;
struct TYPE_15__ {TYPE_1__ net_stats; } ;
struct usbdrv_private {TYPE_2__ drv_stats; } ;
struct TYPE_18__ {TYPE_3__* dev; } ;


 void* CHECKSUM_NONE ;

 TYPE_4__* dev_alloc_skb (scalar_t__) ;
 int dev_kfree_skb_any (TYPE_4__*) ;
 void* eth_type_trans (TYPE_4__*,TYPE_3__*) ;
 void* jiffies ;
 int memcpy (scalar_t__,scalar_t__,scalar_t__) ;
 int netif_rx (TYPE_4__*) ;
 int skb_put (TYPE_4__*,scalar_t__) ;
 TYPE_7__* vap ;

void zfLnxRecvEth(zdev_t* dev, zbuf_t* buf, u16_t port)
{
    struct usbdrv_private *macp = dev->ml_priv;
    if (port == 0)
    {
        buf->dev = dev;
        buf->protocol = eth_type_trans(buf, dev);
    }
    else
    {

        if (vap[0].dev != ((void*)0))
        {
            buf->dev = vap[0].dev;
            buf->protocol = eth_type_trans(buf, vap[0].dev);
        }
        else
        {
            buf->dev = dev;
            buf->protocol = eth_type_trans(buf, dev);
        }
    }

    buf->ip_summed = CHECKSUM_NONE;
    dev->last_rx = jiffies;

    switch(netif_rx(buf))

    {
    case 128:
        break;
    default:
            macp->drv_stats.net_stats.rx_packets++;
            macp->drv_stats.net_stats.rx_bytes += buf->len;
        break;
    }

    return;
}
