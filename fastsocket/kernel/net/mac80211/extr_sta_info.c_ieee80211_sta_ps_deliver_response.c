
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct sta_info {unsigned long driver_buffered_tids; struct sk_buff_head* ps_tx_buf; struct sk_buff_head* tx_filtered; struct ieee80211_sub_if_data* sdata; } ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;
struct ieee80211_tx_info {int flags; } ;
struct ieee80211_sub_if_data {struct ieee80211_local* local; } ;
struct ieee80211_local {int total_ps_buffered; } ;
struct ieee80211_hdr {int frame_control; } ;
typedef enum ieee80211_frame_release_type { ____Placeholder_ieee80211_frame_release_type } ieee80211_frame_release_type ;


 int BIT (int) ;
 int IEEE80211_FCTL_MOREDATA ;
 int IEEE80211_FRAME_RELEASE_PSPOLL ;
 int IEEE80211_FRAME_RELEASE_UAPSD ;
 int IEEE80211_NUM_ACS ;
 int IEEE80211_QOS_CTL_EOSP ;
 int IEEE80211_QOS_CTL_TID_MASK ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int IEEE80211_TX_CTL_NO_PS_BUFFER ;
 int IEEE80211_TX_CTL_REQ_TX_STATUS ;
 int IEEE80211_TX_STATUS_EOSP ;
 int WLAN_STA_SP ;
 struct sk_buff* __skb_dequeue (struct sk_buff_head*) ;
 int __skb_queue_head_init (struct sk_buff_head*) ;
 int __skb_queue_tail (struct sk_buff_head*,struct sk_buff*) ;
 int cpu_to_le16 (int ) ;
 int drv_allow_buffered_frames (struct ieee80211_local*,struct sta_info*,int,int,int,int) ;
 int drv_release_buffered_frames (struct ieee80211_local*,struct sta_info*,unsigned long,int,int,int) ;
 int ffs (int) ;
 int hweight16 (unsigned long) ;
 int ieee80211_add_pending_skbs (struct ieee80211_local*,struct sk_buff_head*) ;
 int* ieee80211_get_qos_ctl (struct ieee80211_hdr*) ;
 scalar_t__ ieee80211_is_data_qos (int ) ;
 scalar_t__ ieee80211_is_qos_nullfunc (int ) ;
 int ieee80211_send_null_response (struct ieee80211_sub_if_data*,struct sta_info*,int,int) ;
 unsigned long ieee80211_tids_for_ac (int) ;
 int set_sta_flag (struct sta_info*,int ) ;
 struct sk_buff* skb_dequeue (struct sk_buff_head*) ;
 scalar_t__ skb_queue_empty (struct sk_buff_head*) ;
 int skb_queue_head_init (struct sk_buff_head*) ;
 int sta_info_recalc_tim (struct sta_info*) ;

__attribute__((used)) static void
ieee80211_sta_ps_deliver_response(struct sta_info *sta,
      int n_frames, u8 ignored_acs,
      enum ieee80211_frame_release_type reason)
{
 struct ieee80211_sub_if_data *sdata = sta->sdata;
 struct ieee80211_local *local = sdata->local;
 bool found = 0;
 bool more_data = 0;
 int ac;
 unsigned long driver_release_tids = 0;
 struct sk_buff_head frames;


 set_sta_flag(sta, WLAN_STA_SP);

 __skb_queue_head_init(&frames);




 for (ac = 0; ac < IEEE80211_NUM_ACS; ac++) {
  unsigned long tids;

  if (ignored_acs & BIT(ac))
   continue;

  tids = ieee80211_tids_for_ac(ac);

  if (!found) {
   driver_release_tids = sta->driver_buffered_tids & tids;
   if (driver_release_tids) {
    found = 1;
   } else {
    struct sk_buff *skb;

    while (n_frames > 0) {
     skb = skb_dequeue(&sta->tx_filtered[ac]);
     if (!skb) {
      skb = skb_dequeue(
       &sta->ps_tx_buf[ac]);
      if (skb)
       local->total_ps_buffered--;
     }
     if (!skb)
      break;
     n_frames--;
     found = 1;
     __skb_queue_tail(&frames, skb);
    }
   }






   if (reason == IEEE80211_FRAME_RELEASE_PSPOLL &&
       hweight16(driver_release_tids) > 1) {
    more_data = 1;
    driver_release_tids =
     BIT(ffs(driver_release_tids) - 1);
    break;
   }
  }

  if (!skb_queue_empty(&sta->tx_filtered[ac]) ||
      !skb_queue_empty(&sta->ps_tx_buf[ac])) {
   more_data = 1;
   break;
  }
 }

 if (!found) {
  int tid;
  tid = 7 - ((ffs(~ignored_acs) - 1) << 1);

  ieee80211_send_null_response(sdata, sta, tid, reason);
  return;
 }

 if (!driver_release_tids) {
  struct sk_buff_head pending;
  struct sk_buff *skb;
  int num = 0;
  u16 tids = 0;

  skb_queue_head_init(&pending);

  while ((skb = __skb_dequeue(&frames))) {
   struct ieee80211_tx_info *info = IEEE80211_SKB_CB(skb);
   struct ieee80211_hdr *hdr = (void *) skb->data;
   u8 *qoshdr = ((void*)0);

   num++;






   info->flags |= IEEE80211_TX_CTL_NO_PS_BUFFER;





   if (more_data || !skb_queue_empty(&frames))
    hdr->frame_control |=
     cpu_to_le16(IEEE80211_FCTL_MOREDATA);
   else
    hdr->frame_control &=
     cpu_to_le16(~IEEE80211_FCTL_MOREDATA);

   if (ieee80211_is_data_qos(hdr->frame_control) ||
       ieee80211_is_qos_nullfunc(hdr->frame_control))
    qoshdr = ieee80211_get_qos_ctl(hdr);


   if (skb_queue_empty(&frames)) {
    if (reason == IEEE80211_FRAME_RELEASE_UAPSD &&
        qoshdr)
     *qoshdr |= IEEE80211_QOS_CTL_EOSP;

    info->flags |= IEEE80211_TX_STATUS_EOSP |
            IEEE80211_TX_CTL_REQ_TX_STATUS;
   }

   if (qoshdr)
    tids |= BIT(*qoshdr & IEEE80211_QOS_CTL_TID_MASK);
   else
    tids |= BIT(0);

   __skb_queue_tail(&pending, skb);
  }

  drv_allow_buffered_frames(local, sta, tids, num,
       reason, more_data);

  ieee80211_add_pending_skbs(local, &pending);

  sta_info_recalc_tim(sta);
 } else {
  drv_release_buffered_frames(local, sta, driver_release_tids,
         n_frames, reason, more_data);
 }
}
