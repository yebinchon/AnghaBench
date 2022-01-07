
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int wlandevice_t ;
typedef int u8 ;
typedef int p80211pstrd_t ;
typedef int p80211msg_dot11req_mibset_t ;
struct TYPE_3__ {int parm2; int parm1; } ;
typedef TYPE_1__ mibrec_t ;
typedef int hfa384x_t ;


 int MIB_TMP_MAXLEN ;
 int hfa384x_drvr_getconfig (int *,int ,int *,int ) ;
 int hfa384x_drvr_setconfig (int *,int ,int *,int ) ;
 int memset (int *,int ,int ) ;
 int prism2mgmt_bytearea2pstr (int *,int *,int ) ;
 int prism2mgmt_pstr2bytearea (int *,int *) ;

__attribute__((used)) static int prism2mib_bytearea2pstr(mibrec_t *mib,
       int isget,
       wlandevice_t *wlandev,
       hfa384x_t *hw,
       p80211msg_dot11req_mibset_t *msg,
       void *data)
{
 int result;
 p80211pstrd_t *pstr = (p80211pstrd_t *) data;
 u8 bytebuf[MIB_TMP_MAXLEN];

 if (isget) {
  result =
      hfa384x_drvr_getconfig(hw, mib->parm1, bytebuf, mib->parm2);
  prism2mgmt_bytearea2pstr(bytebuf, pstr, mib->parm2);
 } else {
  memset(bytebuf, 0, mib->parm2);
  prism2mgmt_pstr2bytearea(bytebuf, pstr);
  result =
      hfa384x_drvr_setconfig(hw, mib->parm1, bytebuf, mib->parm2);
 }

 return result;
}
