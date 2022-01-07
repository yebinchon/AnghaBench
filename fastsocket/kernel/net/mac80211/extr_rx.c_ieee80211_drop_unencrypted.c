
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct ieee80211_rx_status {int flag; } ;
struct ieee80211_rx_data {TYPE_1__* sdata; scalar_t__ key; struct sk_buff* skb; } ;
typedef int __le16 ;
struct TYPE_2__ {scalar_t__ drop_unencrypted; } ;


 int EACCES ;
 struct ieee80211_rx_status* IEEE80211_SKB_RXCB (struct sk_buff*) ;
 int RX_FLAG_DECRYPTED ;
 int ieee80211_has_protected (int ) ;
 scalar_t__ ieee80211_is_data (int ) ;
 int ieee80211_is_nullfunc (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ieee80211_drop_unencrypted(struct ieee80211_rx_data *rx, __le16 fc)
{
 struct sk_buff *skb = rx->skb;
 struct ieee80211_rx_status *status = IEEE80211_SKB_RXCB(skb);





 if (status->flag & RX_FLAG_DECRYPTED)
  return 0;


 if (unlikely(!ieee80211_has_protected(fc) &&
       !ieee80211_is_nullfunc(fc) &&
       ieee80211_is_data(fc) &&
       (rx->key || rx->sdata->drop_unencrypted)))
  return -EACCES;

 return 0;
}
