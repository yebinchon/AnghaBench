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
typedef  int /*<<< orphan*/  zbuf_t ;
typedef  int /*<<< orphan*/  u8_t ;
typedef  int /*<<< orphan*/  u16_t ;
struct zsWlanBeaconFrameHeader {int dummy; } ;
struct zsPartnerNotifyEvent {int dummy; } ;
struct zsBssInfo {scalar_t__ macaddr; } ;
struct TYPE_5__ {int /*<<< orphan*/  SignalQuality; int /*<<< orphan*/  SignalStrength1; } ;
struct TYPE_6__ {TYPE_1__ Data; } ;
struct zsAdditionInfo {TYPE_2__ Tail; } ;
struct TYPE_7__ {scalar_t__ oppositeCount; int ssidLen; int* capability; int /*<<< orphan*/  bChannelScan; int /*<<< orphan*/ * ssid; int /*<<< orphan*/  ibssReceiveBeaconCount; int /*<<< orphan*/  rxBeaconCount; scalar_t__ TPCEnable; scalar_t__ DFSEnable; int /*<<< orphan*/  bssid; } ;
struct TYPE_8__ {scalar_t__ wlanMode; TYPE_3__ sta; int /*<<< orphan*/  (* zfcbIbssPartnerNotify ) (int /*<<< orphan*/ *,int,struct zsPartnerNotifyEvent*) ;} ;

/* Variables and functions */
 int ZM_BIT_1 ; 
 int ZM_BIT_4 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ ZM_MODE_IBSS ; 
 scalar_t__ ZM_MODE_INFRASTRUCTURE ; 
 int /*<<< orphan*/  ZM_WLAN_EID_SSID ; 
 int ZM_WLAN_HEADER_A2_OFFSET ; 
 int ZM_WLAN_HEADER_A3_OFFSET ; 
 int capabilityInfo ; 
 int offset ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,struct zsPartnerNotifyEvent*) ; 
 TYPE_4__* wd ; 
 struct zsBssInfo* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct zsBssInfo*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct zsBssInfo*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct zsBssInfo*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct zsPartnerNotifyEvent*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 struct zsBssInfo* FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct zsWlanBeaconFrameHeader*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct zsWlanBeaconFrameHeader*,struct zsBssInfo*,struct zsAdditionInfo*,int) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (char*) ; 
 int FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC25 () ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 

void FUNC29(zdev_t* dev, zbuf_t* buf, struct zsAdditionInfo* AddInfo) //CWYang(m)
{
    /* Parse TIM and send PS-POLL in power saving mode */
    struct zsWlanBeaconFrameHeader*  pBeaconHeader;
    struct zsBssInfo* pBssInfo;
    u8_t   pBuf[sizeof(struct zsWlanBeaconFrameHeader)];
    u8_t   bssid[6];
    int    res;

    FUNC27(dev);

    FUNC25();

    /* sta routine jobs */
    FUNC15(dev, buf);  /* check protection mode */

    if (FUNC14(dev))
    {
        FUNC0(wd->sta.bssid, bssid);

        if ( wd->wlanMode == ZM_MODE_INFRASTRUCTURE )
        {
            if ( FUNC10(dev, buf, bssid, ZM_WLAN_HEADER_A2_OFFSET, 6) )
            {
                FUNC9(dev, buf);
                FUNC20(dev, buf);
                if (wd->sta.DFSEnable)
                    FUNC18(dev, buf);
                if (wd->sta.TPCEnable)
                    FUNC19(dev, buf);
                /* update signal strength and signal quality */
                FUNC17(dev, AddInfo->Tail.Data.SignalStrength1,
                        AddInfo->Tail.Data.SignalQuality); //CWYang(+)
                wd->sta.rxBeaconCount++;
            }
        }
        else if ( wd->wlanMode == ZM_MODE_IBSS )
        {
            if ( FUNC10(dev, buf, bssid, ZM_WLAN_HEADER_A3_OFFSET, 6) )
            {
                int res;
                struct zsPartnerNotifyEvent event;

                FUNC22("20070916 Receive opposite Beacon!");
                FUNC26(dev);
                wd->sta.ibssReceiveBeaconCount++;
                FUNC28(dev);

                res = FUNC16(dev, buf);
                if ( res == 0 )
                {
                    // New peer station found. Notify the wrapper now
                    FUNC8(dev, buf, &event);
                    if (wd->zfcbIbssPartnerNotify != NULL)
                    {
                        wd->zfcbIbssPartnerNotify(dev, 1, &event);
                    }
                }
                /* update signal strength and signal quality */
                FUNC17(dev, AddInfo->Tail.Data.SignalStrength1,
                        AddInfo->Tail.Data.SignalQuality); //CWYang(+)
            }
            //else if ( wd->sta.ibssPartnerStatus == ZM_IBSS_PARTNER_LOST )
            // Why does this happen in IBSS?? The impact of Vista since
            // we need to tell it the BSSID
#if 0
            else if ( wd->sta.oppositeCount == 0 )
            {   /* IBSS merge if SSID matched */
                if ( (offset = zfFindElement(dev, buf, ZM_WLAN_EID_SSID)) != 0xffff )
                {
                    if ( (wd->sta.ssidLen == zmw_buf_readb(dev, buf, offset+1))&&
                         (zfRxBufferEqualToStr(dev, buf, wd->sta.ssid,
                                               offset+2, wd->sta.ssidLen)) )
                    {
                        capabilityInfo = zmw_buf_readh(dev, buf, 34);

                        if ( capabilityInfo & ZM_BIT_1 )
                        {
                            if ( (wd->sta.capability[0] & ZM_BIT_4) ==
                                 (capabilityInfo & ZM_BIT_4) )
                            {
                                zm_debug_msg0("IBSS merge");
                                zfCopyFromRxBuffer(dev, buf, bssid,
                                                   ZM_WLAN_HEADER_A3_OFFSET, 6);
                                zfUpdateBssid(dev, bssid);
                            }
                        }
                    }
                }
            }
#endif
        }
    }

    /* return if not channel scan */
    if ( !wd->sta.bChannelScan )
    {
        goto zlReturn;
    }

    FUNC6(dev, buf, pBuf, 0, sizeof(struct zsWlanBeaconFrameHeader));
    pBeaconHeader = (struct zsWlanBeaconFrameHeader*) pBuf;

    FUNC26(dev);

    //zm_debug_msg1("bss count = ", wd->sta.bssList.bssCount);

    pBssInfo = FUNC11(dev, buf, pBeaconHeader);

    if ( pBssInfo == NULL )
    {
        /* Allocate a new entry if BSS not in the scan list */
        pBssInfo = FUNC2(dev);
        if (pBssInfo != NULL)
        {
            res = FUNC13(dev, buf, pBeaconHeader, pBssInfo, AddInfo, 0);
            //zfDumpSSID(pBssInfo->ssid[1], &(pBssInfo->ssid[2]));
            if ( res != 0 )
            {
                FUNC3(dev, pBssInfo);
            }
            else
            {
                FUNC4(dev, pBssInfo);
            }
        }
    }
    else
    {
        res = FUNC13(dev, buf, pBeaconHeader, pBssInfo, AddInfo, 1);
        if (res == 2)
        {
            FUNC5(dev, pBssInfo);
            FUNC3(dev, pBssInfo);
        }
        else if ( wd->wlanMode == ZM_MODE_IBSS )
        {
            int idx;

            // It would reset the alive counter if the peer station is found!
            FUNC12(dev, (u16_t *)pBssInfo->macaddr, &idx);
        }
    }

    FUNC28(dev);

zlReturn:

    return;
}