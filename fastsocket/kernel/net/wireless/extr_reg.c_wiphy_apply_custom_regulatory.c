
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int * bands; } ;
struct ieee80211_regdomain {int dummy; } ;
typedef enum ieee80211_band { ____Placeholder_ieee80211_band } ieee80211_band ;


 int IEEE80211_NUM_BANDS ;
 int WARN_ON (int) ;
 int handle_band_custom (struct wiphy*,int ,struct ieee80211_regdomain const*) ;

void wiphy_apply_custom_regulatory(struct wiphy *wiphy,
       const struct ieee80211_regdomain *regd)
{
 enum ieee80211_band band;
 unsigned int bands_set = 0;

 for (band = 0; band < IEEE80211_NUM_BANDS; band++) {
  if (!wiphy->bands[band])
   continue;
  handle_band_custom(wiphy, wiphy->bands[band], regd);
  bands_set++;
 }





 WARN_ON(!bands_set);
}
