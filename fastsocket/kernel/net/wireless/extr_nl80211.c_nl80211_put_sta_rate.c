
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
typedef unsigned long u16 ;
struct sk_buff {int dummy; } ;
struct rate_info {int flags; int nss; int mcs; } ;
struct nlattr {int dummy; } ;


 int NL80211_RATE_INFO_160_MHZ_WIDTH ;
 int NL80211_RATE_INFO_40_MHZ_WIDTH ;
 int NL80211_RATE_INFO_80P80_MHZ_WIDTH ;
 int NL80211_RATE_INFO_80_MHZ_WIDTH ;
 int NL80211_RATE_INFO_BITRATE ;
 int NL80211_RATE_INFO_BITRATE32 ;
 int NL80211_RATE_INFO_MCS ;
 int NL80211_RATE_INFO_SHORT_GI ;
 int NL80211_RATE_INFO_VHT_MCS ;
 int NL80211_RATE_INFO_VHT_NSS ;
 int RATE_INFO_FLAGS_160_MHZ_WIDTH ;
 int RATE_INFO_FLAGS_40_MHZ_WIDTH ;
 int RATE_INFO_FLAGS_80P80_MHZ_WIDTH ;
 int RATE_INFO_FLAGS_80_MHZ_WIDTH ;
 int RATE_INFO_FLAGS_MCS ;
 int RATE_INFO_FLAGS_SHORT_GI ;
 int RATE_INFO_FLAGS_VHT_MCS ;
 unsigned long cfg80211_calculate_bitrate (struct rate_info*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start (struct sk_buff*,int) ;
 scalar_t__ nla_put_flag (struct sk_buff*,int ) ;
 scalar_t__ nla_put_u16 (struct sk_buff*,int ,unsigned long) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,unsigned long) ;
 scalar_t__ nla_put_u8 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static bool nl80211_put_sta_rate(struct sk_buff *msg, struct rate_info *info,
     int attr)
{
 struct nlattr *rate;
 u32 bitrate;
 u16 bitrate_compat;

 rate = nla_nest_start(msg, attr);
 if (!rate)
  return 0;


 bitrate = cfg80211_calculate_bitrate(info);

 bitrate_compat = bitrate < (1UL << 16) ? bitrate : 0;
 if (bitrate > 0 &&
     nla_put_u32(msg, NL80211_RATE_INFO_BITRATE32, bitrate))
  return 0;
 if (bitrate_compat > 0 &&
     nla_put_u16(msg, NL80211_RATE_INFO_BITRATE, bitrate_compat))
  return 0;

 if (info->flags & RATE_INFO_FLAGS_MCS) {
  if (nla_put_u8(msg, NL80211_RATE_INFO_MCS, info->mcs))
   return 0;
  if (info->flags & RATE_INFO_FLAGS_40_MHZ_WIDTH &&
      nla_put_flag(msg, NL80211_RATE_INFO_40_MHZ_WIDTH))
   return 0;
  if (info->flags & RATE_INFO_FLAGS_SHORT_GI &&
      nla_put_flag(msg, NL80211_RATE_INFO_SHORT_GI))
   return 0;
 } else if (info->flags & RATE_INFO_FLAGS_VHT_MCS) {
  if (nla_put_u8(msg, NL80211_RATE_INFO_VHT_MCS, info->mcs))
   return 0;
  if (nla_put_u8(msg, NL80211_RATE_INFO_VHT_NSS, info->nss))
   return 0;
  if (info->flags & RATE_INFO_FLAGS_40_MHZ_WIDTH &&
      nla_put_flag(msg, NL80211_RATE_INFO_40_MHZ_WIDTH))
   return 0;
  if (info->flags & RATE_INFO_FLAGS_80_MHZ_WIDTH &&
      nla_put_flag(msg, NL80211_RATE_INFO_80_MHZ_WIDTH))
   return 0;
  if (info->flags & RATE_INFO_FLAGS_80P80_MHZ_WIDTH &&
      nla_put_flag(msg, NL80211_RATE_INFO_80P80_MHZ_WIDTH))
   return 0;
  if (info->flags & RATE_INFO_FLAGS_160_MHZ_WIDTH &&
      nla_put_flag(msg, NL80211_RATE_INFO_160_MHZ_WIDTH))
   return 0;
  if (info->flags & RATE_INFO_FLAGS_SHORT_GI &&
      nla_put_flag(msg, NL80211_RATE_INFO_SHORT_GI))
   return 0;
 }

 nla_nest_end(msg, rate);
 return 1;
}
