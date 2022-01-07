
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wiphy {int dummy; } ;
struct ieee80211_channel {int flags; } ;


 int EINVAL ;
 int IEEE80211_CHAN_RADAR ;
 struct ieee80211_channel* ieee80211_get_channel (struct wiphy*,int) ;

__attribute__((used)) static int cfg80211_get_chans_dfs_required(struct wiphy *wiphy,
         u32 center_freq,
         u32 bandwidth)
{
 struct ieee80211_channel *c;
 u32 freq;

 for (freq = center_freq - bandwidth/2 + 10;
      freq <= center_freq + bandwidth/2 - 10;
      freq += 20) {
  c = ieee80211_get_channel(wiphy, freq);
  if (!c)
   return -EINVAL;

  if (c->flags & IEEE80211_CHAN_RADAR)
   return 1;
 }
 return 0;
}
