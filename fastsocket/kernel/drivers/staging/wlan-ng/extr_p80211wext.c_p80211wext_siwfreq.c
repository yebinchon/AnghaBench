
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int wlandevice_t ;
typedef int u8 ;
struct iw_request_info {int dummy; } ;
struct iw_freq {scalar_t__ e; int m; } ;
struct TYPE_7__ {int data; } ;
struct TYPE_8__ {TYPE_1__ mibattribute; int msgcode; } ;
typedef TYPE_2__ p80211msg_dot11req_mibset_t ;
struct TYPE_9__ {int data; int status; int did; } ;
typedef TYPE_3__ p80211item_uint32_t ;
struct TYPE_10__ {int * ml_priv; } ;
typedef TYPE_4__ netdevice_t ;
typedef int mibitem ;


 int DIDmib_dot11phy_dot11PhyDSSSTable_dot11CurrentChannel ;
 int DIDmsg_dot11req_mibset ;
 int EFAULT ;
 int EOPNOTSUPP ;
 int P80211ENUM_msgitem_status_data_ok ;
 int memcpy (int *,TYPE_3__*,int) ;
 int p80211_mhz_to_channel (int) ;
 int p80211req_dorequest (int *,int *) ;
 int wlan_wext_write ;

__attribute__((used)) static int p80211wext_siwfreq(netdevice_t *dev,
         struct iw_request_info *info,
         struct iw_freq *freq, char *extra)
{
 wlandevice_t *wlandev = dev->ml_priv;
 p80211item_uint32_t mibitem;
 p80211msg_dot11req_mibset_t msg;
 int result;
 int err = 0;

 if (!wlan_wext_write) {
  err = (-EOPNOTSUPP);
  goto exit;
 }

 msg.msgcode = DIDmsg_dot11req_mibset;
 mibitem.did = DIDmib_dot11phy_dot11PhyDSSSTable_dot11CurrentChannel;
 mibitem.status = P80211ENUM_msgitem_status_data_ok;

 if ((freq->e == 0) && (freq->m <= 1000))
  mibitem.data = freq->m;
 else
  mibitem.data = p80211_mhz_to_channel(freq->m);

 memcpy(&msg.mibattribute.data, &mibitem, sizeof(mibitem));
 result = p80211req_dorequest(wlandev, (u8 *) & msg);

 if (result) {
  err = -EFAULT;
  goto exit;
 }

exit:
 return err;
}
