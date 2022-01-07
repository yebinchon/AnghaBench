
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
struct iw_freq {int e; int m; } ;
struct TYPE_10__ {scalar_t__ data; int did; } ;
struct TYPE_8__ {TYPE_3__ data; } ;
struct TYPE_9__ {TYPE_1__ mibattribute; int msgcode; } ;
typedef TYPE_2__ p80211msg_dot11req_mibset_t ;
typedef TYPE_3__ p80211item_uint32_t ;
struct TYPE_11__ {int * ml_priv; } ;
typedef TYPE_4__ netdevice_t ;
typedef int mibitem ;


 int DIDmib_dot11phy_dot11PhyDSSSTable_dot11CurrentChannel ;
 int DIDmsg_dot11req_mibget ;
 int EFAULT ;
 scalar_t__ NUM_CHANNELS ;
 int memcpy (TYPE_3__*,TYPE_3__*,int) ;
 int p80211_channel_to_mhz (scalar_t__,int ) ;
 int p80211req_dorequest (int *,int *) ;

__attribute__((used)) static int p80211wext_giwfreq(netdevice_t *dev,
         struct iw_request_info *info,
         struct iw_freq *freq, char *extra)
{
 wlandevice_t *wlandev = dev->ml_priv;
 p80211item_uint32_t mibitem;
 p80211msg_dot11req_mibset_t msg;
 int result;
 int err = 0;

 msg.msgcode = DIDmsg_dot11req_mibget;
 mibitem.did = DIDmib_dot11phy_dot11PhyDSSSTable_dot11CurrentChannel;
 memcpy(&msg.mibattribute.data, &mibitem, sizeof(mibitem));
 result = p80211req_dorequest(wlandev, (u8 *) & msg);

 if (result) {
  err = -EFAULT;
  goto exit;
 }

 memcpy(&mibitem, &msg.mibattribute.data, sizeof(mibitem));

 if (mibitem.data > NUM_CHANNELS) {
  err = -EFAULT;
  goto exit;
 }


 freq->e = 1;
 freq->m = p80211_channel_to_mhz(mibitem.data, 0) * 100000;

exit:
 return err;
}
