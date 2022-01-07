
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct timespec {int tv_sec; } ;
struct TYPE_10__ {int addr; int smps_mode; } ;
struct TYPE_7__ {int mtx; int work; } ;
struct sta_info {int* timer_to_tid; TYPE_5__ sta; int * last_seq_ctrl; int * tx_filtered; int * ps_tx_buf; int avg_signal; int last_connected; int sta_state; int last_rx; struct ieee80211_sub_if_data* sdata; struct ieee80211_local* local; int plink_timer; TYPE_2__ ampdu_mlme; int drv_unblock_wk; int lock; } ;
struct TYPE_8__ {int user_mpm; } ;
struct TYPE_9__ {TYPE_3__ mesh; } ;
struct ieee80211_sub_if_data {TYPE_4__ u; int vif; struct ieee80211_local* local; } ;
struct TYPE_6__ {scalar_t__ sta_data_size; } ;
struct ieee80211_local {TYPE_1__ hw; } ;
typedef int gfp_t ;


 int ETH_ALEN ;
 int IEEE80211_NUM_ACS ;
 int IEEE80211_NUM_TIDS ;
 int IEEE80211_SMPS_OFF ;
 int IEEE80211_STA_NONE ;
 int INIT_WORK (int *,int ) ;
 int USHRT_MAX ;
 int cpu_to_le16 (int ) ;
 int do_posix_clock_monotonic_gettime (struct timespec*) ;
 int ewma_init (int *,int,int) ;
 int ieee80211_ba_session_work ;
 scalar_t__ ieee80211_vif_is_mesh (int *) ;
 int init_timer (int *) ;
 int jiffies ;
 int kfree (struct sta_info*) ;
 struct sta_info* kzalloc (scalar_t__,int ) ;
 int memcpy (int ,int const*,int ) ;
 int mutex_init (int *) ;
 int skb_queue_head_init (int *) ;
 int spin_lock_init (int *) ;
 int sta_dbg (struct ieee80211_sub_if_data*,char*,int ) ;
 scalar_t__ sta_prepare_rate_control (struct ieee80211_local*,struct sta_info*,int ) ;
 int sta_unblock ;

struct sta_info *sta_info_alloc(struct ieee80211_sub_if_data *sdata,
    const u8 *addr, gfp_t gfp)
{
 struct ieee80211_local *local = sdata->local;
 struct sta_info *sta;
 struct timespec uptime;
 int i;

 sta = kzalloc(sizeof(*sta) + local->hw.sta_data_size, gfp);
 if (!sta)
  return ((void*)0);

 spin_lock_init(&sta->lock);
 INIT_WORK(&sta->drv_unblock_wk, sta_unblock);
 INIT_WORK(&sta->ampdu_mlme.work, ieee80211_ba_session_work);
 mutex_init(&sta->ampdu_mlme.mtx);






 memcpy(sta->sta.addr, addr, ETH_ALEN);
 sta->local = local;
 sta->sdata = sdata;
 sta->last_rx = jiffies;

 sta->sta_state = IEEE80211_STA_NONE;

 do_posix_clock_monotonic_gettime(&uptime);
 sta->last_connected = uptime.tv_sec;
 ewma_init(&sta->avg_signal, 1024, 8);

 if (sta_prepare_rate_control(local, sta, gfp)) {
  kfree(sta);
  return ((void*)0);
 }

 for (i = 0; i < IEEE80211_NUM_TIDS; i++) {





  sta->timer_to_tid[i] = i;
 }
 for (i = 0; i < IEEE80211_NUM_ACS; i++) {
  skb_queue_head_init(&sta->ps_tx_buf[i]);
  skb_queue_head_init(&sta->tx_filtered[i]);
 }

 for (i = 0; i < IEEE80211_NUM_TIDS; i++)
  sta->last_seq_ctrl[i] = cpu_to_le16(USHRT_MAX);

 sta->sta.smps_mode = IEEE80211_SMPS_OFF;

 sta_dbg(sdata, "Allocated STA %pM\n", sta->sta.addr);

 return sta;
}
