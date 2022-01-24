#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  ssid; int /*<<< orphan*/  macmode; int /*<<< orphan*/ * priv; } ;
typedef  TYPE_4__ wlandevice_t ;
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
typedef  int /*<<< orphan*/  p80211pstrd_t ;
struct TYPE_9__ {int /*<<< orphan*/  data; int /*<<< orphan*/  status; } ;
struct TYPE_8__ {int /*<<< orphan*/  data; } ;
struct TYPE_7__ {scalar_t__ data; } ;
struct TYPE_11__ {TYPE_3__ resultcode; TYPE_2__ ssid; TYPE_1__ authtype; } ;
typedef  TYPE_5__ p80211msg_lnxreq_autojoin_t ;
typedef  int /*<<< orphan*/  hfa384x_t ;
typedef  int /*<<< orphan*/  hfa384x_bytestr_t ;

/* Variables and functions */
 int HFA384x_CNFAUTHENTICATION_OPENSYSTEM ; 
 int HFA384x_CNFAUTHENTICATION_SHAREDKEY ; 
 int HFA384x_PORTTYPE_BSS ; 
 int /*<<< orphan*/  HFA384x_RID_CNFAUTHENTICATION ; 
 int /*<<< orphan*/  HFA384x_RID_CNFDESIREDSSID ; 
 int /*<<< orphan*/  HFA384x_RID_CNFDESIREDSSID_LEN ; 
 int /*<<< orphan*/  HFA384x_RID_CNFPORTTYPE ; 
 int /*<<< orphan*/  HFA384x_RID_TXRATECNTL ; 
 scalar_t__ P80211ENUM_authalg_sharedkey ; 
 int /*<<< orphan*/  P80211ENUM_msgitem_status_data_ok ; 
 int /*<<< orphan*/  P80211ENUM_resultcode_success ; 
 int /*<<< orphan*/  WLAN_MACMODE_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC7(wlandevice_t *wlandev, void *msgp)
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

	/* Set the SSID */
	FUNC4(&wlandev->ssid, &msg->ssid.data, sizeof(msg->ssid.data));

	/* Disable the Port */
	FUNC0(hw, 0);

	/*** STATION ***/
	/* Set the TxRates */
	FUNC3(hw, HFA384x_RID_TXRATECNTL, 0x000f);

	/* Set the auth type */
	if (msg->authtype.data == P80211ENUM_authalg_sharedkey)
		reg = HFA384x_CNFAUTHENTICATION_SHAREDKEY;
	else
		reg = HFA384x_CNFAUTHENTICATION_OPENSYSTEM;

	FUNC3(hw, HFA384x_RID_CNFAUTHENTICATION, reg);

	/* Set the ssid */
	FUNC5(bytebuf, 0, 256);
	pstr = (p80211pstrd_t *) & (msg->ssid.data);
	FUNC6(p2bytestr, pstr);
	result = FUNC2(hw, HFA384x_RID_CNFDESIREDSSID,
					bytebuf,
					HFA384x_RID_CNFDESIREDSSID_LEN);
	port_type = HFA384x_PORTTYPE_BSS;
	/* Set the PortType */
	FUNC3(hw, HFA384x_RID_CNFPORTTYPE, port_type);

	/* Enable the Port */
	FUNC1(hw, 0);

	/* Set the resultcode */
	msg->resultcode.status = P80211ENUM_msgitem_status_data_ok;
	msg->resultcode.data = P80211ENUM_resultcode_success;

	return result;
}