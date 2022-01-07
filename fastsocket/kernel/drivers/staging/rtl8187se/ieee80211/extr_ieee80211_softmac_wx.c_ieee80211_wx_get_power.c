
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int disabled; int value; int flags; } ;
union iwreq_data {TYPE_1__ power; } ;
struct iw_request_info {int dummy; } ;
struct ieee80211_device {int ps; int ps_timeout; int wx_sem; } ;


 int IEEE80211_PS_DISABLED ;
 int IEEE80211_PS_MBCAST ;
 int IW_POWER_ALL_R ;
 int IW_POWER_TIMEOUT ;
 int IW_POWER_UNICAST_R ;
 int down (int *) ;
 int up (int *) ;

int ieee80211_wx_get_power(struct ieee80211_device *ieee,
     struct iw_request_info *info,
     union iwreq_data *wrqu, char *extra)
{
 int ret =0;

 down(&ieee->wx_sem);

 if(ieee->ps == IEEE80211_PS_DISABLED){
  wrqu->power.disabled = 1;
  goto exit;
 }

 wrqu->power.disabled = 0;


  wrqu->power.flags = IW_POWER_TIMEOUT;
  wrqu->power.value = ieee->ps_timeout * 1000;
 if (ieee->ps & IEEE80211_PS_MBCAST)
  wrqu->power.flags |= IW_POWER_ALL_R;
 else
  wrqu->power.flags |= IW_POWER_UNICAST_R;

exit:
 up(&ieee->wx_sem);
 return ret;

}
