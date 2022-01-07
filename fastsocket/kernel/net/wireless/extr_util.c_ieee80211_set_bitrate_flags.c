
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {scalar_t__* bands; } ;
typedef enum ieee80211_band { ____Placeholder_ieee80211_band } ieee80211_band ;


 int IEEE80211_NUM_BANDS ;
 int set_mandatory_flags_band (scalar_t__,int) ;

void ieee80211_set_bitrate_flags(struct wiphy *wiphy)
{
 enum ieee80211_band band;

 for (band = 0; band < IEEE80211_NUM_BANDS; band++)
  if (wiphy->bands[band])
   set_mandatory_flags_band(wiphy->bands[band], band);
}
