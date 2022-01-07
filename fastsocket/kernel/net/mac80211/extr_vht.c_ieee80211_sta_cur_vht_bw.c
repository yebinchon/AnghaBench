
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_11__ {int cap; } ;
struct TYPE_7__ {int cap; int vht_supported; } ;
struct TYPE_12__ {TYPE_5__ ht_cap; TYPE_1__ vht_cap; } ;
struct sta_info {int cur_max_bandwidth; TYPE_6__ sta; struct ieee80211_sub_if_data* sdata; } ;
struct TYPE_8__ {int width; } ;
struct TYPE_9__ {TYPE_2__ chandef; } ;
struct TYPE_10__ {TYPE_3__ bss_conf; } ;
struct ieee80211_sub_if_data {TYPE_4__ vif; } ;
typedef enum ieee80211_sta_rx_bandwidth { ____Placeholder_ieee80211_sta_rx_bandwidth } ieee80211_sta_rx_bandwidth ;


 int IEEE80211_HT_CAP_SUP_WIDTH_20_40 ;
 int IEEE80211_STA_RX_BW_160 ;
 int IEEE80211_STA_RX_BW_20 ;
 int IEEE80211_STA_RX_BW_40 ;
 int IEEE80211_STA_RX_BW_80 ;
 int IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_160MHZ ;
 int IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_160_80PLUS80MHZ ;
 int IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_MASK ;






 int WARN_ON_ONCE (int) ;

enum ieee80211_sta_rx_bandwidth ieee80211_sta_cur_vht_bw(struct sta_info *sta)
{
 struct ieee80211_sub_if_data *sdata = sta->sdata;
 u32 cap = sta->sta.vht_cap.cap;
 enum ieee80211_sta_rx_bandwidth bw;

 if (!sta->sta.vht_cap.vht_supported) {
  bw = sta->sta.ht_cap.cap & IEEE80211_HT_CAP_SUP_WIDTH_20_40 ?
    IEEE80211_STA_RX_BW_40 : IEEE80211_STA_RX_BW_20;
  goto check_max;
 }

 switch (sdata->vif.bss_conf.chandef.width) {
 default:
  WARN_ON_ONCE(1);

 case 131:
 case 132:
 case 130:
  bw = sta->sta.ht_cap.cap & IEEE80211_HT_CAP_SUP_WIDTH_20_40 ?
    IEEE80211_STA_RX_BW_40 : IEEE80211_STA_RX_BW_20;
  break;
 case 133:
  if ((cap & IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_MASK) ==
    IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_160MHZ) {
   bw = IEEE80211_STA_RX_BW_160;
   break;
  }

 case 128:
  if ((cap & IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_MASK) ==
    IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_160_80PLUS80MHZ) {
   bw = IEEE80211_STA_RX_BW_160;
   break;
  }

 case 129:
  bw = IEEE80211_STA_RX_BW_80;
 }

 check_max:
 if (bw > sta->cur_max_bandwidth)
  bw = sta->cur_max_bandwidth;
 return bw;
}
