
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_device {int softmac_features; int dev; int (* scan_syncro ) (int ) ;scalar_t__ sync_scan_hurryup; } ;


 int IEEE_SOFTMAC_SCAN ;
 scalar_t__ IS_COUNTRY_IE_VALID (struct ieee80211_device*) ;
 scalar_t__ IS_DOT11D_ENABLE (struct ieee80211_device*) ;
 int RESET_CIE_WATCHDOG (struct ieee80211_device*) ;
 int ieee80211_softmac_scan_syncro (struct ieee80211_device*) ;
 int stub1 (int ) ;

void ieee80211_start_scan_syncro(struct ieee80211_device *ieee)
{
 if(IS_DOT11D_ENABLE(ieee) )
 {
  if(IS_COUNTRY_IE_VALID(ieee))
  {
   RESET_CIE_WATCHDOG(ieee);
  }
 }
 ieee->sync_scan_hurryup = 0;
 if (ieee->softmac_features & IEEE_SOFTMAC_SCAN)
  ieee80211_softmac_scan_syncro(ieee);
 else
  ieee->scan_syncro(ieee->dev);

}
