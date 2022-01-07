
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int hostwep; } ;
typedef TYPE_2__ wlandevice_t ;
typedef int u8 ;
typedef int u32 ;
struct TYPE_11__ {int len; } ;
typedef TYPE_3__ p80211pstrd_t ;
struct TYPE_9__ {scalar_t__ data; } ;
struct TYPE_12__ {TYPE_1__ mibattribute; } ;
typedef TYPE_4__ p80211msg_dot11req_mibget_t ;
struct TYPE_13__ {int did; int * data; } ;
typedef TYPE_5__ p80211itemd_t ;
 int HOSTWEP_DEFAULTKEY_MASK ;
 int HOSTWEP_EXCLUDEUNENCRYPTED ;
 int HOSTWEP_PRIVACYINVOKED ;
 int P80211ENUM_truth_false ;
 int P80211ENUM_truth_true ;
 int wep_change_key (TYPE_2__*,int,int *,int ) ;

__attribute__((used)) static int p80211req_mibset_mibget(wlandevice_t *wlandev,
       p80211msg_dot11req_mibget_t *mib_msg,
       int isget)
{
 p80211itemd_t *mibitem = (p80211itemd_t *) mib_msg->mibattribute.data;
 p80211pstrd_t *pstr = (p80211pstrd_t *) mibitem->data;
 u8 *key = mibitem->data + sizeof(p80211pstrd_t);

 switch (mibitem->did) {
 case 131:{
   if (!isget)
    wep_change_key(wlandev, 0, key, pstr->len);
   break;
  }
 case 130:{
   if (!isget)
    wep_change_key(wlandev, 1, key, pstr->len);
   break;
  }
 case 129:{
   if (!isget)
    wep_change_key(wlandev, 2, key, pstr->len);
   break;
  }
 case 128:{
   if (!isget)
    wep_change_key(wlandev, 3, key, pstr->len);
   break;
  }
 case 132:{
   u32 *data = (u32 *) mibitem->data;

   if (isget) {
    *data =
        wlandev->hostwep & HOSTWEP_DEFAULTKEY_MASK;
   } else {
    wlandev->hostwep &= ~(HOSTWEP_DEFAULTKEY_MASK);

    wlandev->hostwep |=
        (*data & HOSTWEP_DEFAULTKEY_MASK);
   }
   break;
  }
 case 133:{
   u32 *data = (u32 *) mibitem->data;

   if (isget) {
    if (wlandev->hostwep & HOSTWEP_PRIVACYINVOKED)
     *data = P80211ENUM_truth_true;
    else
     *data = P80211ENUM_truth_false;
   } else {
    wlandev->hostwep &= ~(HOSTWEP_PRIVACYINVOKED);
    if (*data == P80211ENUM_truth_true)
     wlandev->hostwep |=
         HOSTWEP_PRIVACYINVOKED;
   }
   break;
  }
 case 134:{
   u32 *data = (u32 *) mibitem->data;

   if (isget) {
    if (wlandev->hostwep &
        HOSTWEP_EXCLUDEUNENCRYPTED)
     *data = P80211ENUM_truth_true;
    else
     *data = P80211ENUM_truth_false;
   } else {
    wlandev->hostwep &=
        ~(HOSTWEP_EXCLUDEUNENCRYPTED);
    if (*data == P80211ENUM_truth_true)
     wlandev->hostwep |=
         HOSTWEP_EXCLUDEUNENCRYPTED;
   }
   break;
  }
 default:
  ;
 }

 return 0;
}
