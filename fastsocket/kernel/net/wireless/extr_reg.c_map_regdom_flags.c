
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int IEEE80211_CHAN_NO_IBSS ;
 int IEEE80211_CHAN_NO_OFDM ;
 int IEEE80211_CHAN_PASSIVE_SCAN ;
 int IEEE80211_CHAN_RADAR ;
 int NL80211_RRF_DFS ;
 int NL80211_RRF_NO_IBSS ;
 int NL80211_RRF_NO_OFDM ;
 int NL80211_RRF_PASSIVE_SCAN ;

__attribute__((used)) static u32 map_regdom_flags(u32 rd_flags)
{
 u32 channel_flags = 0;
 if (rd_flags & NL80211_RRF_PASSIVE_SCAN)
  channel_flags |= IEEE80211_CHAN_PASSIVE_SCAN;
 if (rd_flags & NL80211_RRF_NO_IBSS)
  channel_flags |= IEEE80211_CHAN_NO_IBSS;
 if (rd_flags & NL80211_RRF_DFS)
  channel_flags |= IEEE80211_CHAN_RADAR;
 if (rd_flags & NL80211_RRF_NO_OFDM)
  channel_flags |= IEEE80211_CHAN_NO_OFDM;
 return channel_flags;
}
