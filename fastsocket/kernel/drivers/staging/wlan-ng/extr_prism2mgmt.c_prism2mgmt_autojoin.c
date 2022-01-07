
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int ssid; int macmode; int * priv; } ;
typedef TYPE_4__ wlandevice_t ;
typedef int u8 ;
typedef int u16 ;
typedef int p80211pstrd_t ;
struct TYPE_9__ {int data; int status; } ;
struct TYPE_8__ {int data; } ;
struct TYPE_7__ {scalar_t__ data; } ;
struct TYPE_11__ {TYPE_3__ resultcode; TYPE_2__ ssid; TYPE_1__ authtype; } ;
typedef TYPE_5__ p80211msg_lnxreq_autojoin_t ;
typedef int hfa384x_t ;
typedef int hfa384x_bytestr_t ;


 int HFA384x_CNFAUTHENTICATION_OPENSYSTEM ;
 int HFA384x_CNFAUTHENTICATION_SHAREDKEY ;
 int HFA384x_PORTTYPE_BSS ;
 int HFA384x_RID_CNFAUTHENTICATION ;
 int HFA384x_RID_CNFDESIREDSSID ;
 int HFA384x_RID_CNFDESIREDSSID_LEN ;
 int HFA384x_RID_CNFPORTTYPE ;
 int HFA384x_RID_TXRATECNTL ;
 scalar_t__ P80211ENUM_authalg_sharedkey ;
 int P80211ENUM_msgitem_status_data_ok ;
 int P80211ENUM_resultcode_success ;
 int WLAN_MACMODE_NONE ;
 int hfa384x_drvr_disable (int *,int ) ;
 int hfa384x_drvr_enable (int *,int ) ;
 int hfa384x_drvr_setconfig (int *,int ,int *,int ) ;
 int hfa384x_drvr_setconfig16 (int *,int ,int) ;
 int memcpy (int *,int *,int) ;
 int memset (int *,int ,int) ;
 int prism2mgmt_pstr2bytestr (int *,int *) ;

int prism2mgmt_autojoin(wlandevice_t *wlandev, void *msgp)
{
 hfa384x_t *hw = wlandev->priv;
 int result = 0;
 u16 reg;
 u16 port_type;
 p80211msg_lnxreq_autojoin_t *msg = msgp;
 p80211pstrd_t *pstr;
 u8 bytebuf[256];
 hfa384x_bytestr_t *p2bytestr = (hfa384x_bytestr_t *) bytebuf;

 wlandev->macmode = WLAN_MACMODE_NONE;


 memcpy(&wlandev->ssid, &msg->ssid.data, sizeof(msg->ssid.data));


 hfa384x_drvr_disable(hw, 0);



 hfa384x_drvr_setconfig16(hw, HFA384x_RID_TXRATECNTL, 0x000f);


 if (msg->authtype.data == P80211ENUM_authalg_sharedkey)
  reg = HFA384x_CNFAUTHENTICATION_SHAREDKEY;
 else
  reg = HFA384x_CNFAUTHENTICATION_OPENSYSTEM;

 hfa384x_drvr_setconfig16(hw, HFA384x_RID_CNFAUTHENTICATION, reg);


 memset(bytebuf, 0, 256);
 pstr = (p80211pstrd_t *) & (msg->ssid.data);
 prism2mgmt_pstr2bytestr(p2bytestr, pstr);
 result = hfa384x_drvr_setconfig(hw, HFA384x_RID_CNFDESIREDSSID,
     bytebuf,
     HFA384x_RID_CNFDESIREDSSID_LEN);
 port_type = HFA384x_PORTTYPE_BSS;

 hfa384x_drvr_setconfig16(hw, HFA384x_RID_CNFPORTTYPE, port_type);


 hfa384x_drvr_enable(hw, 0);


 msg->resultcode.status = P80211ENUM_msgitem_status_data_ok;
 msg->resultcode.data = P80211ENUM_resultcode_success;

 return result;
}
