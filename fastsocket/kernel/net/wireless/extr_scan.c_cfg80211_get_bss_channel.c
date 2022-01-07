
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct wiphy {int dummy; } ;
struct ieee80211_ht_operation {int primary_chan; } ;
struct ieee80211_channel {int flags; int band; } ;


 int IEEE80211_CHAN_DISABLED ;
 int WLAN_EID_DS_PARAMS ;
 int WLAN_EID_HT_OPERATION ;
 int* cfg80211_find_ie (int ,int const*,size_t) ;
 int ieee80211_channel_to_frequency (int,int ) ;
 struct ieee80211_channel* ieee80211_get_channel (struct wiphy*,int ) ;

__attribute__((used)) static struct ieee80211_channel *
cfg80211_get_bss_channel(struct wiphy *wiphy, const u8 *ie, size_t ielen,
    struct ieee80211_channel *channel)
{
 const u8 *tmp;
 u32 freq;
 int channel_number = -1;

 tmp = cfg80211_find_ie(WLAN_EID_DS_PARAMS, ie, ielen);
 if (tmp && tmp[1] == 1) {
  channel_number = tmp[2];
 } else {
  tmp = cfg80211_find_ie(WLAN_EID_HT_OPERATION, ie, ielen);
  if (tmp && tmp[1] >= sizeof(struct ieee80211_ht_operation)) {
   struct ieee80211_ht_operation *htop = (void *)(tmp + 2);

   channel_number = htop->primary_chan;
  }
 }

 if (channel_number < 0)
  return channel;

 freq = ieee80211_channel_to_frequency(channel_number, channel->band);
 channel = ieee80211_get_channel(wiphy, freq);
 if (!channel)
  return ((void*)0);
 if (channel->flags & IEEE80211_CHAN_DISABLED)
  return ((void*)0);
 return channel;
}
