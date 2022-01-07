
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int * bands; } ;
typedef enum ieee80211_band { ____Placeholder_ieee80211_band } ieee80211_band ;


 int IEEE80211_NUM_BANDS ;
 int reg_process_ht_flags_band (struct wiphy*,int ) ;

__attribute__((used)) static void reg_process_ht_flags(struct wiphy *wiphy)
{
 enum ieee80211_band band;

 if (!wiphy)
  return;

 for (band = 0; band < IEEE80211_NUM_BANDS; band++)
  reg_process_ht_flags_band(wiphy, wiphy->bands[band]);
}
