
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {scalar_t__ len; int data; } ;
struct r8180_priv {int tx_lock; TYPE_2__* ieee80211; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int tx_packets; int tx_bytes; } ;
struct TYPE_4__ {TYPE_1__ stats; int basic_rate; scalar_t__ bHwRadioOff; } ;


 int MANAGE_PRIORITY ;
 int NETDEV_TX_OK ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 scalar_t__ ieee80211_priv (struct net_device*) ;
 int ieeerate2rtlrate (int ) ;
 int rtl8180_tx (struct net_device*,int ,scalar_t__,int,int ,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int rtl8180_hard_start_xmit(struct sk_buff *skb,struct net_device *dev)
{
 struct r8180_priv *priv = (struct r8180_priv *)ieee80211_priv(dev);
 unsigned long flags;
 int priority;

 priority = MANAGE_PRIORITY;

 spin_lock_irqsave(&priv->tx_lock,flags);

 if (priv->ieee80211->bHwRadioOff) {
  spin_unlock_irqrestore(&priv->tx_lock,flags);
  dev_kfree_skb_any(skb);
  return NETDEV_TX_OK;
 }

 rtl8180_tx(dev, skb->data, skb->len, priority,
  0, 0,ieeerate2rtlrate(priv->ieee80211->basic_rate));

 priv->ieee80211->stats.tx_bytes+=skb->len;
 priv->ieee80211->stats.tx_packets++;
 spin_unlock_irqrestore(&priv->tx_lock,flags);

 dev_kfree_skb_any(skb);
 return NETDEV_TX_OK;
}
