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
typedef  int u8_t ;
typedef  int u32_t ;
typedef  int u16_t ;
struct TYPE_5__ {scalar_t__ cmDisallowSsidLength; scalar_t__ ssidLen; scalar_t__ wepStatus; scalar_t__ EnableHT; int /*<<< orphan*/  bssid; int /*<<< orphan*/  authMode; int /*<<< orphan*/  cmDisallowSsid; int /*<<< orphan*/  ssid; scalar_t__ oppositeCount; } ;
struct TYPE_6__ {int apBitmap; int staAgingTimeSec; int staProbingTimeSec; int* ssidLen; char** ssid; scalar_t__* encryMode; int* capab; scalar_t__* wlanType; int vapNumber; int /*<<< orphan*/ * authAlgo; scalar_t__* bcmcTail; scalar_t__* bcmcHead; scalar_t__* hideSsid; scalar_t__ beaconCounter; } ;
struct TYPE_7__ {int bRateBasic; int gRateBasic; int ssidLen; char* ssid; scalar_t__ encryMode; int /*<<< orphan*/  authMode; int /*<<< orphan*/  bgMode; } ;
struct TYPE_8__ {int wlanMode; int bRate; int gRate; int bRateBasic; int gRateBasic; int CurrentTxRateKbps; int CurrentRxRateKbps; int /*<<< orphan*/  state; TYPE_1__ sta; int /*<<< orphan*/  (* zfcbConnectNotify ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  frequency; TYPE_2__ ap; TYPE_3__ ws; int /*<<< orphan*/  bgMode; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZM_AUTH_MODE_WPA2PSK ; 
 scalar_t__ ZM_ENCRYPTION_TKIP ; 
 int /*<<< orphan*/  ZM_HAL_80211_MODE_IBSS_GENERAL ; 
 int /*<<< orphan*/  ZM_HAL_80211_MODE_IBSS_WPA2PSK ; 
 int /*<<< orphan*/  ZM_HAL_80211_MODE_STA ; 
 int ZM_HP_CAP_11N_ONE_TX_STREAM ; 
 int /*<<< orphan*/  ZM_LV_0 ; 
 int ZM_MAX_AP_SUPPORT ; 
 int ZM_MODE_AP ; 
#define  ZM_MODE_IBSS 130 
#define  ZM_MODE_INFRASTRUCTURE 129 
#define  ZM_MODE_PSEUDO 128 
 int ZM_MODE_UNKNOWN ; 
 int /*<<< orphan*/  ZM_SCAN_MGR_SCAN_EXTERNAL ; 
 int /*<<< orphan*/  ZM_SCAN_MGR_SCAN_INTERNAL ; 
 int /*<<< orphan*/  ZM_STATUS_MEDIA_CONNECT ; 
 int /*<<< orphan*/  ZM_STA_STATE_CONNECTED ; 
 int /*<<< orphan*/  ZM_WLAN_STATE_ENABLED ; 
 scalar_t__ ZM_WLAN_TYPE_PURE_B ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__* wd ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 

u16_t FUNC25(zdev_t *dev)
{
	u8_t bssid[6] = {0x0, 0x0, 0x0, 0x0, 0x0, 0x0};
	u16_t i;

	FUNC23(dev);

	FUNC21();

	if (wd->wlanMode == ZM_MODE_UNKNOWN) {
		FUNC19("Unknown Mode...Skip...");
		return 0;
	}

	if (wd->wlanMode == ZM_MODE_AP) {
		u16_t vapId;

		vapId = FUNC18(dev);

		if (vapId == 0xffff) {
			/* AP mode */
			FUNC2(dev);

			/* AP default parameters */
			wd->bRate = 0xf;
			wd->gRate = 0xff;
			wd->bRateBasic = 0xf;
			wd->gRateBasic = 0x0;
			/* wd->beaconInterval = 100; */
			wd->ap.apBitmap = 1;
			wd->ap.beaconCounter = 0;
			/* wd->ap.vapNumber = 1; //mark by ygwei for Vap */

			wd->ap.hideSsid[0] = 0;
			wd->ap.staAgingTimeSec = 10*60;
			wd->ap.staProbingTimeSec = 60;

			for (i = 0; i < ZM_MAX_AP_SUPPORT; i++)
				wd->ap.bcmcHead[i] = wd->ap.bcmcTail[i] = 0;

			/* wd->ap.uniHead = wd->ap.uniTail = 0; */

			/* load AP parameters */
			wd->bRateBasic = wd->ws.bRateBasic;
			wd->gRateBasic = wd->ws.gRateBasic;
			wd->bgMode = wd->ws.bgMode;
			if ((wd->ws.ssidLen <= 32) && (wd->ws.ssidLen != 0)) {
				wd->ap.ssidLen[0] = wd->ws.ssidLen;
				for (i = 0; i < wd->ws.ssidLen; i++)
					wd->ap.ssid[0][i] = wd->ws.ssid[i];
				wd->ws.ssidLen = 0; /* Reset Wrapper Variable */
			}

			if (wd->ap.encryMode[0] == 0)
				wd->ap.capab[0] = 0x001;
			else
				wd->ap.capab[0] = 0x011;
			/* set Short Slot Time bit if not 11b */
			if (wd->ap.wlanType[0] != ZM_WLAN_TYPE_PURE_B)
				wd->ap.capab[0] |= 0x400;

			/* wd->ap.vapNumber = 1; //mark by ygwei for Vap Test */
		} else {
#if 0
			/* VAP Test Code */
			wd->ap.apBitmap = 0x3;
			wd->ap.capab[1] = 0x401;
			wd->ap.ssidLen[1] = 4;
			wd->ap.ssid[1][0] = 'v';
			wd->ap.ssid[1][1] = 'a';
			wd->ap.ssid[1][2] = 'p';
			wd->ap.ssid[1][3] = '1';
			wd->ap.authAlgo[1] = wd->ws.authMode;
			wd->ap.encryMode[1] = wd->ws.encryMode;
			wd->ap.vapNumber = 2;
#else
			/* VAP Test Code */
			wd->ap.apBitmap = 0x1 | (0x01 << (vapId+1));

			if ((wd->ws.ssidLen <= 32) && (wd->ws.ssidLen != 0)) {
				wd->ap.ssidLen[vapId+1] = wd->ws.ssidLen;
				for (i = 0; i < wd->ws.ssidLen; i++)
					wd->ap.ssid[vapId+1][i] =
								wd->ws.ssid[i];
				wd->ws.ssidLen = 0; /* Reset Wrapper Variable */
			}

			if (wd->ap.encryMode[vapId+1] == 0)
				wd->ap.capab[vapId+1] = 0x401;
			else
				wd->ap.capab[vapId+1] = 0x411;

			wd->ap.authAlgo[vapId+1] = wd->ws.authMode;
			wd->ap.encryMode[vapId+1] = wd->ws.encryMode;

			/* Need to be modified when VAP is used */
			/* wd->ap.vapNumber = 2; */
#endif
		}

		wd->ap.vapNumber++;

		FUNC6(dev, wd->frequency);

		FUNC11(dev);

		/* Disable protection mode */
		FUNC4(dev, 0);

		FUNC3(dev);
	} else { /*if (wd->wlanMode == ZM_MODE_AP) */

		FUNC13(dev, ZM_SCAN_MGR_SCAN_INTERNAL);
		FUNC13(dev, ZM_SCAN_MGR_SCAN_EXTERNAL);

		FUNC22(dev);
		wd->sta.oppositeCount = 0;    /* reset opposite count */
		/* wd->sta.bAutoReconnect = wd->sta.bAutoReconnectEnabled; */
		/* wd->sta.scanWithSSID = 0; */
		FUNC14(dev);
		FUNC24(dev);

		FUNC15(dev, 0);

		if ((wd->sta.cmDisallowSsidLength != 0) &&
		(wd->sta.ssidLen == wd->sta.cmDisallowSsidLength) &&
		(FUNC12(wd->sta.ssid, wd->sta.cmDisallowSsid,
		wd->sta.ssidLen)) &&
		(wd->sta.wepStatus == ZM_ENCRYPTION_TKIP)) {/*countermeasures*/
			FUNC19("countermeasures disallow association");
		} else {
			switch (wd->wlanMode) {
			case ZM_MODE_IBSS:
				/* some registers may be set here */
				if (wd->sta.authMode == ZM_AUTH_MODE_WPA2PSK)
					FUNC8(dev,
					ZM_HAL_80211_MODE_IBSS_WPA2PSK);
				else
					FUNC8(dev,
					ZM_HAL_80211_MODE_IBSS_GENERAL);

				FUNC20(ZM_LV_0, "ZM_MODE_IBSS");
				FUNC9(dev);
				break;

			case ZM_MODE_INFRASTRUCTURE:
				/* some registers may be set here */
				FUNC8(dev, ZM_HAL_80211_MODE_STA);

				FUNC10(dev);
				break;

			case ZM_MODE_PSEUDO:
				/* some registers may be set here */
				FUNC8(dev, ZM_HAL_80211_MODE_STA);

				FUNC16(dev, bssid);
				FUNC6(dev, wd->frequency);
				break;

			default:
				break;
			}
		}

	}


	/* if ((wd->wlanMode != ZM_MODE_INFRASTRUCTURE) &&
		(wd->wlanMode != ZM_MODE_AP))
	*/
	if (wd->wlanMode == ZM_MODE_PSEUDO) {
		/* Reset Wlan status */
		FUNC17(dev);

		if (wd->zfcbConnectNotify != NULL)
			wd->zfcbConnectNotify(dev, ZM_STATUS_MEDIA_CONNECT,
								wd->sta.bssid);
		FUNC5(dev, ZM_STA_STATE_CONNECTED);
	}


	if (wd->wlanMode == ZM_MODE_AP) {
		if (wd->zfcbConnectNotify != NULL)
			wd->zfcbConnectNotify(dev, ZM_STATUS_MEDIA_CONNECT,
								wd->sta.bssid);
		/* zfChangeAdapterState(dev, ZM_STA_STATE_CONNECTED); */
	}

	/* Assign default Tx Rate */
	if (wd->sta.EnableHT) {
		u32_t oneTxStreamCap;
		oneTxStreamCap = (FUNC7(dev) &
						ZM_HP_CAP_11N_ONE_TX_STREAM);
		if (oneTxStreamCap)
			wd->CurrentTxRateKbps = 135000;
		else
			wd->CurrentTxRateKbps = 270000;
		wd->CurrentRxRateKbps = 270000;
	} else {
		wd->CurrentTxRateKbps = 54000;
		wd->CurrentRxRateKbps = 54000;
	}

	wd->state = ZM_WLAN_STATE_ENABLED;

	return 0;
}