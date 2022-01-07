
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wiphy {struct ieee80211_supported_band** bands; } ;
struct ieee80211_supported_band {int n_bitrates; TYPE_1__* bitrates; } ;
struct cfg80211_registered_device {struct wiphy wiphy; } ;
struct TYPE_2__ {int bitrate; } ;


 int IEEE80211_NUM_BANDS ;

__attribute__((used)) static bool
nl80211_parse_mcast_rate(struct cfg80211_registered_device *rdev,
    int mcast_rate[IEEE80211_NUM_BANDS],
    int rateval)
{
 struct wiphy *wiphy = &rdev->wiphy;
 bool found = 0;
 int band, i;

 for (band = 0; band < IEEE80211_NUM_BANDS; band++) {
  struct ieee80211_supported_band *sband;

  sband = wiphy->bands[band];
  if (!sband)
   continue;

  for (i = 0; i < sband->n_bitrates; i++) {
   if (sband->bitrates[i].bitrate == rateval) {
    mcast_rate[band] = i + 1;
    found = 1;
    break;
   }
  }
 }

 return found;
}
