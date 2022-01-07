
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rate_info {int flags; int legacy; int mcs; } ;


 int RATE_INFO_FLAGS_40_MHZ_WIDTH ;
 int RATE_INFO_FLAGS_60G ;
 int RATE_INFO_FLAGS_MCS ;
 int RATE_INFO_FLAGS_SHORT_GI ;
 int RATE_INFO_FLAGS_VHT_MCS ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int cfg80211_calculate_bitrate_60g (struct rate_info*) ;
 int cfg80211_calculate_bitrate_vht (struct rate_info*) ;

u32 cfg80211_calculate_bitrate(struct rate_info *rate)
{
 int modulation, streams, bitrate;

 if (!(rate->flags & RATE_INFO_FLAGS_MCS) &&
     !(rate->flags & RATE_INFO_FLAGS_VHT_MCS))
  return rate->legacy;
 if (rate->flags & RATE_INFO_FLAGS_60G)
  return cfg80211_calculate_bitrate_60g(rate);
 if (rate->flags & RATE_INFO_FLAGS_VHT_MCS)
  return cfg80211_calculate_bitrate_vht(rate);


 if (WARN_ON_ONCE(rate->mcs >= 32))
  return 0;

 modulation = rate->mcs & 7;
 streams = (rate->mcs >> 3) + 1;

 bitrate = (rate->flags & RATE_INFO_FLAGS_40_MHZ_WIDTH) ?
   13500000 : 6500000;

 if (modulation < 4)
  bitrate *= (modulation + 1);
 else if (modulation == 4)
  bitrate *= (modulation + 2);
 else
  bitrate *= (modulation + 3);

 bitrate *= streams;

 if (rate->flags & RATE_INFO_FLAGS_SHORT_GI)
  bitrate = (bitrate / 9) * 10;


 return (bitrate + 50000) / 100000;
}
