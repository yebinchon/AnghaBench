
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;
typedef struct TYPE_12__ TYPE_10__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_21__ {unsigned long data; int function; } ;
struct TYPE_12__ {unsigned long data; int function; } ;
struct tid_ampdu_rx {int ssn; int head_seq_num; int buf_size; int timeout; int last_rx; TYPE_8__ session_timer; scalar_t__ stored_mpdu_num; int dialog_token; struct tid_ampdu_rx* reorder_time; struct tid_ampdu_rx* reorder_buf; TYPE_10__ reorder_timer; int reorder_lock; } ;
struct TYPE_18__ {int cap; } ;
struct TYPE_13__ {int addr; TYPE_5__ ht_cap; } ;
struct TYPE_20__ {int mtx; scalar_t__* tid_rx; } ;
struct sta_info {TYPE_11__ sta; int sdata; TYPE_7__ ampdu_mlme; int * timer_to_tid; } ;
struct sk_buff {int dummy; } ;
struct TYPE_14__ {int capab; int start_seq_num; int timeout; int dialog_token; } ;
struct TYPE_15__ {TYPE_1__ addba_req; } ;
struct TYPE_16__ {TYPE_2__ u; } ;
struct TYPE_17__ {TYPE_3__ action; } ;
struct ieee80211_mgmt {int sa; TYPE_4__ u; } ;
struct TYPE_19__ {int max_rx_aggregation_subframes; } ;
struct ieee80211_local {TYPE_6__ hw; } ;


 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 int IEEE80211_ADDBA_PARAM_BUF_SIZE_MASK ;
 int IEEE80211_ADDBA_PARAM_POLICY_MASK ;
 int IEEE80211_ADDBA_PARAM_TID_MASK ;
 int IEEE80211_AMPDU_RX_START ;
 int IEEE80211_HT_CAP_DELAY_BA ;
 int IEEE80211_MAX_AMPDU_BUF ;
 int TU_TO_EXP_TIME (int) ;
 int WLAN_BACK_RECIPIENT ;
 int WLAN_STATUS_INVALID_QOS_PARAM ;
 int WLAN_STATUS_REQUEST_DECLINED ;
 int WLAN_STATUS_SUCCESS ;
 int WLAN_STATUS_UNSPECIFIED_QOS ;
 int WLAN_STA_BLOCK_BA ;
 int ___ieee80211_stop_rx_ba_session (struct sta_info*,int,int ,int ,int) ;
 int drv_ampdu_action (struct ieee80211_local*,int ,int ,TYPE_11__*,int,int*,int ) ;
 int ht_dbg (int ,char*,int ,int,...) ;
 int ht_dbg_ratelimited (int ,char*,int ,int,...) ;
 int ieee80211_send_addba_resp (int ,int ,int,int ,int,int,int,int) ;
 int init_timer (TYPE_10__*) ;
 int init_timer_deferrable (TYPE_8__*) ;
 int jiffies ;
 void* kcalloc (int,int,int ) ;
 int kfree (struct tid_ampdu_rx*) ;
 struct tid_ampdu_rx* kmalloc (int,int ) ;
 int le16_to_cpu (int ) ;
 int mod_timer (TYPE_8__*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rcu_assign_pointer (scalar_t__,struct tid_ampdu_rx*) ;
 int spin_lock_init (int *) ;
 int sta_rx_agg_reorder_timer_expired ;
 int sta_rx_agg_session_timer_expired ;
 scalar_t__ test_sta_flag (struct sta_info*,int ) ;

void ieee80211_process_addba_request(struct ieee80211_local *local,
         struct sta_info *sta,
         struct ieee80211_mgmt *mgmt,
         size_t len)
{
 struct tid_ampdu_rx *tid_agg_rx;
 u16 capab, tid, timeout, ba_policy, buf_size, start_seq_num, status;
 u8 dialog_token;
 int ret = -EOPNOTSUPP;


 dialog_token = mgmt->u.action.u.addba_req.dialog_token;
 timeout = le16_to_cpu(mgmt->u.action.u.addba_req.timeout);
 start_seq_num =
  le16_to_cpu(mgmt->u.action.u.addba_req.start_seq_num) >> 4;

 capab = le16_to_cpu(mgmt->u.action.u.addba_req.capab);
 ba_policy = (capab & IEEE80211_ADDBA_PARAM_POLICY_MASK) >> 1;
 tid = (capab & IEEE80211_ADDBA_PARAM_TID_MASK) >> 2;
 buf_size = (capab & IEEE80211_ADDBA_PARAM_BUF_SIZE_MASK) >> 6;

 status = WLAN_STATUS_REQUEST_DECLINED;

 if (test_sta_flag(sta, WLAN_STA_BLOCK_BA)) {
  ht_dbg(sta->sdata,
         "Suspend in progress - Denying ADDBA request (%pM tid %d)\n",
         sta->sta.addr, tid);
  goto end_no_lock;
 }





 if (((ba_policy != 1) &&
      (!(sta->sta.ht_cap.cap & IEEE80211_HT_CAP_DELAY_BA))) ||
     (buf_size > IEEE80211_MAX_AMPDU_BUF)) {
  status = WLAN_STATUS_INVALID_QOS_PARAM;
  ht_dbg_ratelimited(sta->sdata,
       "AddBA Req with bad params from %pM on tid %u. policy %d, buffer size %d\n",
       mgmt->sa, tid, ba_policy, buf_size);
  goto end_no_lock;
 }

 if (buf_size == 0)
  buf_size = IEEE80211_MAX_AMPDU_BUF;


 if (buf_size > local->hw.max_rx_aggregation_subframes)
  buf_size = local->hw.max_rx_aggregation_subframes;


 mutex_lock(&sta->ampdu_mlme.mtx);

 if (sta->ampdu_mlme.tid_rx[tid]) {
  ht_dbg_ratelimited(sta->sdata,
       "unexpected AddBA Req from %pM on tid %u\n",
       mgmt->sa, tid);


  ___ieee80211_stop_rx_ba_session(sta, tid, WLAN_BACK_RECIPIENT,
      WLAN_STATUS_UNSPECIFIED_QOS,
      0);
 }


 tid_agg_rx = kmalloc(sizeof(struct tid_ampdu_rx), GFP_KERNEL);
 if (!tid_agg_rx)
  goto end;

 spin_lock_init(&tid_agg_rx->reorder_lock);


 tid_agg_rx->session_timer.function = sta_rx_agg_session_timer_expired;
 tid_agg_rx->session_timer.data = (unsigned long)&sta->timer_to_tid[tid];
 init_timer_deferrable(&tid_agg_rx->session_timer);


 tid_agg_rx->reorder_timer.function = sta_rx_agg_reorder_timer_expired;
 tid_agg_rx->reorder_timer.data = (unsigned long)&sta->timer_to_tid[tid];
 init_timer(&tid_agg_rx->reorder_timer);


 tid_agg_rx->reorder_buf =
  kcalloc(buf_size, sizeof(struct sk_buff *), GFP_KERNEL);
 tid_agg_rx->reorder_time =
  kcalloc(buf_size, sizeof(unsigned long), GFP_KERNEL);
 if (!tid_agg_rx->reorder_buf || !tid_agg_rx->reorder_time) {
  kfree(tid_agg_rx->reorder_buf);
  kfree(tid_agg_rx->reorder_time);
  kfree(tid_agg_rx);
  goto end;
 }

 ret = drv_ampdu_action(local, sta->sdata, IEEE80211_AMPDU_RX_START,
          &sta->sta, tid, &start_seq_num, 0);
 ht_dbg(sta->sdata, "Rx A-MPDU request on %pM tid %d result %d\n",
        sta->sta.addr, tid, ret);
 if (ret) {
  kfree(tid_agg_rx->reorder_buf);
  kfree(tid_agg_rx->reorder_time);
  kfree(tid_agg_rx);
  goto end;
 }


 tid_agg_rx->dialog_token = dialog_token;
 tid_agg_rx->ssn = start_seq_num;
 tid_agg_rx->head_seq_num = start_seq_num;
 tid_agg_rx->buf_size = buf_size;
 tid_agg_rx->timeout = timeout;
 tid_agg_rx->stored_mpdu_num = 0;
 status = WLAN_STATUS_SUCCESS;


 rcu_assign_pointer(sta->ampdu_mlme.tid_rx[tid], tid_agg_rx);

 if (timeout) {
  mod_timer(&tid_agg_rx->session_timer, TU_TO_EXP_TIME(timeout));
  tid_agg_rx->last_rx = jiffies;
 }

end:
 mutex_unlock(&sta->ampdu_mlme.mtx);

end_no_lock:
 ieee80211_send_addba_resp(sta->sdata, sta->sta.addr, tid,
      dialog_token, status, 1, buf_size, timeout);
}
