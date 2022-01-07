
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union iwreq_data {scalar_t__ mode; } ;
struct iw_request_info {int dummy; } ;
struct ieee80211_device {int sync_scan_hurryup; scalar_t__ iw_mode; int wx_sem; int proto_started; TYPE_1__* dev; } ;
struct TYPE_2__ {int type; } ;


 int ARPHRD_ETHER ;
 int ARPHRD_IEEE80211 ;
 scalar_t__ IW_MODE_MONITOR ;
 int down (int *) ;
 int ieee80211_start_protocol (struct ieee80211_device*) ;
 int ieee80211_stop_protocol (struct ieee80211_device*) ;
 int up (int *) ;

int ieee80211_wx_set_mode(struct ieee80211_device *ieee, struct iw_request_info *a,
        union iwreq_data *wrqu, char *b)
{

 ieee->sync_scan_hurryup = 1;

 down(&ieee->wx_sem);

 if (wrqu->mode == ieee->iw_mode)
  goto out;

 if (wrqu->mode == IW_MODE_MONITOR){

  ieee->dev->type = ARPHRD_IEEE80211;
 }else{
  ieee->dev->type = ARPHRD_ETHER;
 }

 if (!ieee->proto_started){
  ieee->iw_mode = wrqu->mode;
 }else{
  ieee80211_stop_protocol(ieee);
  ieee->iw_mode = wrqu->mode;
  ieee80211_start_protocol(ieee);
 }

out:
 up(&ieee->wx_sem);
 return 0;
}
