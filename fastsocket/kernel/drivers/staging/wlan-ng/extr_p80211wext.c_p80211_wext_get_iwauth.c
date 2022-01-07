
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hostwep; } ;
typedef TYPE_1__ wlandevice_t ;
struct iw_param {int flags; int value; } ;
union iwreq_data {struct iw_param param; } ;
struct net_device {TYPE_1__* ml_priv; } ;
struct iw_request_info {int dummy; } ;


 int HOSTWEP_EXCLUDEUNENCRYPTED ;
 int HOSTWEP_PRIVACYINVOKED ;
 int HOSTWEP_SHAREDKEY ;

 int IW_AUTH_ALG_OPEN_SYSTEM ;
 int IW_AUTH_ALG_SHARED_KEY ;

 int IW_AUTH_INDEX ;

 int pr_debug (char*,int) ;

__attribute__((used)) static int p80211_wext_get_iwauth(struct net_device *dev,
      struct iw_request_info *info,
      union iwreq_data *wrqu, char *extra)
{
 wlandevice_t *wlandev = dev->ml_priv;
 struct iw_param *param = &wrqu->param;
 int result = 0;

 pr_debug("get_iwauth flags[%d]\n", (int)param->flags & IW_AUTH_INDEX);

 switch (param->flags & IW_AUTH_INDEX) {
 case 129:
  param->value =
      wlandev->hostwep & HOSTWEP_EXCLUDEUNENCRYPTED ? 1 : 0;
  break;

 case 128:
  param->value =
      wlandev->hostwep & HOSTWEP_PRIVACYINVOKED ? 1 : 0;
  break;

 case 130:
  param->value =
      wlandev->hostwep & HOSTWEP_SHAREDKEY ?
      IW_AUTH_ALG_SHARED_KEY : IW_AUTH_ALG_OPEN_SYSTEM;
  break;

 default:
  break;
 }

 return result;
}
