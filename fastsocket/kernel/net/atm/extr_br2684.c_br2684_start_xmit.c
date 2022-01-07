
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int tx_fifo_errors; int tx_errors; int tx_carrier_errors; } ;
struct net_device {TYPE_1__ stats; int name; } ;
struct br2684_vcc {int dummy; } ;
struct br2684_dev {int dummy; } ;
typedef int netdev_tx_t ;


 struct br2684_dev* BRPRIV (struct net_device*) ;
 int NETDEV_TX_OK ;
 int br2684_xmit_vcc (struct sk_buff*,struct net_device*,struct br2684_vcc*) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int devs_lock ;
 struct br2684_vcc* pick_outgoing_vcc (struct sk_buff*,struct br2684_dev*) ;
 int pr_debug (char*,int ) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int skb_dst (struct sk_buff*) ;

__attribute__((used)) static netdev_tx_t br2684_start_xmit(struct sk_buff *skb,
         struct net_device *dev)
{
 struct br2684_dev *brdev = BRPRIV(dev);
 struct br2684_vcc *brvcc;

 pr_debug("br2684_start_xmit, skb_dst(skb)=%p\n", skb_dst(skb));
 read_lock(&devs_lock);
 brvcc = pick_outgoing_vcc(skb, brdev);
 if (brvcc == ((void*)0)) {
  pr_debug("no vcc attached to dev %s\n", dev->name);
  dev->stats.tx_errors++;
  dev->stats.tx_carrier_errors++;

  dev_kfree_skb(skb);
  read_unlock(&devs_lock);
  return NETDEV_TX_OK;
 }
 if (!br2684_xmit_vcc(skb, dev, brvcc)) {







  dev->stats.tx_errors++;
  dev->stats.tx_fifo_errors++;
 }
 read_unlock(&devs_lock);
 return NETDEV_TX_OK;
}
