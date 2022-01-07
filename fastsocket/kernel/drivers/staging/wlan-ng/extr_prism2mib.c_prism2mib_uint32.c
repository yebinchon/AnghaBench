
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int wlandevice_t ;
typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
typedef int p80211msg_dot11req_mibset_t ;
struct TYPE_3__ {int parm1; } ;
typedef TYPE_1__ mibrec_t ;
typedef int hfa384x_t ;


 int MIB_TMP_MAXLEN ;
 int hfa384x_drvr_getconfig16 (int *,int ,int *) ;
 int hfa384x_drvr_setconfig16 (int *,int ,int ) ;

__attribute__((used)) static int prism2mib_uint32(mibrec_t *mib,
       int isget,
       wlandevice_t *wlandev,
       hfa384x_t *hw,
       p80211msg_dot11req_mibset_t *msg, void *data)
{
 int result;
 u32 *uint32 = (u32 *) data;
 u8 bytebuf[MIB_TMP_MAXLEN];
 u16 *wordbuf = (u16 *) bytebuf;

 if (isget) {
  result = hfa384x_drvr_getconfig16(hw, mib->parm1, wordbuf);
  *uint32 = *wordbuf;
 } else {
  *wordbuf = *uint32;
  result = hfa384x_drvr_setconfig16(hw, mib->parm1, *wordbuf);
 }

 return result;
}
