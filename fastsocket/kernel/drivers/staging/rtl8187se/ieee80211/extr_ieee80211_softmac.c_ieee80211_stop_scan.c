
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_device {int softmac_features; int dev; int (* stop_scan ) (int ) ;} ;


 int IEEE_SOFTMAC_SCAN ;
 int ieee80211_softmac_stop_scan (struct ieee80211_device*) ;
 int stub1 (int ) ;

void ieee80211_stop_scan(struct ieee80211_device *ieee)
{
 if (ieee->softmac_features & IEEE_SOFTMAC_SCAN)
  ieee80211_softmac_stop_scan(ieee);
 else
  ieee->stop_scan(ieee->dev);
}
