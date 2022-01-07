
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_device {int softmac_features; int dev; int (* start_send_beacons ) (int ) ;} ;


 int IEEE_SOFTMAC_BEACONS ;
 int ieee80211_beacons_start (struct ieee80211_device*) ;
 int stub1 (int ) ;

void ieee80211_start_send_beacons(struct ieee80211_device *ieee)
{
 if(ieee->start_send_beacons)
  ieee->start_send_beacons(ieee->dev);
 if(ieee->softmac_features & IEEE_SOFTMAC_BEACONS)
  ieee80211_beacons_start(ieee);
}
