
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {struct ieee80211_supported_band** bands; } ;
struct ieee80211_supported_band {int n_channels; struct ieee80211_channel* channels; } ;
struct ieee80211_channel {int center_freq; } ;
typedef enum ieee80211_band { ____Placeholder_ieee80211_band } ieee80211_band ;


 int IEEE80211_NUM_BANDS ;

struct ieee80211_channel *__ieee80211_get_channel(struct wiphy *wiphy,
        int freq)
{
 enum ieee80211_band band;
 struct ieee80211_supported_band *sband;
 int i;

 for (band = 0; band < IEEE80211_NUM_BANDS; band++) {
  sband = wiphy->bands[band];

  if (!sband)
   continue;

  for (i = 0; i < sband->n_channels; i++) {
   if (sband->channels[i].center_freq == freq)
    return &sband->channels[i];
  }
 }

 return ((void*)0);
}
