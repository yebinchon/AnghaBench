
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int wlandevice_t ;
typedef int u8 ;
struct iw_request_info {int dummy; } ;
struct iw_param {int value; scalar_t__ fixed; scalar_t__ disabled; scalar_t__ flags; } ;
struct TYPE_10__ {int data; int did; } ;
struct TYPE_8__ {TYPE_3__ data; } ;
struct TYPE_9__ {TYPE_1__ mibattribute; int msgcode; } ;
typedef TYPE_2__ p80211msg_dot11req_mibset_t ;
typedef TYPE_3__ p80211item_uint32_t ;
struct TYPE_11__ {int * ml_priv; } ;
typedef TYPE_4__ netdevice_t ;
typedef int mibitem ;


 int DIDmib_dot11phy_dot11PhyTxPowerTable_dot11CurrentTxPowerLevel ;
 int DIDmsg_dot11req_mibget ;
 int EFAULT ;
 int memcpy (TYPE_3__*,TYPE_3__*,int) ;
 int p80211req_dorequest (int *,int *) ;

__attribute__((used)) static int p80211wext_giwtxpow(netdevice_t *dev,
          struct iw_request_info *info,
          struct iw_param *rrq, char *extra)
{
 wlandevice_t *wlandev = dev->ml_priv;
 p80211item_uint32_t mibitem;
 p80211msg_dot11req_mibset_t msg;
 int result;
 int err = 0;

 msg.msgcode = DIDmsg_dot11req_mibget;
 mibitem.did =
     DIDmib_dot11phy_dot11PhyTxPowerTable_dot11CurrentTxPowerLevel;

 memcpy(&msg.mibattribute.data, &mibitem, sizeof(mibitem));
 result = p80211req_dorequest(wlandev, (u8 *) & msg);

 if (result) {
  err = -EFAULT;
  goto exit;
 }

 memcpy(&mibitem, &msg.mibattribute.data, sizeof(mibitem));



 rrq->flags = 0;
 rrq->disabled = 0;
 rrq->fixed = 0;
 rrq->value = mibitem.data;

exit:
 return err;
}
