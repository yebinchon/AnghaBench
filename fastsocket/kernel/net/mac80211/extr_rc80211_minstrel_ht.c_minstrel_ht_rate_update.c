
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ieee80211_supported_band {int dummy; } ;
struct ieee80211_sta {int dummy; } ;


 int minstrel_ht_update_caps (void*,struct ieee80211_supported_band*,struct ieee80211_sta*,void*) ;

__attribute__((used)) static void
minstrel_ht_rate_update(void *priv, struct ieee80211_supported_band *sband,
                        struct ieee80211_sta *sta, void *priv_sta,
                        u32 changed)
{
 minstrel_ht_update_caps(priv, sband, sta, priv_sta);
}
