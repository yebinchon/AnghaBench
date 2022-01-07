
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct wiphy {TYPE_1__** bands; } ;
struct ieee80211_sta_vht_cap {int cap; int vht_supported; } ;
struct ieee80211_sta_ht_cap {int cap; int ht_supported; } ;
struct cfg80211_chan_def {int width; int center_freq1; int center_freq2; TYPE_2__* chan; } ;
struct TYPE_4__ {size_t band; int center_freq; int flags; } ;
struct TYPE_3__ {struct ieee80211_sta_vht_cap vht_cap; struct ieee80211_sta_ht_cap ht_cap; } ;


 int IEEE80211_CHAN_NO_160MHZ ;
 int IEEE80211_CHAN_NO_80MHZ ;
 int IEEE80211_CHAN_NO_HT40MINUS ;
 int IEEE80211_CHAN_NO_HT40PLUS ;
 int IEEE80211_CHAN_NO_OFDM ;
 int IEEE80211_HT_CAP_40MHZ_INTOLERANT ;
 int IEEE80211_HT_CAP_SUP_WIDTH_20_40 ;
 int IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_160MHZ ;
 int IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_160_80PLUS80MHZ ;






 scalar_t__ WARN_ON (int) ;
 int WARN_ON_ONCE (int) ;
 int cfg80211_chandef_valid (struct cfg80211_chan_def const*) ;
 int cfg80211_secondary_chans_ok (struct wiphy*,int,int,int) ;

bool cfg80211_chandef_usable(struct wiphy *wiphy,
        const struct cfg80211_chan_def *chandef,
        u32 prohibited_flags)
{
 struct ieee80211_sta_ht_cap *ht_cap;
 struct ieee80211_sta_vht_cap *vht_cap;
 u32 width, control_freq;

 if (WARN_ON(!cfg80211_chandef_valid(chandef)))
  return 0;

 ht_cap = &wiphy->bands[chandef->chan->band]->ht_cap;
 vht_cap = &wiphy->bands[chandef->chan->band]->vht_cap;

 control_freq = chandef->chan->center_freq;

 switch (chandef->width) {
 case 132:
  if (!ht_cap->ht_supported)
   return 0;
 case 131:
  width = 20;
  break;
 case 130:
  width = 40;
  if (!ht_cap->ht_supported)
   return 0;
  if (!(ht_cap->cap & IEEE80211_HT_CAP_SUP_WIDTH_20_40) ||
      ht_cap->cap & IEEE80211_HT_CAP_40MHZ_INTOLERANT)
   return 0;
  if (chandef->center_freq1 < control_freq &&
      chandef->chan->flags & IEEE80211_CHAN_NO_HT40MINUS)
   return 0;
  if (chandef->center_freq1 > control_freq &&
      chandef->chan->flags & IEEE80211_CHAN_NO_HT40PLUS)
   return 0;
  break;
 case 128:
  if (!(vht_cap->cap & IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_160_80PLUS80MHZ))
   return 0;
 case 129:
  if (!vht_cap->vht_supported)
   return 0;
  prohibited_flags |= IEEE80211_CHAN_NO_80MHZ;
  width = 80;
  break;
 case 133:
  if (!vht_cap->vht_supported)
   return 0;
  if (!(vht_cap->cap & IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_160MHZ))
   return 0;
  prohibited_flags |= IEEE80211_CHAN_NO_160MHZ;
  width = 160;
  break;
 default:
  WARN_ON_ONCE(1);
  return 0;
 }
 if (width > 20)
  prohibited_flags |= IEEE80211_CHAN_NO_OFDM;

 if (!cfg80211_secondary_chans_ok(wiphy, chandef->center_freq1,
      width, prohibited_flags))
  return 0;

 if (!chandef->center_freq2)
  return 1;
 return cfg80211_secondary_chans_ok(wiphy, chandef->center_freq2,
        width, prohibited_flags);
}
