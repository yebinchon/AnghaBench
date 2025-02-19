
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int len; scalar_t__ data; } ;
struct ieee80211_rx_status {int flag; } ;
struct ieee80211_rx_data {int tkip_iv16; int tkip_iv32; int security_idx; TYPE_3__* sta; TYPE_1__* local; struct sk_buff* skb; struct ieee80211_key* key; } ;
struct ieee80211_key {int dummy; } ;
struct ieee80211_hdr {int addr1; int frame_control; } ;
typedef int ieee80211_rx_result ;
struct TYPE_5__ {int addr; } ;
struct TYPE_6__ {TYPE_2__ sta; } ;
struct TYPE_4__ {int wep_rx_tfm; } ;


 struct ieee80211_rx_status* IEEE80211_SKB_RXCB (struct sk_buff*) ;
 int RX_CONTINUE ;
 int RX_DROP_UNUSABLE ;
 int RX_FLAG_DECRYPTED ;
 int TKIP_DECRYPT_OK ;
 scalar_t__ TKIP_ICV_LEN ;
 scalar_t__ TKIP_IV_LEN ;
 int ieee80211_hdrlen (int ) ;
 int ieee80211_is_data (int ) ;
 int ieee80211_tkip_decrypt_data (int ,struct ieee80211_key*,scalar_t__,int,int ,int ,int,int ,int *,int *) ;
 int memmove (scalar_t__,scalar_t__,int) ;
 scalar_t__ skb_linearize (struct sk_buff*) ;
 int skb_pull (struct sk_buff*,scalar_t__) ;
 int skb_trim (struct sk_buff*,scalar_t__) ;

ieee80211_rx_result
ieee80211_crypto_tkip_decrypt(struct ieee80211_rx_data *rx)
{
 struct ieee80211_hdr *hdr = (struct ieee80211_hdr *) rx->skb->data;
 int hdrlen, res, hwaccel = 0;
 struct ieee80211_key *key = rx->key;
 struct sk_buff *skb = rx->skb;
 struct ieee80211_rx_status *status = IEEE80211_SKB_RXCB(skb);

 hdrlen = ieee80211_hdrlen(hdr->frame_control);

 if (!ieee80211_is_data(hdr->frame_control))
  return RX_CONTINUE;

 if (!rx->sta || skb->len - hdrlen < 12)
  return RX_DROP_UNUSABLE;


 if (skb_linearize(rx->skb))
  return RX_DROP_UNUSABLE;
 hdr = (void *)skb->data;






 if (status->flag & RX_FLAG_DECRYPTED)
  hwaccel = 1;

 res = ieee80211_tkip_decrypt_data(rx->local->wep_rx_tfm,
       key, skb->data + hdrlen,
       skb->len - hdrlen, rx->sta->sta.addr,
       hdr->addr1, hwaccel, rx->security_idx,
       &rx->tkip_iv32,
       &rx->tkip_iv16);
 if (res != TKIP_DECRYPT_OK)
  return RX_DROP_UNUSABLE;


 skb_trim(skb, skb->len - TKIP_ICV_LEN);


 memmove(skb->data + TKIP_IV_LEN, skb->data, hdrlen);
 skb_pull(skb, TKIP_IV_LEN);

 return RX_CONTINUE;
}
