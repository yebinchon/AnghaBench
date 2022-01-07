
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int hostwep; int * wep_keys; int * wep_keylens; } ;
typedef TYPE_1__ wlandevice_t ;
struct iw_request_info {int dummy; } ;
struct iw_point {int flags; int length; } ;
struct TYPE_5__ {TYPE_1__* ml_priv; } ;
typedef TYPE_2__ netdevice_t ;


 int EINVAL ;
 int HOSTWEP_DEFAULTKEY_MASK ;
 int HOSTWEP_EXCLUDEUNENCRYPTED ;
 int HOSTWEP_PRIVACYINVOKED ;
 int IW_ENCODE_DISABLED ;
 int IW_ENCODE_ENABLED ;
 int IW_ENCODE_INDEX ;
 int IW_ENCODE_OPEN ;
 int IW_ENCODE_RESTRICTED ;
 int NUM_WEPKEYS ;
 int memcpy (char*,int ,int ) ;

__attribute__((used)) static int p80211wext_giwencode(netdevice_t *dev,
    struct iw_request_info *info,
    struct iw_point *erq, char *key)
{
 wlandevice_t *wlandev = dev->ml_priv;
 int err = 0;
 int i;

 i = (erq->flags & IW_ENCODE_INDEX) - 1;
 erq->flags = 0;

 if (wlandev->hostwep & HOSTWEP_PRIVACYINVOKED)
  erq->flags |= IW_ENCODE_ENABLED;
 else
  erq->flags |= IW_ENCODE_DISABLED;

 if (wlandev->hostwep & HOSTWEP_EXCLUDEUNENCRYPTED)
  erq->flags |= IW_ENCODE_RESTRICTED;
 else
  erq->flags |= IW_ENCODE_OPEN;

 i = (erq->flags & IW_ENCODE_INDEX) - 1;

 if (i == -1)
  i = wlandev->hostwep & HOSTWEP_DEFAULTKEY_MASK;

 if ((i < 0) || (i >= NUM_WEPKEYS)) {
  err = -EINVAL;
  goto exit;
 }

 erq->flags |= i + 1;


 erq->length = wlandev->wep_keylens[i];
 memcpy(key, wlandev->wep_keys[i], erq->length);

exit:
 return err;
}
