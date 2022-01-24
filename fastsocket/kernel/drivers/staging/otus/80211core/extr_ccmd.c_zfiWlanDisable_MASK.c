#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zdev_t ;
typedef  scalar_t__ u8_t ;
typedef  size_t u16_t ;
struct zsOppositeInfo {int dummy; } ;
struct TYPE_7__ {scalar_t__ currentAuthMode; scalar_t__ rifsState; scalar_t__ SWEncryptEnable; scalar_t__ oppositeInfo; int /*<<< orphan*/  bssid; scalar_t__ bSafeMode; scalar_t__ osRxFilter; scalar_t__ rifsCount; scalar_t__ rifsLikeFrameCnt; scalar_t__ leapEnabled; int /*<<< orphan*/  connectState; scalar_t__ connectTimeoutCount; int /*<<< orphan*/  wpaState; scalar_t__ ibssWpa2Psk; scalar_t__ ibssBssIsCreator; } ;
struct TYPE_6__ {int /*<<< orphan*/  vapNumber; TYPE_1__* staTable; } ;
struct TYPE_8__ {scalar_t__ wlanMode; TYPE_3__ sta; TYPE_2__ ap; int /*<<< orphan*/  (* zfcbConnectNotify ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  state; } ;
struct TYPE_5__ {int valid; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 scalar_t__ ZM_AUTH_MODE_WPA2 ; 
 int /*<<< orphan*/  ZM_EVENT_IBSS_MONITOR ; 
 int /*<<< orphan*/  ZM_LV_1 ; 
 int ZM_MAX_OPPOSITE_COUNT ; 
 size_t ZM_MAX_STA_SUPPORT ; 
 scalar_t__ ZM_MODE_AP ; 
 scalar_t__ ZM_MODE_IBSS ; 
 scalar_t__ ZM_MODE_INFRASTRUCTURE ; 
 scalar_t__ ZM_RIFS_STATE_DETECTED ; 
 scalar_t__ ZM_RIFS_STATE_DETECTING ; 
 int /*<<< orphan*/  ZM_STATUS_MEDIA_CONNECTION_DISABLED ; 
 int /*<<< orphan*/  ZM_STATUS_MEDIA_DISABLED ; 
 int /*<<< orphan*/  ZM_STA_CONN_STATE_NONE ; 
 int /*<<< orphan*/  ZM_STA_STATE_DISCONNECT ; 
 int /*<<< orphan*/  ZM_STA_WPA_STATE_INIT ; 
 int /*<<< orphan*/  ZM_WLAN_FRAME_TYPE_DEAUTH ; 
 int /*<<< orphan*/  ZM_WLAN_STATE_DISABLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__* wd ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 

u16_t FUNC22(zdev_t *dev, u8_t ResetKeyCache)
{
	u16_t  i;
	u8_t isConnected;

	FUNC20(dev);

#ifdef ZM_ENABLE_IBSS_WPA2PSK
	zmw_declare_for_critical_section();
#endif
	wd->state = ZM_WLAN_STATE_DISABLED;

	FUNC17(ZM_LV_1, "Disable Wlan");

	if (wd->wlanMode != ZM_MODE_AP) {
		isConnected = FUNC13(dev);

		if ((wd->wlanMode == ZM_MODE_INFRASTRUCTURE) &&
			(wd->sta.currentAuthMode != ZM_AUTH_MODE_WPA2)) {
			/* send deauthentication frame */
			if (isConnected) {
				/* zfiWlanDeauth(dev, NULL, 0); */
				FUNC10(dev, ZM_WLAN_FRAME_TYPE_DEAUTH,
						wd->sta.bssid, 3, 0, 0);
				/* zmw_debug_msg0("send a Deauth frame!"); */
			}
		}

		/* Remove all the connected peer stations */
		if (wd->wlanMode == ZM_MODE_IBSS) {
			wd->sta.ibssBssIsCreator = 0;
			FUNC14(dev, ZM_EVENT_IBSS_MONITOR);
			FUNC12(dev, 1);
		}

#ifdef ZM_ENABLE_IBSS_WPA2PSK
		zmw_enter_critical_section(dev);
		wd->sta.ibssWpa2Psk = 0;
		zmw_leave_critical_section(dev);
#endif

		wd->sta.wpaState = ZM_STA_WPA_STATE_INIT;

		/* reset connect timeout counter */
		wd->sta.connectTimeoutCount = 0;

		/* reset connectState to None */
		wd->sta.connectState = ZM_STA_CONN_STATE_NONE;

		/* reset leap enable variable */
		wd->sta.leapEnabled = 0;

		/* Disable the RIFS Status/RIFS-like frame count/RIFS count */
		if (wd->sta.rifsState == ZM_RIFS_STATE_DETECTED)
			FUNC8(dev);
		wd->sta.rifsState = ZM_RIFS_STATE_DETECTING;
		wd->sta.rifsLikeFrameCnt = 0;
		wd->sta.rifsCount = 0;

		wd->sta.osRxFilter = 0;
		wd->sta.bSafeMode = 0;

		FUNC5(dev, ZM_STA_STATE_DISCONNECT);
		if (ResetKeyCache)
			FUNC9(dev);

		if (isConnected) {
			if (wd->zfcbConnectNotify != NULL)
				wd->zfcbConnectNotify(dev,
				ZM_STATUS_MEDIA_CONNECTION_DISABLED,
				wd->sta.bssid);
		} else {
			if (wd->zfcbConnectNotify != NULL)
				wd->zfcbConnectNotify(dev,
				ZM_STATUS_MEDIA_DISABLED, wd->sta.bssid);
		}
	} else { /* if (wd->wlanMode == ZM_MODE_AP) */
		for (i = 0; i < ZM_MAX_STA_SUPPORT; i++) {
			/* send deauthentication frame */
			if (wd->ap.staTable[i].valid == 1) {
				/* Reason : Sending station is leaving */
				FUNC10(dev, ZM_WLAN_FRAME_TYPE_DEAUTH,
				wd->ap.staTable[i].addr, 3, 0, 0);
			}
		}

		if (ResetKeyCache)
			FUNC9(dev);

		wd->ap.vapNumber--;
	}

	/* stop beacon */
	FUNC7(dev);

	/* Flush VTxQ and MmQ */
	FUNC6(dev);
	/* Flush AP PS queues */
	FUNC4(dev);
	/* Free buffer in defragment list*/
	FUNC3(dev, 1);

#ifdef ZM_ENABLE_AGGREGATION
	/* add by honda */
	zfAggRxFreeBuf(dev, 0);  /* 1 for release structure memory */
	/* end of add by honda */
#endif

	/* Clear the information for the peer stations
	of IBSS or AP of Station mode
	*/
	FUNC15((u8_t *)wd->sta.oppositeInfo,
			sizeof(struct zsOppositeInfo) * ZM_MAX_OPPOSITE_COUNT);

	/* Turn off Software WEP/TKIP */
	if (wd->sta.SWEncryptEnable != 0) {
		FUNC16("Disable software encryption");
		FUNC11(dev);
	}

	/* Improve WEP/TKIP performace with HT AP,
	detail information please look bug#32495 */
	/* zfHpSetTTSIFSTime(dev, 0x8); */

	return 0;
}