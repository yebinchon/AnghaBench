
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wireless_dev {TYPE_1__* wiphy; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct iw_request_info {int dummy; } ;
struct TYPE_6__ {int ht_supported; } ;
struct ieee80211_supported_band {int n_bitrates; TYPE_3__ ht_cap; TYPE_2__* bitrates; } ;
struct TYPE_5__ {int bitrate; } ;
struct TYPE_4__ {struct ieee80211_supported_band** bands; } ;


 int EOPNOTSUPP ;
 size_t IEEE80211_BAND_2GHZ ;
 size_t IEEE80211_BAND_5GHZ ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;

int cfg80211_wext_giwname(struct net_device *dev,
     struct iw_request_info *info,
     char *name, char *extra)
{
 struct wireless_dev *wdev = dev->ieee80211_ptr;
 struct ieee80211_supported_band *sband;
 bool is_ht = 0, is_a = 0, is_b = 0, is_g = 0;

 if (!wdev)
  return -EOPNOTSUPP;

 sband = wdev->wiphy->bands[IEEE80211_BAND_5GHZ];
 if (sband) {
  is_a = 1;
  is_ht |= sband->ht_cap.ht_supported;
 }

 sband = wdev->wiphy->bands[IEEE80211_BAND_2GHZ];
 if (sband) {
  int i;

  for (i = 0; i < sband->n_bitrates; i++) {
   if (sband->bitrates[i].bitrate == 10)
    is_b = 1;
   if (sband->bitrates[i].bitrate == 60)
    is_g = 1;
  }
  is_ht |= sband->ht_cap.ht_supported;
 }

 strcpy(name, "IEEE 802.11");
 if (is_a)
  strcat(name, "a");
 if (is_b)
  strcat(name, "b");
 if (is_g)
  strcat(name, "g");
 if (is_ht)
  strcat(name, "n");

 return 0;
}
