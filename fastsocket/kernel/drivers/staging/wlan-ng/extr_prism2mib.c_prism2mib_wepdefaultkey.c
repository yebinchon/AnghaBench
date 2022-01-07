
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int wlandevice_t ;
typedef int u8 ;
typedef int u16 ;
struct TYPE_5__ {int len; } ;
typedef TYPE_1__ p80211pstrd_t ;
typedef int p80211msg_dot11req_mibset_t ;
struct TYPE_6__ {int parm1; } ;
typedef TYPE_2__ mibrec_t ;
typedef int hfa384x_t ;


 int HFA384x_RID_CNFWEP128DEFAULTKEY_LEN ;
 int HFA384x_RID_CNFWEPDEFAULTKEY_LEN ;
 int MIB_TMP_MAXLEN ;
 int hfa384x_drvr_setconfig (int *,int ,int *,int ) ;
 int memset (int *,int ,int ) ;
 int prism2mgmt_pstr2bytearea (int *,TYPE_1__*) ;

__attribute__((used)) static int prism2mib_wepdefaultkey(mibrec_t *mib,
       int isget,
       wlandevice_t *wlandev,
       hfa384x_t *hw,
       p80211msg_dot11req_mibset_t *msg,
       void *data)
{
 int result;
 p80211pstrd_t *pstr = (p80211pstrd_t *) data;
 u8 bytebuf[MIB_TMP_MAXLEN];
 u16 len;

 if (isget) {
  result = 0;
 } else {
  len = (pstr->len > 5) ? HFA384x_RID_CNFWEP128DEFAULTKEY_LEN :
      HFA384x_RID_CNFWEPDEFAULTKEY_LEN;
  memset(bytebuf, 0, len);
  prism2mgmt_pstr2bytearea(bytebuf, pstr);
  result = hfa384x_drvr_setconfig(hw, mib->parm1, bytebuf, len);
 }

 return result;
}
