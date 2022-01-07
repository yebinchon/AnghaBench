
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_device {int wx_sem; int * pDot11dInfo; int wq; int GPIOChangeRFWorkItem; int associate_retry_wq; int associate_timer; } ;


 int cancel_delayed_work (int *) ;
 int del_timer_sync (int *) ;
 int destroy_workqueue (int ) ;
 int down (int *) ;
 int kfree (int *) ;
 int up (int *) ;

void ieee80211_softmac_free(struct ieee80211_device *ieee)
{
 down(&ieee->wx_sem);

 del_timer_sync(&ieee->associate_timer);
 cancel_delayed_work(&ieee->associate_retry_wq);



 cancel_delayed_work(&ieee->GPIOChangeRFWorkItem);

 destroy_workqueue(ieee->wq);
 if(((void*)0) != ieee->pDot11dInfo)
  kfree(ieee->pDot11dInfo);
 up(&ieee->wx_sem);
}
