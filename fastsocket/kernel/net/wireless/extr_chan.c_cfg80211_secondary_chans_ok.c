
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wiphy {int dummy; } ;
struct ieee80211_channel {int flags; scalar_t__ dfs_state; } ;


 int IEEE80211_CHAN_RADAR ;
 scalar_t__ NL80211_DFS_AVAILABLE ;
 struct ieee80211_channel* ieee80211_get_channel (struct wiphy*,int) ;

__attribute__((used)) static bool cfg80211_secondary_chans_ok(struct wiphy *wiphy,
     u32 center_freq, u32 bandwidth,
     u32 prohibited_flags)
{
 struct ieee80211_channel *c;
 u32 freq;

 for (freq = center_freq - bandwidth/2 + 10;
      freq <= center_freq + bandwidth/2 - 10;
      freq += 20) {
  c = ieee80211_get_channel(wiphy, freq);
  if (!c)
   return 0;


  if ((prohibited_flags & c->flags & IEEE80211_CHAN_RADAR) &&
      (c->dfs_state != NL80211_DFS_AVAILABLE))
   return 0;


  if (c->flags & prohibited_flags & ~IEEE80211_CHAN_RADAR)
   return 0;
 }

 return 1;
}
