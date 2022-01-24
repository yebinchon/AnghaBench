#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zdev_t ;
typedef  scalar_t__ u8_t ;
typedef  int /*<<< orphan*/  u16_t ;
struct zsOppositeInfo {int dummy; } ;
struct TYPE_3__ {scalar_t__ currentAuthMode; scalar_t__ rifsState; scalar_t__ SWEncryptEnable; scalar_t__ oppositeInfo; scalar_t__ bSafeMode; scalar_t__ osRxFilter; scalar_t__ rifsCount; scalar_t__ rifsLikeFrameCnt; scalar_t__ leapEnabled; scalar_t__ connectTimeoutCount; scalar_t__ ibssWpa2Psk; scalar_t__ ibssBssIsCreator; scalar_t__ cmMicFailureCount; int /*<<< orphan*/  wpaState; int /*<<< orphan*/  wepStatus; int /*<<< orphan*/  encryMode; scalar_t__ InternalScanReq; scalar_t__ bAutoReconnect; scalar_t__ cmDisallowSsidLength; int /*<<< orphan*/  connectByReasso; int /*<<< orphan*/  connectState; int /*<<< orphan*/  bssid; } ;
struct TYPE_4__ {scalar_t__ wlanMode; TYPE_1__ sta; int /*<<< orphan*/  (* zfcbConnectNotify ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ ZM_AUTH_MODE_WPA2 ; 
 int /*<<< orphan*/  ZM_ENCRYPTION_WEP_DISABLED ; 
 int /*<<< orphan*/  ZM_EVENT_CM_BLOCK_TIMER ; 
 int /*<<< orphan*/  ZM_EVENT_CM_DISCONNECT ; 
 int /*<<< orphan*/  ZM_EVENT_IBSS_MONITOR ; 
 int ZM_MAX_OPPOSITE_COUNT ; 
 scalar_t__ ZM_MODE_INFRASTRUCTURE ; 
 scalar_t__ ZM_MODE_PSEUDO ; 
 int /*<<< orphan*/  ZM_NO_WEP ; 
 scalar_t__ ZM_RIFS_STATE_DETECTED ; 
 scalar_t__ ZM_RIFS_STATE_DETECTING ; 
 int /*<<< orphan*/  ZM_SCAN_MGR_SCAN_EXTERNAL ; 
 int /*<<< orphan*/  ZM_SCAN_MGR_SCAN_INTERNAL ; 
 int /*<<< orphan*/  ZM_STATUS_MEDIA_CONNECTION_RESET ; 
 int /*<<< orphan*/  ZM_STATUS_MEDIA_RESET ; 
 int /*<<< orphan*/  ZM_STA_CONN_STATE_NONE ; 
 int /*<<< orphan*/  ZM_STA_STATE_DISCONNECT ; 
 int /*<<< orphan*/  ZM_STA_WPA_STATE_INIT ; 
 int /*<<< orphan*/  ZM_WLAN_FRAME_TYPE_DEAUTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* wd ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 

u16_t FUNC21(zdev_t *dev)
{
	u8_t isConnected;
	FUNC19(dev);

	FUNC17();

	FUNC16("zfWlanReset");

	isConnected = FUNC12(dev);

	/* if ( wd->wlanMode != ZM_MODE_AP ) */
	{
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
	}

	FUNC4(dev, ZM_STA_STATE_DISCONNECT);
	FUNC8(dev);

	if (isConnected) {
		/* zfiWlanDisable(dev); */
		if (wd->zfcbConnectNotify != NULL)
			wd->zfcbConnectNotify(dev,
			ZM_STATUS_MEDIA_CONNECTION_RESET, wd->sta.bssid);
	} else {
		if (wd->zfcbConnectNotify != NULL)
			wd->zfcbConnectNotify(dev, ZM_STATUS_MEDIA_RESET,
								wd->sta.bssid);
	}

	/* stop beacon */
	FUNC6(dev);

	/* Free buffer in defragment list*/
	FUNC3(dev, 1);

	/* Flush VTxQ and MmQ */
	FUNC5(dev);

#ifdef ZM_ENABLE_AGGREGATION
	/* add by honda */
	zfAggRxFreeBuf(dev, 0);  /* 1 for release structure memory */
	/* end of add by honda */
#endif

	FUNC13(dev, 1);

	FUNC18(dev);

	FUNC14(dev, ZM_EVENT_IBSS_MONITOR);
	FUNC14(dev, ZM_EVENT_CM_BLOCK_TIMER);
	FUNC14(dev, ZM_EVENT_CM_DISCONNECT);

	wd->sta.connectState = ZM_STA_CONN_STATE_NONE;
	wd->sta.connectByReasso = FALSE;
	wd->sta.cmDisallowSsidLength = 0;
	wd->sta.bAutoReconnect = 0;
	wd->sta.InternalScanReq = 0;
	wd->sta.encryMode = ZM_NO_WEP;
	wd->sta.wepStatus = ZM_ENCRYPTION_WEP_DISABLED;
	wd->sta.wpaState = ZM_STA_WPA_STATE_INIT;
	wd->sta.cmMicFailureCount = 0;
	wd->sta.ibssBssIsCreator = 0;
#ifdef ZM_ENABLE_IBSS_WPA2PSK
	wd->sta.ibssWpa2Psk = 0;
#endif
	/* reset connect timeout counter */
	wd->sta.connectTimeoutCount = 0;

	/* reset leap enable variable */
	wd->sta.leapEnabled = 0;

	/* Reset the RIFS Status / RIFS-like frame count / RIFS count */
	if (wd->sta.rifsState == ZM_RIFS_STATE_DETECTED)
		FUNC7(dev);
	wd->sta.rifsState = ZM_RIFS_STATE_DETECTING;
	wd->sta.rifsLikeFrameCnt = 0;
	wd->sta.rifsCount = 0;

	wd->sta.osRxFilter = 0;
	wd->sta.bSafeMode = 0;

	/* 	Clear the information for the peer
		stations of IBSS or AP of Station mode
	*/
	FUNC15((u8_t *)wd->sta.oppositeInfo,
			sizeof(struct zsOppositeInfo) * ZM_MAX_OPPOSITE_COUNT);

	FUNC20(dev);

	FUNC9(dev, ZM_SCAN_MGR_SCAN_INTERNAL);
	FUNC9(dev, ZM_SCAN_MGR_SCAN_EXTERNAL);

	/* Turn off Software WEP/TKIP */
	if (wd->sta.SWEncryptEnable != 0) {
		FUNC16("Disable software encryption");
		FUNC11(dev);
	}

	/* 	Improve WEP/TKIP performace with HT AP,
		detail information please look bug#32495
	*/
	/* zfHpSetTTSIFSTime(dev, 0x8); */

	/* Keep Pseudo mode */
	if (wd->wlanMode != ZM_MODE_PSEUDO)
		wd->wlanMode = ZM_MODE_INFRASTRUCTURE;

	return 0;
}