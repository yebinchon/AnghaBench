
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wiphy {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int mcast_rate; } ;
struct TYPE_4__ {TYPE_1__ bss_conf; } ;
struct ieee80211_sub_if_data {TYPE_2__ vif; } ;


 struct ieee80211_sub_if_data* IEEE80211_DEV_TO_SUB_IF (struct net_device*) ;
 int IEEE80211_NUM_BANDS ;
 int memcpy (int ,int*,int) ;

__attribute__((used)) static int ieee80211_set_mcast_rate(struct wiphy *wiphy, struct net_device *dev,
        int rate[IEEE80211_NUM_BANDS])
{
 struct ieee80211_sub_if_data *sdata = IEEE80211_DEV_TO_SUB_IF(dev);

 memcpy(sdata->vif.bss_conf.mcast_rate, rate,
        sizeof(int) * IEEE80211_NUM_BANDS);

 return 0;
}
