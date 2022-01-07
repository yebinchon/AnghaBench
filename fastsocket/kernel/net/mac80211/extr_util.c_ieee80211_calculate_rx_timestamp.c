
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef unsigned int u64 ;
typedef unsigned int u16 ;
struct rate_info {size_t mcs; int legacy; int flags; int nss; } ;
struct ieee80211_supported_band {TYPE_3__* bitrates; } ;
struct ieee80211_rx_status {unsigned int mactime; int flag; size_t rate_idx; size_t band; int vht_nss; } ;
struct TYPE_5__ {TYPE_1__* wiphy; } ;
struct ieee80211_local {TYPE_2__ hw; } ;
typedef int ri ;
struct TYPE_6__ {int bitrate; } ;
struct TYPE_4__ {struct ieee80211_supported_band** bands; } ;


 int RATE_INFO_FLAGS_160_MHZ_WIDTH ;
 int RATE_INFO_FLAGS_40_MHZ_WIDTH ;
 int RATE_INFO_FLAGS_80P80_MHZ_WIDTH ;
 int RATE_INFO_FLAGS_80_MHZ_WIDTH ;
 int RATE_INFO_FLAGS_MCS ;
 int RATE_INFO_FLAGS_SHORT_GI ;
 int RATE_INFO_FLAGS_VHT_MCS ;
 int RX_FLAG_160MHZ ;
 int RX_FLAG_40MHZ ;
 int RX_FLAG_80MHZ ;
 int RX_FLAG_80P80MHZ ;
 int RX_FLAG_HT ;
 int RX_FLAG_MACTIME_END ;
 int RX_FLAG_SHORT_GI ;
 int RX_FLAG_VHT ;
 scalar_t__ WARN_ON (int) ;
 unsigned int cfg80211_calculate_bitrate (struct rate_info*) ;
 int ieee80211_have_rx_timestamp (struct ieee80211_rx_status*) ;
 int memset (struct rate_info*,int ,int) ;

u64 ieee80211_calculate_rx_timestamp(struct ieee80211_local *local,
         struct ieee80211_rx_status *status,
         unsigned int mpdu_len,
         unsigned int mpdu_offset)
{
 u64 ts = status->mactime;
 struct rate_info ri;
 u16 rate;

 if (WARN_ON(!ieee80211_have_rx_timestamp(status)))
  return 0;

 memset(&ri, 0, sizeof(ri));


 if (status->flag & RX_FLAG_HT) {
  ri.mcs = status->rate_idx;
  ri.flags |= RATE_INFO_FLAGS_MCS;
  if (status->flag & RX_FLAG_40MHZ)
   ri.flags |= RATE_INFO_FLAGS_40_MHZ_WIDTH;
  if (status->flag & RX_FLAG_SHORT_GI)
   ri.flags |= RATE_INFO_FLAGS_SHORT_GI;
 } else if (status->flag & RX_FLAG_VHT) {
  ri.flags |= RATE_INFO_FLAGS_VHT_MCS;
  ri.mcs = status->rate_idx;
  ri.nss = status->vht_nss;
  if (status->flag & RX_FLAG_40MHZ)
   ri.flags |= RATE_INFO_FLAGS_40_MHZ_WIDTH;
  if (status->flag & RX_FLAG_80MHZ)
   ri.flags |= RATE_INFO_FLAGS_80_MHZ_WIDTH;
  if (status->flag & RX_FLAG_80P80MHZ)
   ri.flags |= RATE_INFO_FLAGS_80P80_MHZ_WIDTH;
  if (status->flag & RX_FLAG_160MHZ)
   ri.flags |= RATE_INFO_FLAGS_160_MHZ_WIDTH;
  if (status->flag & RX_FLAG_SHORT_GI)
   ri.flags |= RATE_INFO_FLAGS_SHORT_GI;
 } else {
  struct ieee80211_supported_band *sband;

  sband = local->hw.wiphy->bands[status->band];
  ri.legacy = sband->bitrates[status->rate_idx].bitrate;
 }

 rate = cfg80211_calculate_bitrate(&ri);


 if (status->flag & RX_FLAG_MACTIME_END)
  ts -= mpdu_len * 8 * 10 / rate;

 ts += mpdu_offset * 8 * 10 / rate;

 return ts;
}
