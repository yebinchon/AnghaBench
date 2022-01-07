
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int wrqu ;
struct TYPE_3__ {int length; } ;
union iwreq_data {TYPE_1__ data; } ;
typedef int u8 ;
struct wiphy {int dummy; } ;
struct net_device {TYPE_2__* ieee80211_ptr; } ;
struct cfg80211_registered_device {int dummy; } ;
typedef int gfp_t ;
typedef enum nl80211_key_type { ____Placeholder_nl80211_key_type } nl80211_key_type ;
struct TYPE_4__ {struct wiphy* wiphy; } ;


 int IWEVCUSTOM ;
 int NL80211_KEYTYPE_GROUP ;
 int kfree (char*) ;
 char* kmalloc (int,int ) ;
 int memset (union iwreq_data*,int ,int) ;
 int nl80211_michael_mic_failure (struct cfg80211_registered_device*,struct net_device*,int const*,int,int,int const*,int ) ;
 int sprintf (char*,char*,int,char*,int const*) ;
 int strlen (char*) ;
 int trace_cfg80211_michael_mic_failure (struct net_device*,int const*,int,int,int const*) ;
 struct cfg80211_registered_device* wiphy_to_dev (struct wiphy*) ;
 int wireless_send_event (struct net_device*,int ,union iwreq_data*,char*) ;

void cfg80211_michael_mic_failure(struct net_device *dev, const u8 *addr,
      enum nl80211_key_type key_type, int key_id,
      const u8 *tsc, gfp_t gfp)
{
 struct wiphy *wiphy = dev->ieee80211_ptr->wiphy;
 struct cfg80211_registered_device *rdev = wiphy_to_dev(wiphy);
 trace_cfg80211_michael_mic_failure(dev, addr, key_type, key_id, tsc);
 nl80211_michael_mic_failure(rdev, dev, addr, key_type, key_id, tsc, gfp);
}
