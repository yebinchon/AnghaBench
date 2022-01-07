
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_device {int wx_sem; scalar_t__ sync_scan_hurryup; } ;


 int down (int *) ;
 int ieee80211_start_protocol (struct ieee80211_device*) ;
 int up (int *) ;

void ieee80211_softmac_start_protocol(struct ieee80211_device *ieee)
{
 ieee->sync_scan_hurryup = 0;
 down(&ieee->wx_sem);
 ieee80211_start_protocol(ieee);
 up(&ieee->wx_sem);
}
