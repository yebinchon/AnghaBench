
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_device {scalar_t__ iw_mode; scalar_t__ state; int start_ibss_wq; int associate_retry_wq; int associate_timer; scalar_t__ proto_started; } ;


 scalar_t__ IEEE80211_LINKED ;
 scalar_t__ IW_MODE_INFRA ;
 int SendDisassociation (struct ieee80211_device*,int *,int ) ;
 int WLAN_REASON_DISASSOC_STA_HAS_LEFT ;
 int cancel_delayed_work (int *) ;
 int del_timer_sync (int *) ;
 int ieee80211_disassociate (struct ieee80211_device*) ;
 int ieee80211_stop_scan (struct ieee80211_device*) ;
 int ieee80211_stop_send_beacons (struct ieee80211_device*) ;

void ieee80211_stop_protocol(struct ieee80211_device *ieee)
{
 if (!ieee->proto_started)
  return;

 ieee->proto_started = 0;

 ieee80211_stop_send_beacons(ieee);
 if((ieee->iw_mode == IW_MODE_INFRA)&&(ieee->state == IEEE80211_LINKED)) {
  SendDisassociation(ieee,((void*)0),WLAN_REASON_DISASSOC_STA_HAS_LEFT);
 }
 del_timer_sync(&ieee->associate_timer);
 cancel_delayed_work(&ieee->associate_retry_wq);
 cancel_delayed_work(&ieee->start_ibss_wq);
 ieee80211_stop_scan(ieee);

 ieee80211_disassociate(ieee);
}
