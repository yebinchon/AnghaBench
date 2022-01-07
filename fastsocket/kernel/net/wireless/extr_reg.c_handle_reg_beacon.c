
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wiphy {int flags; struct ieee80211_supported_band** bands; } ;
struct TYPE_2__ {size_t band; scalar_t__ center_freq; } ;
struct reg_beacon {TYPE_1__ chan; } ;
struct ieee80211_supported_band {struct ieee80211_channel* channels; } ;
struct ieee80211_channel {scalar_t__ center_freq; int beacon_found; int flags; } ;


 int IEEE80211_CHAN_NO_IBSS ;
 int IEEE80211_CHAN_PASSIVE_SCAN ;
 int WIPHY_FLAG_DISABLE_BEACON_HINTS ;
 scalar_t__ likely (int) ;
 int nl80211_send_beacon_hint_event (struct wiphy*,struct ieee80211_channel*,struct ieee80211_channel*) ;
 int reg_is_world_roaming (struct wiphy*) ;

__attribute__((used)) static void handle_reg_beacon(struct wiphy *wiphy, unsigned int chan_idx,
         struct reg_beacon *reg_beacon)
{
 struct ieee80211_supported_band *sband;
 struct ieee80211_channel *chan;
 bool channel_changed = 0;
 struct ieee80211_channel chan_before;

 sband = wiphy->bands[reg_beacon->chan.band];
 chan = &sband->channels[chan_idx];

 if (likely(chan->center_freq != reg_beacon->chan.center_freq))
  return;

 if (chan->beacon_found)
  return;

 chan->beacon_found = 1;

 if (!reg_is_world_roaming(wiphy))
  return;

 if (wiphy->flags & WIPHY_FLAG_DISABLE_BEACON_HINTS)
  return;

 chan_before.center_freq = chan->center_freq;
 chan_before.flags = chan->flags;

 if (chan->flags & IEEE80211_CHAN_PASSIVE_SCAN) {
  chan->flags &= ~IEEE80211_CHAN_PASSIVE_SCAN;
  channel_changed = 1;
 }

 if (chan->flags & IEEE80211_CHAN_NO_IBSS) {
  chan->flags &= ~IEEE80211_CHAN_NO_IBSS;
  channel_changed = 1;
 }

 if (channel_changed)
  nl80211_send_beacon_hint_event(wiphy, &chan_before, chan);
}
