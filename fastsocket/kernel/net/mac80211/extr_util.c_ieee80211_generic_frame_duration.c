
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct ieee80211_vif {int dummy; } ;
struct TYPE_3__ {int use_short_preamble; } ;
struct TYPE_4__ {TYPE_1__ bss_conf; } ;
struct ieee80211_sub_if_data {int flags; TYPE_2__ vif; } ;
struct ieee80211_rate {int flags; int bitrate; } ;
struct ieee80211_hw {int dummy; } ;
typedef enum ieee80211_band { ____Placeholder_ieee80211_band } ieee80211_band ;
typedef int __le16 ;


 int IEEE80211_RATE_ERP_G ;
 int IEEE80211_SDATA_OPERATING_GMODE ;
 int cpu_to_le16 (int ) ;
 int ieee80211_frame_duration (int,size_t,int ,int,int) ;
 struct ieee80211_sub_if_data* vif_to_sdata (struct ieee80211_vif*) ;

__le16 ieee80211_generic_frame_duration(struct ieee80211_hw *hw,
     struct ieee80211_vif *vif,
     enum ieee80211_band band,
     size_t frame_len,
     struct ieee80211_rate *rate)
{
 struct ieee80211_sub_if_data *sdata;
 u16 dur;
 int erp;
 bool short_preamble = 0;

 erp = 0;
 if (vif) {
  sdata = vif_to_sdata(vif);
  short_preamble = sdata->vif.bss_conf.use_short_preamble;
  if (sdata->flags & IEEE80211_SDATA_OPERATING_GMODE)
   erp = rate->flags & IEEE80211_RATE_ERP_G;
 }

 dur = ieee80211_frame_duration(band, frame_len, rate->bitrate, erp,
           short_preamble);

 return cpu_to_le16(dur);
}
