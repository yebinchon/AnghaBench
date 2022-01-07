
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_device {int associate_complete_wq; int wq; int state; int associate_timer; } ;


 int IEEE80211_LINKED ;
 int del_timer_sync (int *) ;
 int queue_work (int ,int *) ;

void ieee80211_associate_complete(struct ieee80211_device *ieee)
{


 del_timer_sync(&ieee->associate_timer);

 ieee->state = IEEE80211_LINKED;

 queue_work(ieee->wq, &ieee->associate_complete_wq);
}
