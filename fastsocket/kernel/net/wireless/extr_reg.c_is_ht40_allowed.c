
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_channel {int flags; } ;


 int IEEE80211_CHAN_DISABLED ;
 int IEEE80211_CHAN_NO_HT40 ;

__attribute__((used)) static bool is_ht40_allowed(struct ieee80211_channel *chan)
{
 if (!chan)
  return 0;
 if (chan->flags & IEEE80211_CHAN_DISABLED)
  return 0;

 if ((chan->flags & IEEE80211_CHAN_NO_HT40) == IEEE80211_CHAN_NO_HT40)
  return 0;
 return 1;
}
