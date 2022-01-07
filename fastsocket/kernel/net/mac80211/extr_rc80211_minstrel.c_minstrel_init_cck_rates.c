
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct minstrel_priv {int* cck_rates; TYPE_2__* hw; } ;
struct ieee80211_supported_band {int n_bitrates; struct ieee80211_rate* bitrates; } ;
struct ieee80211_rate {int flags; int const bitrate; } ;
struct TYPE_4__ {TYPE_1__* wiphy; } ;
struct TYPE_3__ {struct ieee80211_supported_band** bands; } ;


 int ARRAY_SIZE (int const*) ;
 size_t IEEE80211_BAND_2GHZ ;
 int IEEE80211_RATE_ERP_G ;

__attribute__((used)) static void
minstrel_init_cck_rates(struct minstrel_priv *mp)
{
 static const int bitrates[4] = { 10, 20, 55, 110 };
 struct ieee80211_supported_band *sband;
 int i, j;

 sband = mp->hw->wiphy->bands[IEEE80211_BAND_2GHZ];
 if (!sband)
  return;

 for (i = 0, j = 0; i < sband->n_bitrates; i++) {
  struct ieee80211_rate *rate = &sband->bitrates[i];

  if (rate->flags & IEEE80211_RATE_ERP_G)
   continue;

  for (j = 0; j < ARRAY_SIZE(bitrates); j++) {
   if (rate->bitrate != bitrates[j])
    continue;

   mp->cck_rates[j] = i;
   break;
  }
 }
}
