
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int rx_bytes; int rx_packets; } ;
struct net_device {TYPE_2__ stats; } ;
struct i1480u {scalar_t__ rx_untd_pkt_size; TYPE_3__* rx_skb; int rx_srcaddr; int wlp; TYPE_1__* usb_iface; struct net_device* net_dev; } ;
struct device {int dummy; } ;
struct TYPE_8__ {int protocol; } ;
struct TYPE_6__ {struct device dev; } ;


 int eth_type_trans (TYPE_3__*,struct net_device*) ;
 int netif_rx (TYPE_3__*) ;
 int wlp_receive_frame (struct device*,int *,TYPE_3__*,int *) ;

__attribute__((used)) static
void i1480u_skb_deliver(struct i1480u *i1480u)
{
 int should_parse;
 struct net_device *net_dev = i1480u->net_dev;
 struct device *dev = &i1480u->usb_iface->dev;

 should_parse = wlp_receive_frame(dev, &i1480u->wlp, i1480u->rx_skb,
      &i1480u->rx_srcaddr);
 if (!should_parse)
  goto out;
 i1480u->rx_skb->protocol = eth_type_trans(i1480u->rx_skb, net_dev);
 net_dev->stats.rx_packets++;
 net_dev->stats.rx_bytes += i1480u->rx_untd_pkt_size;

 netif_rx(i1480u->rx_skb);
out:
 i1480u->rx_skb = ((void*)0);
 i1480u->rx_untd_pkt_size = 0;
}
