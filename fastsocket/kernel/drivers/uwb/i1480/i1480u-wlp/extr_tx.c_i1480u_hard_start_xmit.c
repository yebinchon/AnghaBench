
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uwb_dev_addr {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_3__ {int tx_dropped; } ;
struct net_device {int flags; TYPE_1__ stats; } ;
struct i1480u {int wlp; TYPE_2__* usb_iface; } ;
struct device {int dummy; } ;
typedef int netdev_tx_t ;
struct TYPE_4__ {struct device dev; } ;


 int IFF_UP ;
 int NETDEV_TX_OK ;
 int dev_err (struct device*,char*,int) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int i1480u_xmit_frame (int *,struct sk_buff*,struct uwb_dev_addr*) ;
 struct i1480u* netdev_priv (struct net_device*) ;
 int wlp_prepare_tx_frame (struct device*,int *,struct sk_buff*,struct uwb_dev_addr*) ;

netdev_tx_t i1480u_hard_start_xmit(struct sk_buff *skb,
      struct net_device *net_dev)
{
 int result;
 struct i1480u *i1480u = netdev_priv(net_dev);
 struct device *dev = &i1480u->usb_iface->dev;
 struct uwb_dev_addr dst;

 if ((net_dev->flags & IFF_UP) == 0)
  goto error;
 result = wlp_prepare_tx_frame(dev, &i1480u->wlp, skb, &dst);
 if (result < 0) {
  dev_err(dev, "WLP verification of TX frame failed (%d). "
   "Dropping packet.\n", result);
  goto error;
 } else if (result == 1) {


  goto out;
 }
 result = i1480u_xmit_frame(&i1480u->wlp, skb, &dst);
 if (result < 0) {
  dev_err(dev, "Frame TX failed (%d).\n", result);
  goto error;
 }
 return NETDEV_TX_OK;
error:
 dev_kfree_skb_any(skb);
 net_dev->stats.tx_dropped++;
out:
 return NETDEV_TX_OK;
}
