
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int hostwep; } ;
typedef TYPE_3__ wlandevice_t ;
struct TYPE_12__ {int msgcode; } ;
typedef TYPE_4__ p80211msg_t ;
struct TYPE_9__ {int data; } ;
struct TYPE_10__ {int data; } ;
struct TYPE_13__ {TYPE_1__ encrypt; TYPE_2__ decrypt; } ;
typedef TYPE_5__ p80211msg_lnxreq_hostwep_t ;
typedef int p80211msg_dot11req_mibget_t ;





 int HOSTWEP_DECRYPT ;
 int HOSTWEP_ENCRYPT ;
 int P80211ENUM_truth_true ;
 int p80211req_mibset_mibget (TYPE_3__*,int *,int) ;

__attribute__((used)) static void p80211req_handlemsg(wlandevice_t *wlandev, p80211msg_t *msg)
{
 switch (msg->msgcode) {

 case 128:{
   p80211msg_lnxreq_hostwep_t *req =
       (p80211msg_lnxreq_hostwep_t *) msg;
   wlandev->hostwep &=
       ~(HOSTWEP_DECRYPT | HOSTWEP_ENCRYPT);
   if (req->decrypt.data == P80211ENUM_truth_true)
    wlandev->hostwep |= HOSTWEP_DECRYPT;
   if (req->encrypt.data == P80211ENUM_truth_true)
    wlandev->hostwep |= HOSTWEP_ENCRYPT;

   break;
  }
 case 130:
 case 129:{
   int isget = (msg->msgcode == 130);
   p80211msg_dot11req_mibget_t *mib_msg =
       (p80211msg_dot11req_mibget_t *) msg;
   p80211req_mibset_mibget(wlandev, mib_msg, isget);
  }
 default:
  ;
 }

 return;
}
