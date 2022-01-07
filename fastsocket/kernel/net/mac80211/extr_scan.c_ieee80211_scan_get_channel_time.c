
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_channel {int flags; } ;


 unsigned long IEEE80211_CHANNEL_TIME ;
 int IEEE80211_CHAN_PASSIVE_SCAN ;
 unsigned long IEEE80211_PASSIVE_CHANNEL_TIME ;
 unsigned long IEEE80211_PROBE_DELAY ;

__attribute__((used)) static unsigned long
ieee80211_scan_get_channel_time(struct ieee80211_channel *chan)
{




 if (chan->flags & IEEE80211_CHAN_PASSIVE_SCAN)
  return IEEE80211_PASSIVE_CHANNEL_TIME;
 return IEEE80211_PROBE_DELAY + IEEE80211_CHANNEL_TIME;
}
