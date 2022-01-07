
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union iwreq_data {int dummy; } iwreq_data ;
struct iw_request_info {int dummy; } ;
struct ieee80211_device {scalar_t__ iw_mode; scalar_t__ state; int wx_sem; int wx_sync_scan_wq; int wq; int proto_started; } ;


 scalar_t__ IEEE80211_LINKED ;
 scalar_t__ IW_MODE_MONITOR ;
 int down (int *) ;
 int queue_work (int ,int *) ;
 int up (int *) ;

int ieee80211_wx_set_scan(struct ieee80211_device *ieee, struct iw_request_info *a,
        union iwreq_data *wrqu, char *b)
{
 int ret = 0;

 down(&ieee->wx_sem);

 if (ieee->iw_mode == IW_MODE_MONITOR || !(ieee->proto_started)){
  ret = -1;
  goto out;
 }

 if ( ieee->state == IEEE80211_LINKED){
  queue_work(ieee->wq, &ieee->wx_sync_scan_wq);

  return 0;
 }

out:
 up(&ieee->wx_sem);
 return ret;
}
