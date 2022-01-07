
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int addr; int aid; } ;
struct sta_info {TYPE_2__ sta; int * ps_tx_buf; int sdata; } ;
struct sk_buff {int dummy; } ;
struct TYPE_7__ {int * vif; scalar_t__ jiffies; } ;
struct ieee80211_tx_info {int flags; TYPE_1__ control; } ;
struct ieee80211_tx_data {TYPE_5__* sdata; TYPE_3__* skb; struct ieee80211_local* local; struct sta_info* sta; } ;
struct ieee80211_local {scalar_t__ total_ps_buffered; int sta_cleanup; int hw; } ;
struct ieee80211_hdr {int frame_control; } ;
typedef int ieee80211_tx_result ;
struct TYPE_10__ {int vif; } ;
struct TYPE_9__ {scalar_t__ data; } ;


 struct ieee80211_tx_info* IEEE80211_SKB_CB (TYPE_3__*) ;
 int IEEE80211_TX_CTL_NO_PS_BUFFER ;
 int IEEE80211_TX_INTFL_NEED_TXPROCESSING ;
 scalar_t__ STA_INFO_CLEANUP_INTERVAL ;
 scalar_t__ STA_MAX_TX_BUFFER ;
 scalar_t__ TOTAL_MAX_TX_BUFFER ;
 int TX_CONTINUE ;
 int TX_QUEUED ;
 int WLAN_STA_PS_DRIVER ;
 int WLAN_STA_PS_STA ;
 int ieee80211_free_txskb (int *,struct sk_buff*) ;
 int ieee80211_is_action (int ) ;
 int ieee80211_is_deauth (int ) ;
 int ieee80211_is_disassoc (int ) ;
 scalar_t__ ieee80211_is_mgmt (int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,int ) ;
 int ps_dbg (TYPE_5__*,char*,int ,...) ;
 int purge_old_ps_buffers (struct ieee80211_local*) ;
 int round_jiffies (scalar_t__) ;
 struct sk_buff* skb_dequeue (int *) ;
 int skb_get_queue_mapping (TYPE_3__*) ;
 scalar_t__ skb_queue_len (int *) ;
 int skb_queue_tail (int *,TYPE_3__*) ;
 int sta_info_recalc_tim (struct sta_info*) ;
 int test_sta_flag (struct sta_info*,int ) ;
 int timer_pending (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static ieee80211_tx_result
ieee80211_tx_h_unicast_ps_buf(struct ieee80211_tx_data *tx)
{
 struct sta_info *sta = tx->sta;
 struct ieee80211_tx_info *info = IEEE80211_SKB_CB(tx->skb);
 struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)tx->skb->data;
 struct ieee80211_local *local = tx->local;

 if (unlikely(!sta))
  return TX_CONTINUE;

 if (unlikely((test_sta_flag(sta, WLAN_STA_PS_STA) ||
        test_sta_flag(sta, WLAN_STA_PS_DRIVER)) &&
       !(info->flags & IEEE80211_TX_CTL_NO_PS_BUFFER))) {
  int ac = skb_get_queue_mapping(tx->skb);


  if (ieee80211_is_mgmt(hdr->frame_control) &&
      !ieee80211_is_deauth(hdr->frame_control) &&
      !ieee80211_is_disassoc(hdr->frame_control) &&
      !ieee80211_is_action(hdr->frame_control)) {
   info->flags |= IEEE80211_TX_CTL_NO_PS_BUFFER;
   return TX_CONTINUE;
  }

  ps_dbg(sta->sdata, "STA %pM aid %d: PS buffer for AC %d\n",
         sta->sta.addr, sta->sta.aid, ac);
  if (tx->local->total_ps_buffered >= TOTAL_MAX_TX_BUFFER)
   purge_old_ps_buffers(tx->local);
  if (skb_queue_len(&sta->ps_tx_buf[ac]) >= STA_MAX_TX_BUFFER) {
   struct sk_buff *old = skb_dequeue(&sta->ps_tx_buf[ac]);
   ps_dbg(tx->sdata,
          "STA %pM TX buffer for AC %d full - dropping oldest frame\n",
          sta->sta.addr, ac);
   ieee80211_free_txskb(&local->hw, old);
  } else
   tx->local->total_ps_buffered++;

  info->control.jiffies = jiffies;
  info->control.vif = &tx->sdata->vif;
  info->flags |= IEEE80211_TX_INTFL_NEED_TXPROCESSING;
  skb_queue_tail(&sta->ps_tx_buf[ac], tx->skb);

  if (!timer_pending(&local->sta_cleanup))
   mod_timer(&local->sta_cleanup,
      round_jiffies(jiffies +
      STA_INFO_CLEANUP_INTERVAL));





  sta_info_recalc_tim(sta);

  return TX_QUEUED;
 } else if (unlikely(test_sta_flag(sta, WLAN_STA_PS_STA))) {
  ps_dbg(tx->sdata,
         "STA %pM in PS mode, but polling/in SP -> send frame\n",
         sta->sta.addr);
 }

 return TX_CONTINUE;
}
