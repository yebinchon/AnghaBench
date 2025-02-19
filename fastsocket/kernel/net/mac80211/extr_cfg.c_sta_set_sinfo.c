
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u64 ;
struct timespec {scalar_t__ tv_sec; } ;
struct TYPE_12__ {int set; int mask; } ;
struct TYPE_16__ {int beacon_interval; int dtim_period; int flags; } ;
struct station_info {int filled; TYPE_3__ sta_flags; TYPE_7__ bss_param; int nonpeer_pm; int peer_pm; int local_pm; int t_offset; int plink_state; void* plid; void* llid; int rxrate; int txrate; void* signal_avg; void* signal; int beacon_loss_count; int rx_dropped_misc; int tx_failed; int tx_retries; int rx_packets; int rx_bytes; int tx_packets; scalar_t__ tx_bytes; int inactive_time; scalar_t__ connected_time; int generation; } ;
struct sta_info {int nonpeer_pm; int peer_pm; int local_pm; int t_offset; int plink_state; int plid; int llid; int last_tx_rate; int avg_signal; scalar_t__ last_signal; int sta; TYPE_5__* local; int beacon_loss_count; int rx_dropped; int tx_retry_failed; int tx_retry_count; int rx_packets; int rx_bytes; scalar_t__* tx_packets; scalar_t__* tx_bytes; scalar_t__ last_rx; scalar_t__ last_connected; struct ieee80211_sub_if_data* sdata; } ;
struct TYPE_17__ {int beacon_int; scalar_t__ use_short_slot; scalar_t__ use_short_preamble; scalar_t__ use_cts_prot; } ;
struct TYPE_18__ {TYPE_8__ bss_conf; } ;
struct ieee80211_sub_if_data {TYPE_9__ vif; struct ieee80211_local* local; } ;
struct TYPE_10__ {int ps_dtim_period; } ;
struct TYPE_11__ {TYPE_1__ conf; } ;
struct ieee80211_local {TYPE_2__ hw; TYPE_6__* ops; int sta_generation; } ;
typedef void* s8 ;
struct TYPE_15__ {int get_rssi; } ;
struct TYPE_13__ {int flags; } ;
struct TYPE_14__ {TYPE_4__ hw; } ;


 int BIT (int ) ;
 int BSS_PARAM_FLAGS_CTS_PROT ;
 int BSS_PARAM_FLAGS_SHORT_PREAMBLE ;
 int BSS_PARAM_FLAGS_SHORT_SLOT_TIME ;
 int IEEE80211_HW_SIGNAL_DBM ;
 int IEEE80211_HW_SIGNAL_UNSPEC ;
 int IEEE80211_NUM_ACS ;
 int NL80211_STA_FLAG_ASSOCIATED ;
 int NL80211_STA_FLAG_AUTHENTICATED ;
 int NL80211_STA_FLAG_AUTHORIZED ;
 int NL80211_STA_FLAG_MFP ;
 int NL80211_STA_FLAG_SHORT_PREAMBLE ;
 int NL80211_STA_FLAG_TDLS_PEER ;
 int NL80211_STA_FLAG_WME ;
 int STATION_INFO_BEACON_LOSS_COUNT ;
 int STATION_INFO_BSS_PARAM ;
 int STATION_INFO_CONNECTED_TIME ;
 int STATION_INFO_INACTIVE_TIME ;
 int STATION_INFO_LLID ;
 int STATION_INFO_LOCAL_PM ;
 int STATION_INFO_NONPEER_PM ;
 int STATION_INFO_PEER_PM ;
 int STATION_INFO_PLID ;
 int STATION_INFO_PLINK_STATE ;
 int STATION_INFO_RX_BITRATE ;
 int STATION_INFO_RX_BYTES64 ;
 int STATION_INFO_RX_DROP_MISC ;
 int STATION_INFO_RX_PACKETS ;
 int STATION_INFO_SIGNAL ;
 int STATION_INFO_SIGNAL_AVG ;
 int STATION_INFO_STA_FLAGS ;
 int STATION_INFO_TX_BITRATE ;
 int STATION_INFO_TX_BYTES64 ;
 int STATION_INFO_TX_FAILED ;
 int STATION_INFO_TX_PACKETS ;
 int STATION_INFO_TX_RETRIES ;
 int STATION_INFO_T_OFFSET ;
 int WLAN_STA_ASSOC ;
 int WLAN_STA_AUTH ;
 int WLAN_STA_AUTHORIZED ;
 int WLAN_STA_MFP ;
 int WLAN_STA_SHORT_PREAMBLE ;
 int WLAN_STA_TDLS_PEER ;
 int WLAN_STA_TOFFSET_KNOWN ;
 int WLAN_STA_WME ;
 int do_posix_clock_monotonic_gettime (struct timespec*) ;
 scalar_t__ drv_get_rssi (struct ieee80211_local*,struct ieee80211_sub_if_data*,int *,void**) ;
 scalar_t__ ewma_read (int *) ;
 scalar_t__ ieee80211_vif_is_mesh (TYPE_9__*) ;
 scalar_t__ jiffies ;
 int jiffies_to_msecs (scalar_t__) ;
 void* le16_to_cpu (int ) ;
 int sta_set_rate_info_rx (struct sta_info*,int *) ;
 int sta_set_rate_info_tx (struct sta_info*,int *,int *) ;
 scalar_t__ test_sta_flag (struct sta_info*,int ) ;

__attribute__((used)) static void sta_set_sinfo(struct sta_info *sta, struct station_info *sinfo)
{
 struct ieee80211_sub_if_data *sdata = sta->sdata;
 struct ieee80211_local *local = sdata->local;
 struct timespec uptime;
 u64 packets = 0;
 int ac;

 sinfo->generation = sdata->local->sta_generation;

 sinfo->filled = STATION_INFO_INACTIVE_TIME |
   STATION_INFO_RX_BYTES64 |
   STATION_INFO_TX_BYTES64 |
   STATION_INFO_RX_PACKETS |
   STATION_INFO_TX_PACKETS |
   STATION_INFO_TX_RETRIES |
   STATION_INFO_TX_FAILED |
   STATION_INFO_TX_BITRATE |
   STATION_INFO_RX_BITRATE |
   STATION_INFO_RX_DROP_MISC |
   STATION_INFO_BSS_PARAM |
   STATION_INFO_CONNECTED_TIME |
   STATION_INFO_STA_FLAGS |
   STATION_INFO_BEACON_LOSS_COUNT;

 do_posix_clock_monotonic_gettime(&uptime);
 sinfo->connected_time = uptime.tv_sec - sta->last_connected;

 sinfo->inactive_time = jiffies_to_msecs(jiffies - sta->last_rx);
 sinfo->tx_bytes = 0;
 for (ac = 0; ac < IEEE80211_NUM_ACS; ac++) {
  sinfo->tx_bytes += sta->tx_bytes[ac];
  packets += sta->tx_packets[ac];
 }
 sinfo->tx_packets = packets;
 sinfo->rx_bytes = sta->rx_bytes;
 sinfo->rx_packets = sta->rx_packets;
 sinfo->tx_retries = sta->tx_retry_count;
 sinfo->tx_failed = sta->tx_retry_failed;
 sinfo->rx_dropped_misc = sta->rx_dropped;
 sinfo->beacon_loss_count = sta->beacon_loss_count;

 if ((sta->local->hw.flags & IEEE80211_HW_SIGNAL_DBM) ||
     (sta->local->hw.flags & IEEE80211_HW_SIGNAL_UNSPEC)) {
  sinfo->filled |= STATION_INFO_SIGNAL | STATION_INFO_SIGNAL_AVG;
  if (!local->ops->get_rssi ||
      drv_get_rssi(local, sdata, &sta->sta, &sinfo->signal))
   sinfo->signal = (s8)sta->last_signal;
  sinfo->signal_avg = (s8) -ewma_read(&sta->avg_signal);
 }

 sta_set_rate_info_tx(sta, &sta->last_tx_rate, &sinfo->txrate);
 sta_set_rate_info_rx(sta, &sinfo->rxrate);

 if (ieee80211_vif_is_mesh(&sdata->vif)) {
 }

 sinfo->bss_param.flags = 0;
 if (sdata->vif.bss_conf.use_cts_prot)
  sinfo->bss_param.flags |= BSS_PARAM_FLAGS_CTS_PROT;
 if (sdata->vif.bss_conf.use_short_preamble)
  sinfo->bss_param.flags |= BSS_PARAM_FLAGS_SHORT_PREAMBLE;
 if (sdata->vif.bss_conf.use_short_slot)
  sinfo->bss_param.flags |= BSS_PARAM_FLAGS_SHORT_SLOT_TIME;
 sinfo->bss_param.dtim_period = sdata->local->hw.conf.ps_dtim_period;
 sinfo->bss_param.beacon_interval = sdata->vif.bss_conf.beacon_int;

 sinfo->sta_flags.set = 0;
 sinfo->sta_flags.mask = BIT(NL80211_STA_FLAG_AUTHORIZED) |
    BIT(NL80211_STA_FLAG_SHORT_PREAMBLE) |
    BIT(NL80211_STA_FLAG_WME) |
    BIT(NL80211_STA_FLAG_MFP) |
    BIT(NL80211_STA_FLAG_AUTHENTICATED) |
    BIT(NL80211_STA_FLAG_ASSOCIATED) |
    BIT(NL80211_STA_FLAG_TDLS_PEER);
 if (test_sta_flag(sta, WLAN_STA_AUTHORIZED))
  sinfo->sta_flags.set |= BIT(NL80211_STA_FLAG_AUTHORIZED);
 if (test_sta_flag(sta, WLAN_STA_SHORT_PREAMBLE))
  sinfo->sta_flags.set |= BIT(NL80211_STA_FLAG_SHORT_PREAMBLE);
 if (test_sta_flag(sta, WLAN_STA_WME))
  sinfo->sta_flags.set |= BIT(NL80211_STA_FLAG_WME);
 if (test_sta_flag(sta, WLAN_STA_MFP))
  sinfo->sta_flags.set |= BIT(NL80211_STA_FLAG_MFP);
 if (test_sta_flag(sta, WLAN_STA_AUTH))
  sinfo->sta_flags.set |= BIT(NL80211_STA_FLAG_AUTHENTICATED);
 if (test_sta_flag(sta, WLAN_STA_ASSOC))
  sinfo->sta_flags.set |= BIT(NL80211_STA_FLAG_ASSOCIATED);
 if (test_sta_flag(sta, WLAN_STA_TDLS_PEER))
  sinfo->sta_flags.set |= BIT(NL80211_STA_FLAG_TDLS_PEER);
}
