
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; scalar_t__ len; } ;
struct ieee80211_rx_status {scalar_t__ vendor_radiotap_len; int flag; } ;
struct ieee80211_hdr {int frame_control; } ;


 struct ieee80211_rx_status* IEEE80211_SKB_RXCB (struct sk_buff*) ;
 int RX_FLAG_AMPDU_IS_ZEROLEN ;
 int RX_FLAG_FAILED_FCS_CRC ;
 int RX_FLAG_FAILED_PLCP_CRC ;
 int ieee80211_is_back_req (int ) ;
 scalar_t__ ieee80211_is_ctl (int ) ;
 int ieee80211_is_pspoll (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline int should_drop_frame(struct sk_buff *skb, int present_fcs_len)
{
 struct ieee80211_rx_status *status = IEEE80211_SKB_RXCB(skb);
 struct ieee80211_hdr *hdr;

 hdr = (void *)(skb->data + status->vendor_radiotap_len);

 if (status->flag & (RX_FLAG_FAILED_FCS_CRC |
       RX_FLAG_FAILED_PLCP_CRC |
       RX_FLAG_AMPDU_IS_ZEROLEN))
  return 1;
 if (unlikely(skb->len < 16 + present_fcs_len +
    status->vendor_radiotap_len))
  return 1;
 if (ieee80211_is_ctl(hdr->frame_control) &&
     !ieee80211_is_pspoll(hdr->frame_control) &&
     !ieee80211_is_back_req(hdr->frame_control))
  return 1;
 return 0;
}
