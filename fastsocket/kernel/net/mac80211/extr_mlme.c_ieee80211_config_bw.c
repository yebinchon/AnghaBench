
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct TYPE_13__ {int bandwidth; } ;
struct sta_info {int cur_max_bandwidth; TYPE_5__ sta; } ;
struct ieee80211_vht_operation {int dummy; } ;
struct ieee80211_supported_band {int dummy; } ;
struct TYPE_16__ {struct ieee80211_channel* chan; } ;
struct TYPE_14__ {scalar_t__ ht_operation_mode; TYPE_8__ chandef; } ;
struct TYPE_15__ {TYPE_6__ bss_conf; } ;
struct ieee80211_if_managed {int flags; int bssid; } ;
struct TYPE_9__ {struct ieee80211_if_managed mgd; } ;
struct ieee80211_sub_if_data {TYPE_7__ vif; TYPE_1__ u; struct ieee80211_local* local; } ;
struct TYPE_11__ {TYPE_2__* wiphy; } ;
struct ieee80211_local {TYPE_3__ hw; } ;
struct ieee80211_ht_operation {int operation_mode; } ;
struct ieee80211_channel {size_t band; } ;
struct cfg80211_chan_def {int width; int center_freq2; int center_freq1; TYPE_4__* chan; } ;
typedef enum ieee80211_sta_rx_bandwidth { ____Placeholder_ieee80211_sta_rx_bandwidth } ieee80211_sta_rx_bandwidth ;
struct TYPE_12__ {int center_freq; } ;
struct TYPE_10__ {struct ieee80211_supported_band** bands; } ;


 int BSS_CHANGED_HT ;
 int EINVAL ;
 int IEEE80211_RC_BW_CHANGED ;
 int IEEE80211_STA_DISABLE_160MHZ ;
 int IEEE80211_STA_DISABLE_40MHZ ;
 int IEEE80211_STA_DISABLE_80P80MHZ ;
 int IEEE80211_STA_DISABLE_HT ;
 int IEEE80211_STA_DISABLE_VHT ;
 int IEEE80211_STA_RX_BW_160 ;
 int IEEE80211_STA_RX_BW_20 ;
 int IEEE80211_STA_RX_BW_40 ;
 int IEEE80211_STA_RX_BW_80 ;






 scalar_t__ WARN_ON_ONCE (int) ;
 scalar_t__ cfg80211_chandef_identical (struct cfg80211_chan_def*,TYPE_8__*) ;
 int cfg80211_chandef_valid (struct cfg80211_chan_def*) ;
 int chandef_downgrade (struct cfg80211_chan_def*) ;
 int ieee80211_determine_chantype (struct ieee80211_sub_if_data*,struct ieee80211_supported_band*,struct ieee80211_channel*,struct ieee80211_ht_operation const*,struct ieee80211_vht_operation const*,struct cfg80211_chan_def*,int) ;
 int ieee80211_vif_change_bandwidth (struct ieee80211_sub_if_data*,struct cfg80211_chan_def*,int*) ;
 scalar_t__ le16_to_cpu (int ) ;
 int rate_control_rate_update (struct ieee80211_local*,struct ieee80211_supported_band*,struct sta_info*,int ) ;
 int sdata_info (struct ieee80211_sub_if_data*,char*,int ,...) ;

__attribute__((used)) static int ieee80211_config_bw(struct ieee80211_sub_if_data *sdata,
          struct sta_info *sta,
          const struct ieee80211_ht_operation *ht_oper,
          const struct ieee80211_vht_operation *vht_oper,
          const u8 *bssid, u32 *changed)
{
 struct ieee80211_local *local = sdata->local;
 struct ieee80211_if_managed *ifmgd = &sdata->u.mgd;
 struct ieee80211_supported_band *sband;
 struct ieee80211_channel *chan;
 struct cfg80211_chan_def chandef;
 u16 ht_opmode;
 u32 flags;
 enum ieee80211_sta_rx_bandwidth new_sta_bw;
 int ret;


 if (ifmgd->flags & IEEE80211_STA_DISABLE_HT || !ht_oper)
  return 0;


 if (ifmgd->flags & IEEE80211_STA_DISABLE_VHT)
  vht_oper = ((void*)0);

 if (WARN_ON_ONCE(!sta))
  return -EINVAL;

 chan = sdata->vif.bss_conf.chandef.chan;
 sband = local->hw.wiphy->bands[chan->band];


 flags = ieee80211_determine_chantype(sdata, sband, chan, ht_oper,
          vht_oper, &chandef, 1);
 if (ifmgd->flags & IEEE80211_STA_DISABLE_80P80MHZ &&
     chandef.width == 128)
  flags |= chandef_downgrade(&chandef);
 if (ifmgd->flags & IEEE80211_STA_DISABLE_160MHZ &&
     chandef.width == 133)
  flags |= chandef_downgrade(&chandef);
 if (ifmgd->flags & IEEE80211_STA_DISABLE_40MHZ &&
     chandef.width > 132)
  flags |= chandef_downgrade(&chandef);

 if (cfg80211_chandef_identical(&chandef, &sdata->vif.bss_conf.chandef))
  return 0;

 sdata_info(sdata,
     "AP %pM changed bandwidth, new config is %d MHz, width %d (%d/%d MHz)\n",
     ifmgd->bssid, chandef.chan->center_freq, chandef.width,
     chandef.center_freq1, chandef.center_freq2);

 if (flags != (ifmgd->flags & (IEEE80211_STA_DISABLE_HT |
          IEEE80211_STA_DISABLE_VHT |
          IEEE80211_STA_DISABLE_40MHZ |
          IEEE80211_STA_DISABLE_80P80MHZ |
          IEEE80211_STA_DISABLE_160MHZ)) ||
     !cfg80211_chandef_valid(&chandef)) {
  sdata_info(sdata,
      "AP %pM changed bandwidth in a way we can't support - disconnect\n",
      ifmgd->bssid);
  return -EINVAL;
 }

 switch (chandef.width) {
 case 131:
 case 132:
  new_sta_bw = IEEE80211_STA_RX_BW_20;
  break;
 case 130:
  new_sta_bw = IEEE80211_STA_RX_BW_40;
  break;
 case 129:
  new_sta_bw = IEEE80211_STA_RX_BW_80;
  break;
 case 128:
 case 133:
  new_sta_bw = IEEE80211_STA_RX_BW_160;
  break;
 default:
  return -EINVAL;
 }

 if (new_sta_bw > sta->cur_max_bandwidth)
  new_sta_bw = sta->cur_max_bandwidth;

 if (new_sta_bw < sta->sta.bandwidth) {
  sta->sta.bandwidth = new_sta_bw;
  rate_control_rate_update(local, sband, sta,
      IEEE80211_RC_BW_CHANGED);
 }

 ret = ieee80211_vif_change_bandwidth(sdata, &chandef, changed);
 if (ret) {
  sdata_info(sdata,
      "AP %pM changed bandwidth to incompatible one - disconnect\n",
      ifmgd->bssid);
  return ret;
 }

 if (new_sta_bw > sta->sta.bandwidth) {
  sta->sta.bandwidth = new_sta_bw;
  rate_control_rate_update(local, sband, sta,
      IEEE80211_RC_BW_CHANGED);
 }

 ht_opmode = le16_to_cpu(ht_oper->operation_mode);


 if (sdata->vif.bss_conf.ht_operation_mode != ht_opmode) {
  *changed |= BSS_CHANGED_HT;
  sdata->vif.bss_conf.ht_operation_mode = ht_opmode;
 }

 return 0;
}
