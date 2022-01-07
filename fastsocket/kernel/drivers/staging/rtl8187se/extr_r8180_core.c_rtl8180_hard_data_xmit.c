
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int len; scalar_t__ data; int priority; } ;
struct r8180_priv {int tx_lock; TYPE_1__* ieee80211; } ;
struct net_device {int dummy; } ;
struct ieee80211_hdr_3addr {short frame_ctl; } ;
struct TYPE_2__ {int iw_mode; scalar_t__ bHwRadioOff; } ;


 int AC2Q (int ) ;
 int DMESGW (char*,int ) ;
 short IEEE80211_FCTL_MOREFRAGS ;
 int check_nic_enought_desc (struct net_device*,int) ;
 int get_curr_tx_free_desc (struct net_device*,int) ;
 scalar_t__ ieee80211_priv (struct net_device*) ;
 int ieee80211_stop_queue (TYPE_1__*) ;
 int ieeerate2rtlrate (int) ;
 int rtl8180_tx (struct net_device*,scalar_t__,int ,int,short,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void rtl8180_hard_data_xmit(struct sk_buff *skb,struct net_device *dev, int
rate)
{
 struct r8180_priv *priv = (struct r8180_priv *)ieee80211_priv(dev);
 int mode;
 struct ieee80211_hdr_3addr *h = (struct ieee80211_hdr_3addr *) skb->data;
 short morefrag = (h->frame_ctl) & IEEE80211_FCTL_MOREFRAGS;
 unsigned long flags;
 int priority;

 mode = priv->ieee80211->iw_mode;

 rate = ieeerate2rtlrate(rate);







 priority = AC2Q(skb->priority);
 spin_lock_irqsave(&priv->tx_lock,flags);

 if(priv->ieee80211->bHwRadioOff)
 {
  spin_unlock_irqrestore(&priv->tx_lock,flags);

  return;
 }

 if (!check_nic_enought_desc(dev, priority)){
  DMESGW("Error: no descriptor left by previous TX (avail %d) ",
   get_curr_tx_free_desc(dev, priority));
  ieee80211_stop_queue(priv->ieee80211);
 }
 rtl8180_tx(dev, skb->data, skb->len, priority, morefrag,0,rate);
 if (!check_nic_enought_desc(dev, priority))
  ieee80211_stop_queue(priv->ieee80211);

 spin_unlock_irqrestore(&priv->tx_lock,flags);
}
