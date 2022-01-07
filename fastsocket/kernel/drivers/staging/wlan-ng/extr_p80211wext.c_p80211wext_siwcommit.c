
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int wlandevice_t ;
struct iw_request_info {int dummy; } ;
struct iw_point {int dummy; } ;
struct TYPE_3__ {int * ml_priv; } ;
typedef TYPE_1__ netdevice_t ;


 int EOPNOTSUPP ;
 int p80211wext_autojoin (int *) ;
 int wlan_wext_write ;

__attribute__((used)) static int p80211wext_siwcommit(netdevice_t *dev,
    struct iw_request_info *info,
    struct iw_point *data, char *essid)
{
 wlandevice_t *wlandev = dev->ml_priv;
 int err = 0;

 if (!wlan_wext_write) {
  err = (-EOPNOTSUPP);
  goto exit;
 }


 err = p80211wext_autojoin(wlandev);

exit:
 return err;
}
