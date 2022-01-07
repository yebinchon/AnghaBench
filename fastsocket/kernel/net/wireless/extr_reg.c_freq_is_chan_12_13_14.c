
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;


 int IEEE80211_BAND_2GHZ ;
 scalar_t__ ieee80211_channel_to_frequency (int,int ) ;

__attribute__((used)) static bool freq_is_chan_12_13_14(u16 freq)
{
 if (freq == ieee80211_channel_to_frequency(12, IEEE80211_BAND_2GHZ) ||
     freq == ieee80211_channel_to_frequency(13, IEEE80211_BAND_2GHZ) ||
     freq == ieee80211_channel_to_frequency(14, IEEE80211_BAND_2GHZ))
  return 1;
 return 0;
}
