
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct sk_buff {int len; int data; } ;
struct r8180_priv {TYPE_2__* ieee80211; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int beacon_interval; } ;
struct TYPE_4__ {int basic_rate; TYPE_1__ current_network; } ;


 int BEACON_PRIORITY ;
 int BcnItv ;
 int BcnItv_BcnItv ;
 int cpu_to_le16 (int ) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 struct sk_buff* ieee80211_get_beacon (TYPE_2__*) ;
 scalar_t__ ieee80211_priv (struct net_device*) ;
 int ieeerate2rtlrate (int ) ;
 int read_nic_word (struct net_device*,int ) ;
 int rtl8180_tx (struct net_device*,int ,int ,int ,int ,int ,int ) ;
 int write_nic_word (struct net_device*,int ,int ) ;

void rtl8180_prepare_beacon(struct net_device *dev)
{
 struct r8180_priv *priv = (struct r8180_priv *)ieee80211_priv(dev);
 struct sk_buff *skb;

 u16 word = read_nic_word(dev, BcnItv);
 word &= ~BcnItv_BcnItv;
 word |= cpu_to_le16(priv->ieee80211->current_network.beacon_interval);
 write_nic_word(dev, BcnItv, word);

 skb = ieee80211_get_beacon(priv->ieee80211);
 if(skb){
  rtl8180_tx(dev,skb->data,skb->len,BEACON_PRIORITY,
   0,0,ieeerate2rtlrate(priv->ieee80211->basic_rate));
  dev_kfree_skb_any(skb);
 }
}
