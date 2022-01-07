
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_device {int scanning; int scan_sem; int softmac_scan_wq; scalar_t__ scan_watch_dog; } ;


 int cancel_delayed_work (int *) ;
 int down (int *) ;
 int up (int *) ;

void ieee80211_softmac_stop_scan(struct ieee80211_device *ieee)
{




 down(&ieee->scan_sem);

 ieee->scan_watch_dog = 0;
 if (ieee->scanning == 1){
  ieee->scanning = 0;

  cancel_delayed_work(&ieee->softmac_scan_wq);
 }


 up(&ieee->scan_sem);
}
