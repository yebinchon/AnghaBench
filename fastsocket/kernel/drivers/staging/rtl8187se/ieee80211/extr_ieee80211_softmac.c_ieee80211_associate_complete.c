
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_device {int associate_complete_wq; int wq; int state; int associate_timer; } ;


 int IEEE80211_DEBUG_MGMT (char*) ;
 int IEEE80211_LINKED ;
 int del_timer_sync (int *) ;
 int queue_work (int ,int *) ;

void ieee80211_associate_complete(struct ieee80211_device *ieee)
{
 int i;
 del_timer_sync(&ieee->associate_timer);

 for(i = 0; i < 6; i++) {

 }
 ieee->state = IEEE80211_LINKED;
 IEEE80211_DEBUG_MGMT("Successfully associated\n");

 queue_work(ieee->wq, &ieee->associate_complete_wq);
}
