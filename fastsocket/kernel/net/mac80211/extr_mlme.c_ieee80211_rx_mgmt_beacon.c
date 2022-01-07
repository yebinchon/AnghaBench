
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_12__ ;
typedef struct TYPE_14__ TYPE_11__ ;
typedef struct TYPE_13__ TYPE_10__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct sta_info {int dummy; } ;
struct ieee802_11_elems {scalar_t__ pwr_constr_elem; int country_elem_len; scalar_t__ country_elem; int * opmode_notif; int vht_operation; int ht_operation; int * erp_info; TYPE_12__* tim; int wmm_param_len; int wmm_param; int tim_len; } ;
struct ieee80211_bss_conf {int cqm_rssi_thold; int cqm_rssi_hyst; int dtim_period; scalar_t__ sync_dtim_count; int sync_device_ts; void* sync_tsf; int p2p_noa_attr; } ;
struct TYPE_14__ {int driver_flags; struct ieee80211_bss_conf bss_conf; scalar_t__ p2p; int chanctx_conf; } ;
struct ieee80211_if_managed {int last_beacon_signal; int flags; int ave_beacon_signal; int last_cqm_event_signal; int count_beacon_signal; int last_ave_beacon_signal; scalar_t__ rssi_min_thold; scalar_t__ rssi_max_thold; scalar_t__ p2p_noa_index; int beacon_crc_valid; scalar_t__ beacon_crc; scalar_t__ powersave; int aid; TYPE_4__* associated; TYPE_3__* assoc_data; int mtx; } ;
struct TYPE_21__ {struct ieee80211_if_managed mgd; } ;
struct ieee80211_sub_if_data {TYPE_11__ vif; TYPE_6__ u; struct ieee80211_local* local; } ;
struct ieee80211_rx_status {scalar_t__ freq; int signal; int band; int device_timestamp; } ;
struct ieee80211_p2p_noa_attr {scalar_t__ index; } ;
struct TYPE_24__ {int capab_info; } ;
struct TYPE_23__ {int capab_info; int timestamp; scalar_t__ variable; int beacon_int; } ;
struct TYPE_13__ {TYPE_9__ probe_resp; TYPE_8__ beacon; } ;
struct ieee80211_mgmt {TYPE_10__ u; int bssid; } ;
struct TYPE_20__ {scalar_t__ dynamic_ps_timeout; int flags; } ;
struct TYPE_22__ {int flags; TYPE_5__ conf; } ;
struct ieee80211_local {int pspolling; int sta_mtx; TYPE_7__ hw; int iflist_mtx; int mtx; } ;
struct ieee80211_channel {scalar_t__ center_freq; } ;
struct TYPE_16__ {struct ieee80211_channel* chan; } ;
struct ieee80211_chanctx_conf {TYPE_1__ def; } ;
typedef int noa ;
typedef enum rx_mgmt_action { ____Placeholder_rx_mgmt_action } rx_mgmt_action ;
struct TYPE_19__ {int * bssid; } ;
struct TYPE_18__ {int need_beacon; int have_beacon; int timeout_started; int timeout; TYPE_2__* bss; } ;
struct TYPE_17__ {int * bssid; } ;
struct TYPE_15__ {scalar_t__ dtim_count; scalar_t__ dtim_period; } ;


 scalar_t__ BSS_CHANGED_DTIM_PERIOD ;
 scalar_t__ BSS_CHANGED_P2P_PS ;
 scalar_t__ BSS_CHANGED_QOS ;
 int GFP_KERNEL ;
 int IEEE80211_CONF_CHANGE_PS ;
 int IEEE80211_CONF_PS ;
 int IEEE80211_HW_PS_NULLFUNC_STACK ;
 int IEEE80211_HW_TIMING_BEACON_ONLY ;
 int IEEE80211_P2P_ATTR_ABSENCE_NOTICE ;
 int IEEE80211_SIGNAL_AVE_MIN_COUNT ;
 int IEEE80211_SIGNAL_AVE_WEIGHT ;
 int IEEE80211_STA_BEACON_POLL ;
 int IEEE80211_STA_RESET_SIGNAL_AVE ;
 int IEEE80211_STYPE_DEAUTH ;
 int IEEE80211_VIF_SUPPORTS_CQM_RSSI ;
 int NL80211_CQM_RSSI_THRESHOLD_EVENT_HIGH ;
 int NL80211_CQM_RSSI_THRESHOLD_EVENT_LOW ;
 int RSSI_EVENT_HIGH ;
 int RSSI_EVENT_LOW ;
 int RX_MGMT_CFG80211_TX_DEAUTH ;
 int RX_MGMT_NONE ;
 int WLAN_CAPABILITY_SPECTRUM_MGMT ;
 int WLAN_REASON_DEAUTH_LEAVING ;
 int care_about_ies ;
 int cfg80211_get_p2p_attr (scalar_t__,size_t,int ,int *,int) ;
 int cpu_to_le16 (int ) ;
 scalar_t__ crc32_be (int ,void*,int) ;
 int drv_rssi_callback (struct ieee80211_local*,struct ieee80211_sub_if_data*,int ) ;
 scalar_t__ ether_addr_equal (int ,int *) ;
 int ieee80211_bss_info_change_notify (struct ieee80211_sub_if_data*,scalar_t__) ;
 int ieee80211_check_tim (TYPE_12__*,int ,int ) ;
 scalar_t__ ieee80211_config_bw (struct ieee80211_sub_if_data*,struct sta_info*,int ,int ,int *,scalar_t__*) ;
 int ieee80211_cqm_rssi_notify (TYPE_11__*,int ,int ) ;
 scalar_t__ ieee80211_handle_bss_capability (struct ieee80211_sub_if_data*,int ,int,int ) ;
 scalar_t__ ieee80211_handle_pwr_constr (struct ieee80211_sub_if_data*,struct ieee80211_channel*,scalar_t__,int ,scalar_t__) ;
 int ieee80211_hw_config (struct ieee80211_local*,int ) ;
 int ieee80211_recalc_ps (struct ieee80211_local*,int) ;
 int ieee80211_run_deferred_scan (struct ieee80211_local*) ;
 int ieee80211_rx_bss_info (struct ieee80211_sub_if_data*,struct ieee80211_mgmt*,size_t,struct ieee80211_rx_status*,struct ieee802_11_elems*) ;
 int ieee80211_send_nullfunc (struct ieee80211_local*,struct ieee80211_sub_if_data*,int ) ;
 int ieee80211_send_pspoll (struct ieee80211_local*,struct ieee80211_sub_if_data*) ;
 int ieee80211_set_disassoc (struct ieee80211_sub_if_data*,int ,int ,int,int *) ;
 int ieee80211_sta_reset_beacon_monitor (struct ieee80211_sub_if_data*) ;
 scalar_t__ ieee80211_sta_wmm_params (struct ieee80211_local*,struct ieee80211_sub_if_data*,int ,int ) ;
 int ieee80211_vht_handle_opmode (struct ieee80211_sub_if_data*,struct sta_info*,int ,int ,int) ;
 int ieee802_11_parse_elems (scalar_t__,size_t,int,struct ieee802_11_elems*) ;
 scalar_t__ ieee802_11_parse_elems_crc (scalar_t__,size_t,int,struct ieee802_11_elems*,int ,scalar_t__) ;
 int jiffies ;
 int le16_to_cpu (int ) ;
 void* le64_to_cpu (int ) ;
 int lockdep_assert_held (int *) ;
 int memcpy (int *,struct ieee80211_p2p_noa_attr*,int) ;
 int memset (int *,int ,int) ;
 int mlme_dbg_ratelimited (struct ieee80211_sub_if_data*,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct ieee80211_chanctx_conf* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int run_again (struct ieee80211_if_managed*,int ) ;
 struct sta_info* sta_info_get (struct ieee80211_sub_if_data*,int *) ;

__attribute__((used)) static enum rx_mgmt_action
ieee80211_rx_mgmt_beacon(struct ieee80211_sub_if_data *sdata,
    struct ieee80211_mgmt *mgmt, size_t len,
    u8 *deauth_buf, struct ieee80211_rx_status *rx_status)
{
 struct ieee80211_if_managed *ifmgd = &sdata->u.mgd;
 struct ieee80211_bss_conf *bss_conf = &sdata->vif.bss_conf;
 size_t baselen;
 struct ieee802_11_elems elems;
 struct ieee80211_local *local = sdata->local;
 struct ieee80211_chanctx_conf *chanctx_conf;
 struct ieee80211_channel *chan;
 struct sta_info *sta;
 u32 changed = 0;
 bool erp_valid;
 u8 erp_value = 0;
 u32 ncrc;
 u8 *bssid;

 lockdep_assert_held(&ifmgd->mtx);


 baselen = (u8 *) mgmt->u.beacon.variable - (u8 *) mgmt;
 if (baselen > len)
  return RX_MGMT_NONE;

 rcu_read_lock();
 chanctx_conf = rcu_dereference(sdata->vif.chanctx_conf);
 if (!chanctx_conf) {
  rcu_read_unlock();
  return RX_MGMT_NONE;
 }

 if (rx_status->freq != chanctx_conf->def.chan->center_freq) {
  rcu_read_unlock();
  return RX_MGMT_NONE;
 }
 chan = chanctx_conf->def.chan;
 rcu_read_unlock();

 if (ifmgd->assoc_data && ifmgd->assoc_data->need_beacon &&
     ether_addr_equal(mgmt->bssid, ifmgd->assoc_data->bss->bssid)) {
  ieee802_11_parse_elems(mgmt->u.beacon.variable,
           len - baselen, 0, &elems);

  ieee80211_rx_bss_info(sdata, mgmt, len, rx_status, &elems);
  ifmgd->assoc_data->have_beacon = 1;
  ifmgd->assoc_data->need_beacon = 0;
  if (local->hw.flags & IEEE80211_HW_TIMING_BEACON_ONLY) {
   sdata->vif.bss_conf.sync_tsf =
    le64_to_cpu(mgmt->u.beacon.timestamp);
   sdata->vif.bss_conf.sync_device_ts =
    rx_status->device_timestamp;
   if (elems.tim)
    sdata->vif.bss_conf.sync_dtim_count =
     elems.tim->dtim_count;
   else
    sdata->vif.bss_conf.sync_dtim_count = 0;
  }

  ifmgd->assoc_data->timeout = jiffies;
  ifmgd->assoc_data->timeout_started = 1;
  run_again(ifmgd, ifmgd->assoc_data->timeout);
  return RX_MGMT_NONE;
 }

 if (!ifmgd->associated ||
     !ether_addr_equal(mgmt->bssid, ifmgd->associated->bssid))
  return RX_MGMT_NONE;
 bssid = ifmgd->associated->bssid;


 ifmgd->last_beacon_signal = rx_status->signal;
 if (ifmgd->flags & IEEE80211_STA_RESET_SIGNAL_AVE) {
  ifmgd->flags &= ~IEEE80211_STA_RESET_SIGNAL_AVE;
  ifmgd->ave_beacon_signal = rx_status->signal * 16;
  ifmgd->last_cqm_event_signal = 0;
  ifmgd->count_beacon_signal = 1;
  ifmgd->last_ave_beacon_signal = 0;
 } else {
  ifmgd->ave_beacon_signal =
   (IEEE80211_SIGNAL_AVE_WEIGHT * rx_status->signal * 16 +
    (16 - IEEE80211_SIGNAL_AVE_WEIGHT) *
    ifmgd->ave_beacon_signal) / 16;
  ifmgd->count_beacon_signal++;
 }

 if (ifmgd->rssi_min_thold != ifmgd->rssi_max_thold &&
     ifmgd->count_beacon_signal >= IEEE80211_SIGNAL_AVE_MIN_COUNT) {
  int sig = ifmgd->ave_beacon_signal;
  int last_sig = ifmgd->last_ave_beacon_signal;





  if (sig > ifmgd->rssi_max_thold &&
      (last_sig <= ifmgd->rssi_min_thold || last_sig == 0)) {
   ifmgd->last_ave_beacon_signal = sig;
   drv_rssi_callback(local, sdata, RSSI_EVENT_HIGH);
  } else if (sig < ifmgd->rssi_min_thold &&
      (last_sig >= ifmgd->rssi_max_thold ||
      last_sig == 0)) {
   ifmgd->last_ave_beacon_signal = sig;
   drv_rssi_callback(local, sdata, RSSI_EVENT_LOW);
  }
 }

 if (bss_conf->cqm_rssi_thold &&
     ifmgd->count_beacon_signal >= IEEE80211_SIGNAL_AVE_MIN_COUNT &&
     !(sdata->vif.driver_flags & IEEE80211_VIF_SUPPORTS_CQM_RSSI)) {
  int sig = ifmgd->ave_beacon_signal / 16;
  int last_event = ifmgd->last_cqm_event_signal;
  int thold = bss_conf->cqm_rssi_thold;
  int hyst = bss_conf->cqm_rssi_hyst;
  if (sig < thold &&
      (last_event == 0 || sig < last_event - hyst)) {
   ifmgd->last_cqm_event_signal = sig;
   ieee80211_cqm_rssi_notify(
    &sdata->vif,
    NL80211_CQM_RSSI_THRESHOLD_EVENT_LOW,
    GFP_KERNEL);
  } else if (sig > thold &&
      (last_event == 0 || sig > last_event + hyst)) {
   ifmgd->last_cqm_event_signal = sig;
   ieee80211_cqm_rssi_notify(
    &sdata->vif,
    NL80211_CQM_RSSI_THRESHOLD_EVENT_HIGH,
    GFP_KERNEL);
  }
 }

 if (ifmgd->flags & IEEE80211_STA_BEACON_POLL) {
  mlme_dbg_ratelimited(sdata,
         "cancelling AP probe due to a received beacon\n");
  mutex_lock(&local->mtx);
  ifmgd->flags &= ~IEEE80211_STA_BEACON_POLL;
  ieee80211_run_deferred_scan(local);
  mutex_unlock(&local->mtx);

  mutex_lock(&local->iflist_mtx);
  ieee80211_recalc_ps(local, -1);
  mutex_unlock(&local->iflist_mtx);
 }





 ieee80211_sta_reset_beacon_monitor(sdata);

 ncrc = crc32_be(0, (void *)&mgmt->u.beacon.beacon_int, 4);
 ncrc = ieee802_11_parse_elems_crc(mgmt->u.beacon.variable,
       len - baselen, 0, &elems,
       care_about_ies, ncrc);

 if (local->hw.flags & IEEE80211_HW_PS_NULLFUNC_STACK) {
  bool directed_tim = ieee80211_check_tim(elems.tim,
       elems.tim_len,
       ifmgd->aid);
  if (directed_tim) {
   if (local->hw.conf.dynamic_ps_timeout > 0) {
    if (local->hw.conf.flags & IEEE80211_CONF_PS) {
     local->hw.conf.flags &= ~IEEE80211_CONF_PS;
     ieee80211_hw_config(local,
           IEEE80211_CONF_CHANGE_PS);
    }
    ieee80211_send_nullfunc(local, sdata, 0);
   } else if (!local->pspolling && sdata->u.mgd.powersave) {
    local->pspolling = 1;
    ieee80211_send_pspoll(local, sdata);
   }
  }
 }

 if (sdata->vif.p2p) {
  struct ieee80211_p2p_noa_attr noa = {};
  int ret;

  ret = cfg80211_get_p2p_attr(mgmt->u.beacon.variable,
         len - baselen,
         IEEE80211_P2P_ATTR_ABSENCE_NOTICE,
         (u8 *) &noa, sizeof(noa));
  if (ret >= 2) {
   if (sdata->u.mgd.p2p_noa_index != noa.index) {

    sdata->u.mgd.p2p_noa_index = noa.index;
    memcpy(&bss_conf->p2p_noa_attr, &noa, sizeof(noa));
    changed |= BSS_CHANGED_P2P_PS;




    ifmgd->beacon_crc_valid = 0;
   }
  } else if (sdata->u.mgd.p2p_noa_index != -1) {

   sdata->u.mgd.p2p_noa_index = -1;
   memset(&bss_conf->p2p_noa_attr, 0, sizeof(bss_conf->p2p_noa_attr));
   changed |= BSS_CHANGED_P2P_PS;
   ifmgd->beacon_crc_valid = 0;
  }
 }

 if (ncrc == ifmgd->beacon_crc && ifmgd->beacon_crc_valid)
  return RX_MGMT_NONE;
 ifmgd->beacon_crc = ncrc;
 ifmgd->beacon_crc_valid = 1;

 ieee80211_rx_bss_info(sdata, mgmt, len, rx_status, &elems);

 if (ieee80211_sta_wmm_params(local, sdata, elems.wmm_param,
         elems.wmm_param_len))
  changed |= BSS_CHANGED_QOS;





 if (!bss_conf->dtim_period) {

  if (elems.tim)
   bss_conf->dtim_period = elems.tim->dtim_period ?: 1;
  else
   bss_conf->dtim_period = 1;

  if (local->hw.flags & IEEE80211_HW_TIMING_BEACON_ONLY) {
   sdata->vif.bss_conf.sync_tsf =
    le64_to_cpu(mgmt->u.beacon.timestamp);
   sdata->vif.bss_conf.sync_device_ts =
    rx_status->device_timestamp;
   if (elems.tim)
    sdata->vif.bss_conf.sync_dtim_count =
     elems.tim->dtim_count;
   else
    sdata->vif.bss_conf.sync_dtim_count = 0;
  }

  changed |= BSS_CHANGED_DTIM_PERIOD;
 }

 if (elems.erp_info) {
  erp_valid = 1;
  erp_value = elems.erp_info[0];
 } else {
  erp_valid = 0;
 }
 changed |= ieee80211_handle_bss_capability(sdata,
   le16_to_cpu(mgmt->u.beacon.capab_info),
   erp_valid, erp_value);

 mutex_lock(&local->sta_mtx);
 sta = sta_info_get(sdata, bssid);

 if (ieee80211_config_bw(sdata, sta, elems.ht_operation,
    elems.vht_operation, bssid, &changed)) {
  mutex_unlock(&local->sta_mtx);
  ieee80211_set_disassoc(sdata, IEEE80211_STYPE_DEAUTH,
           WLAN_REASON_DEAUTH_LEAVING,
           1, deauth_buf);
  return RX_MGMT_CFG80211_TX_DEAUTH;
 }

 if (sta && elems.opmode_notif)
  ieee80211_vht_handle_opmode(sdata, sta, *elems.opmode_notif,
         rx_status->band, 1);
 mutex_unlock(&local->sta_mtx);

 if (elems.country_elem && elems.pwr_constr_elem &&
     mgmt->u.probe_resp.capab_info &
    cpu_to_le16(WLAN_CAPABILITY_SPECTRUM_MGMT))
  changed |= ieee80211_handle_pwr_constr(sdata, chan,
             elems.country_elem,
             elems.country_elem_len,
             elems.pwr_constr_elem);

 ieee80211_bss_info_change_notify(sdata, changed);

 return RX_MGMT_NONE;
}
