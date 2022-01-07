
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {int * priv; } ;
typedef TYPE_3__ wlandevice_t ;
typedef int u16 ;
struct TYPE_13__ {void* status; scalar_t__ data; } ;
struct TYPE_12__ {scalar_t__ data; void* status; } ;
struct TYPE_15__ {scalar_t__ msgcode; TYPE_2__ mibattribute; TYPE_1__ resultcode; } ;
typedef TYPE_4__ p80211msg_dot11req_mibset_t ;
struct TYPE_16__ {scalar_t__ did; void* status; scalar_t__ data; } ;
typedef TYPE_5__ p80211itemd_t ;
struct TYPE_17__ {scalar_t__ did; int flag; int (* func ) (TYPE_6__*,int,TYPE_3__*,int *,TYPE_4__*,void*) ;} ;
typedef TYPE_6__ mibrec_t ;
typedef int hfa384x_t ;


 scalar_t__ DIDmsg_dot11req_mibget ;
 int F_READ ;
 int F_STA ;
 int F_WRITE ;
 void* P80211ENUM_msgitem_status_data_ok ;
 scalar_t__ P80211ENUM_resultcode_cant_get_writeonly_mib ;
 scalar_t__ P80211ENUM_resultcode_cant_set_readonly_mib ;
 scalar_t__ P80211ENUM_resultcode_implementation_failure ;
 scalar_t__ P80211ENUM_resultcode_not_supported ;
 scalar_t__ P80211ENUM_resultcode_success ;
 TYPE_6__* mibtab ;
 int pr_debug (char*,int) ;
 int stub1 (TYPE_6__*,int,TYPE_3__*,int *,TYPE_4__*,void*) ;

int prism2mgmt_mibset_mibget(wlandevice_t *wlandev, void *msgp)
{
 hfa384x_t *hw = wlandev->priv;
 int result, isget;
 mibrec_t *mib;

 u16 which;

 p80211msg_dot11req_mibset_t *msg = msgp;
 p80211itemd_t *mibitem;

 msg->resultcode.status = P80211ENUM_msgitem_status_data_ok;
 msg->resultcode.data = P80211ENUM_resultcode_success;





 which = F_STA;
 mibitem = (p80211itemd_t *) msg->mibattribute.data;

 for (mib = mibtab; mib->did != 0; mib++)
  if (mib->did == mibitem->did && (mib->flag & which))
   break;

 if (mib->did == 0) {
  msg->resultcode.data = P80211ENUM_resultcode_not_supported;
  goto done;
 }







 isget = (msg->msgcode == DIDmsg_dot11req_mibget);

 if (isget) {
  if (!(mib->flag & F_READ)) {
   msg->resultcode.data =
       P80211ENUM_resultcode_cant_get_writeonly_mib;
   goto done;
  }
 } else {
  if (!(mib->flag & F_WRITE)) {
   msg->resultcode.data =
       P80211ENUM_resultcode_cant_set_readonly_mib;
   goto done;
  }
 }
 result = mib->func(mib, isget, wlandev, hw, msg, (void *)mibitem->data);

 if (msg->resultcode.data == P80211ENUM_resultcode_success) {
  if (result != 0) {
   pr_debug("get/set failure, result=%d\n", result);
   msg->resultcode.data =
       P80211ENUM_resultcode_implementation_failure;
  } else {
   if (isget) {
    msg->mibattribute.status =
        P80211ENUM_msgitem_status_data_ok;
    mibitem->status =
        P80211ENUM_msgitem_status_data_ok;
   }
  }
 }

done:
 return 0;
}
