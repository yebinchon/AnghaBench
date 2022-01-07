
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {struct ieee80211_supported_band** bands; } ;
struct ieee80211_supported_band {unsigned int n_channels; struct ieee80211_channel* channels; } ;
struct ieee80211_channel {size_t band; int center_freq; int flags; } ;


 int IEEE80211_CHAN_NO_HT40 ;
 int IEEE80211_CHAN_NO_HT40MINUS ;
 int IEEE80211_CHAN_NO_HT40PLUS ;
 int is_ht40_allowed (struct ieee80211_channel*) ;

__attribute__((used)) static void reg_process_ht_flags_channel(struct wiphy *wiphy,
      struct ieee80211_channel *channel)
{
 struct ieee80211_supported_band *sband = wiphy->bands[channel->band];
 struct ieee80211_channel *channel_before = ((void*)0), *channel_after = ((void*)0);
 unsigned int i;

 if (!is_ht40_allowed(channel)) {
  channel->flags |= IEEE80211_CHAN_NO_HT40;
  return;
 }





 for (i = 0; i < sband->n_channels; i++) {
  struct ieee80211_channel *c = &sband->channels[i];

  if (c->center_freq == (channel->center_freq - 20))
   channel_before = c;
  if (c->center_freq == (channel->center_freq + 20))
   channel_after = c;
 }






 if (!is_ht40_allowed(channel_before))
  channel->flags |= IEEE80211_CHAN_NO_HT40MINUS;
 else
  channel->flags &= ~IEEE80211_CHAN_NO_HT40MINUS;

 if (!is_ht40_allowed(channel_after))
  channel->flags |= IEEE80211_CHAN_NO_HT40PLUS;
 else
  channel->flags &= ~IEEE80211_CHAN_NO_HT40PLUS;
}
