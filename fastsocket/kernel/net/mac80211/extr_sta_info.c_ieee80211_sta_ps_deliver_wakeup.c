
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int aid; int addr; } ;
struct sta_info {TYPE_3__ sta; TYPE_2__* ps_tx_buf; TYPE_2__* tx_filtered; scalar_t__ driver_buffered_tids; struct ieee80211_sub_if_data* sdata; } ;
struct sk_buff_head {int dummy; } ;
struct ieee80211_sub_if_data {struct ieee80211_local* local; } ;
struct TYPE_4__ {int flags; } ;
struct ieee80211_local {int total_ps_buffered; TYPE_1__ hw; } ;
struct TYPE_5__ {int lock; } ;


 int BITS_TO_LONGS (int ) ;
 int BUILD_BUG_ON (int) ;
 int IEEE80211_HW_AP_LINK_PS ;
 int IEEE80211_NUM_ACS ;
 int IEEE80211_NUM_TIDS ;
 int STA_NOTIFY_AWAKE ;
 int WLAN_STA_SP ;
 int clear_sta_flag (struct sta_info*,int ) ;
 int clear_sta_ps_flags ;
 int drv_sta_notify (struct ieee80211_local*,struct ieee80211_sub_if_data*,int ,TYPE_3__*) ;
 int ieee80211_add_pending_skbs_fn (struct ieee80211_local*,struct sk_buff_head*,int ,struct sta_info*) ;
 int ps_dbg (struct ieee80211_sub_if_data*,char*,int ,int ,int,int) ;
 int skb_queue_head_init (struct sk_buff_head*) ;
 int skb_queue_len (struct sk_buff_head*) ;
 int skb_queue_splice_tail_init (TYPE_2__*,struct sk_buff_head*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sta_info_recalc_tim (struct sta_info*) ;

void ieee80211_sta_ps_deliver_wakeup(struct sta_info *sta)
{
 struct ieee80211_sub_if_data *sdata = sta->sdata;
 struct ieee80211_local *local = sdata->local;
 struct sk_buff_head pending;
 int filtered = 0, buffered = 0, ac;
 unsigned long flags;

 clear_sta_flag(sta, WLAN_STA_SP);

 BUILD_BUG_ON(BITS_TO_LONGS(IEEE80211_NUM_TIDS) > 1);
 sta->driver_buffered_tids = 0;

 if (!(local->hw.flags & IEEE80211_HW_AP_LINK_PS))
  drv_sta_notify(local, sdata, STA_NOTIFY_AWAKE, &sta->sta);

 skb_queue_head_init(&pending);


 for (ac = 0; ac < IEEE80211_NUM_ACS; ac++) {
  int count = skb_queue_len(&pending), tmp;

  spin_lock_irqsave(&sta->tx_filtered[ac].lock, flags);
  skb_queue_splice_tail_init(&sta->tx_filtered[ac], &pending);
  spin_unlock_irqrestore(&sta->tx_filtered[ac].lock, flags);
  tmp = skb_queue_len(&pending);
  filtered += tmp - count;
  count = tmp;

  spin_lock_irqsave(&sta->ps_tx_buf[ac].lock, flags);
  skb_queue_splice_tail_init(&sta->ps_tx_buf[ac], &pending);
  spin_unlock_irqrestore(&sta->ps_tx_buf[ac].lock, flags);
  tmp = skb_queue_len(&pending);
  buffered += tmp - count;
 }

 ieee80211_add_pending_skbs_fn(local, &pending, clear_sta_ps_flags, sta);

 local->total_ps_buffered -= buffered;

 sta_info_recalc_tim(sta);

 ps_dbg(sdata,
        "STA %pM aid %d sending %d filtered/%d PS frames since STA not sleeping anymore\n",
        sta->sta.addr, sta->sta.aid, filtered, buffered);
}
