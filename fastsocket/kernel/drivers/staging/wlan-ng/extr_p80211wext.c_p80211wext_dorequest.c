
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int wlandevice_t ;
typedef int u8 ;
typedef void* u32 ;
struct TYPE_5__ {int data; } ;
struct TYPE_6__ {TYPE_1__ mibattribute; int msgcode; } ;
typedef TYPE_2__ p80211msg_dot11req_mibset_t ;
struct TYPE_7__ {void* data; void* did; } ;
typedef TYPE_3__ p80211item_uint32_t ;
typedef int mibitem ;


 int DIDmsg_dot11req_mibset ;
 int memcpy (int *,TYPE_3__*,int) ;
 int p80211req_dorequest (int *,int *) ;

__attribute__((used)) static int p80211wext_dorequest(wlandevice_t *wlandev, u32 did, u32 data)
{
 p80211msg_dot11req_mibset_t msg;
 p80211item_uint32_t mibitem;
 int result;

 msg.msgcode = DIDmsg_dot11req_mibset;
 mibitem.did = did;
 mibitem.data = data;
 memcpy(&msg.mibattribute.data, &mibitem, sizeof(mibitem));
 result = p80211req_dorequest(wlandev, (u8 *) & msg);

 return result;
}
