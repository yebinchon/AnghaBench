
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ieee80211_rx_status {int flag; } ;
struct ieee80211_rx_data {TYPE_2__* skb; scalar_t__ key; TYPE_1__* sdata; scalar_t__ sta; } ;
struct ieee80211_hdr {int frame_control; } ;
typedef int __le16 ;
struct TYPE_7__ {scalar_t__ data; int len; } ;
struct TYPE_6__ {int dev; } ;


 int EACCES ;
 struct ieee80211_rx_status* IEEE80211_SKB_RXCB (TYPE_2__*) ;
 int RX_FLAG_DECRYPTED ;
 int WLAN_STA_MFP ;
 int cfg80211_send_unprot_deauth (int ,scalar_t__,int ) ;
 int cfg80211_send_unprot_disassoc (int ,scalar_t__,int ) ;
 scalar_t__ ieee80211_get_mmie_keyidx (TYPE_2__*) ;
 int ieee80211_has_protected (int ) ;
 scalar_t__ ieee80211_is_action (int ) ;
 scalar_t__ ieee80211_is_deauth (int ) ;
 scalar_t__ ieee80211_is_disassoc (int ) ;
 scalar_t__ ieee80211_is_multicast_robust_mgmt_frame (TYPE_2__*) ;
 scalar_t__ ieee80211_is_robust_mgmt_frame (struct ieee80211_hdr*) ;
 scalar_t__ ieee80211_is_unicast_robust_mgmt_frame (TYPE_2__*) ;
 scalar_t__ test_sta_flag (scalar_t__,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ieee80211_drop_unencrypted_mgmt(struct ieee80211_rx_data *rx)
{
 struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)rx->skb->data;
 struct ieee80211_rx_status *status = IEEE80211_SKB_RXCB(rx->skb);
 __le16 fc = hdr->frame_control;





 if (status->flag & RX_FLAG_DECRYPTED)
  return 0;

 if (rx->sta && test_sta_flag(rx->sta, WLAN_STA_MFP)) {
  if (unlikely(!ieee80211_has_protected(fc) &&
        ieee80211_is_unicast_robust_mgmt_frame(rx->skb) &&
        rx->key)) {
   if (ieee80211_is_deauth(fc))
    cfg80211_send_unprot_deauth(rx->sdata->dev,
           rx->skb->data,
           rx->skb->len);
   else if (ieee80211_is_disassoc(fc))
    cfg80211_send_unprot_disassoc(rx->sdata->dev,
             rx->skb->data,
             rx->skb->len);
   return -EACCES;
  }

  if (unlikely(ieee80211_is_multicast_robust_mgmt_frame(rx->skb) &&
        ieee80211_get_mmie_keyidx(rx->skb) < 0)) {
   if (ieee80211_is_deauth(fc))
    cfg80211_send_unprot_deauth(rx->sdata->dev,
           rx->skb->data,
           rx->skb->len);
   else if (ieee80211_is_disassoc(fc))
    cfg80211_send_unprot_disassoc(rx->sdata->dev,
             rx->skb->data,
             rx->skb->len);
   return -EACCES;
  }




  if (unlikely(ieee80211_is_action(fc) && !rx->key &&
        ieee80211_is_robust_mgmt_frame(
         (struct ieee80211_hdr *) rx->skb->data)))
   return -EACCES;
 }

 return 0;
}
