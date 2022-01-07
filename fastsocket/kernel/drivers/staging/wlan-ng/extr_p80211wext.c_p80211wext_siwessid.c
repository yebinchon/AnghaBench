
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int hostwep; } ;
typedef TYPE_4__ wlandevice_t ;
typedef int u8 ;
struct iw_request_info {int dummy; } ;
struct iw_point {int length; } ;
struct TYPE_10__ {int len; int data; } ;
struct TYPE_11__ {TYPE_2__ data; } ;
struct TYPE_9__ {int data; } ;
struct TYPE_13__ {TYPE_3__ ssid; int msgcode; TYPE_1__ authtype; } ;
typedef TYPE_5__ p80211msg_lnxreq_autojoin_t ;
struct TYPE_14__ {TYPE_4__* ml_priv; } ;
typedef TYPE_6__ netdevice_t ;


 int DIDmsg_lnxreq_autojoin ;
 int EFAULT ;
 int EOPNOTSUPP ;
 int HOSTWEP_SHAREDKEY ;
 int P80211ENUM_authalg_opensystem ;
 int P80211ENUM_authalg_sharedkey ;
 int memcpy (int ,char*,int) ;
 int p80211req_dorequest (TYPE_4__*,int *) ;
 int pr_debug (char*,...) ;
 int wlan_wext_write ;

__attribute__((used)) static int p80211wext_siwessid(netdevice_t *dev,
          struct iw_request_info *info,
          struct iw_point *data, char *essid)
{
 wlandevice_t *wlandev = dev->ml_priv;
 p80211msg_lnxreq_autojoin_t msg;

 int result;
 int err = 0;
 int length = data->length;

 if (!wlan_wext_write) {
  err = (-EOPNOTSUPP);
  goto exit;
 }

 if (wlandev->hostwep & HOSTWEP_SHAREDKEY)
  msg.authtype.data = P80211ENUM_authalg_sharedkey;
 else
  msg.authtype.data = P80211ENUM_authalg_opensystem;

 msg.msgcode = DIDmsg_lnxreq_autojoin;


 if (length && essid[length - 1] == '\0')
  length--;

 memcpy(msg.ssid.data.data, essid, length);
 msg.ssid.data.len = length;

 pr_debug("autojoin_ssid for %s \n", essid);
 result = p80211req_dorequest(wlandev, (u8 *) & msg);
 pr_debug("autojoin_ssid %d\n", result);

 if (result) {
  err = -EFAULT;
  goto exit;
 }

exit:
 return err;
}
