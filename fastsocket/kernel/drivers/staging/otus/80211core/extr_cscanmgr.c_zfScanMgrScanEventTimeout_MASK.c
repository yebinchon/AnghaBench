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
typedef  int u16_t ;
struct TYPE_6__ {int currScanType; int scanStartDelay; scalar_t__* scanReqs; } ;
struct TYPE_7__ {int scanFrequency; scalar_t__ bChannelScan; int ibssSiteSurveyStatus; scalar_t__ rifsState; int currentFrequency; int /*<<< orphan*/  HT2040; int /*<<< orphan*/  EnableHT; scalar_t__ ibssReceiveBeaconCount; TYPE_2__ scanMgr; int /*<<< orphan*/  bPassiveScan; } ;
struct TYPE_5__ {int allowChannelCnt; } ;
struct TYPE_8__ {TYPE_3__ sta; int /*<<< orphan*/  (* zfcbScanNotify ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;scalar_t__ tickIbssReceiveBeacon; int /*<<< orphan*/  ExtOffset; int /*<<< orphan*/  BandWidth40; int /*<<< orphan*/  frequency; TYPE_1__ regulationTable; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  ZM_EVENT_IN_SCAN ; 
 int /*<<< orphan*/  ZM_EVENT_TIMEOUT_SCAN ; 
 scalar_t__ ZM_RIFS_STATE_DETECTED ; 
#define  ZM_SCAN_MGR_SCAN_EXTERNAL 129 
#define  ZM_SCAN_MGR_SCAN_INTERNAL 128 
 int ZM_SCAN_MGR_SCAN_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_4__* wd ; 
 int FUNC1 (int /*<<< orphan*/ *,int*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  zfScanMgrEventScanCompleteCb ; 
 int /*<<< orphan*/  zfScanMgrEventSetFreqCompleteCb ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

u8_t FUNC17(zdev_t* dev)
{
    u16_t   nextScanFrequency = 0;
    u8_t    temp;

    FUNC15(dev);

    FUNC13();

    FUNC14(dev);
    if ( wd->sta.scanFrequency == 0 )
    {
        FUNC16(dev);
        return -1;
    }

    nextScanFrequency = FUNC2(dev, wd->sta.scanFrequency,
                                           &wd->sta.bPassiveScan);

    if ( (nextScanFrequency == 0xffff)
         || (wd->sta.scanFrequency == FUNC1(dev, &temp)) )
    {
        u8_t currScanType;
        u8_t isExternalScan = 0;
        u8_t isInternalScan = 0;

        //zm_debug_msg1("end scan = ", KeQueryInterruptTime());
        wd->sta.scanFrequency = 0;

        FUNC12("scan 1 type: ", wd->sta.scanMgr.currScanType);
        FUNC12("scan channel count = ", wd->regulationTable.allowChannelCnt);

        //zfBssInfoRefresh(dev);
        FUNC9(dev, ZM_EVENT_TIMEOUT_SCAN);

        if ( wd->sta.bChannelScan == FALSE )
        {
            FUNC11("WOW!! scan is cancelled\n");
            FUNC16(dev);
            goto report_scan_result;
        }


        currScanType = wd->sta.scanMgr.currScanType;
        switch(currScanType)
        {
            case ZM_SCAN_MGR_SCAN_EXTERNAL:
                isExternalScan = 1;

                if ( wd->sta.scanMgr.scanReqs[ZM_SCAN_MGR_SCAN_INTERNAL - 1] )
                {
                    wd->sta.scanMgr.scanReqs[ZM_SCAN_MGR_SCAN_INTERNAL - 1] = 0;
                    isInternalScan = 1;
                }

                break;

            case ZM_SCAN_MGR_SCAN_INTERNAL:
                isInternalScan = 1;

                if ( wd->sta.scanMgr.scanReqs[ZM_SCAN_MGR_SCAN_EXTERNAL - 1] )
                {
                    // Because the external scan should pre-empts internal scan.
                    // So this shall not be happened!!
                    FUNC10(0);
                }

                break;

            default:
                FUNC10(0);
                break;
        }

        wd->sta.scanMgr.scanReqs[currScanType - 1] = 0;
        wd->sta.scanMgr.scanStartDelay = 100;
        wd->sta.scanMgr.currScanType = ZM_SCAN_MGR_SCAN_NONE;
        FUNC16(dev);

        //Set channel according to AP's configuration
        FUNC3(dev, wd->frequency, wd->BandWidth40,
                wd->ExtOffset, zfScanMgrEventScanCompleteCb);

        wd->sta.bChannelScan = FALSE;

        #if 1
        if (FUNC7(dev))
        { // Finish site survey, reset the variable to detect using wrong frequency !
            FUNC6(dev, 1);
            FUNC14(dev);
            wd->sta.ibssSiteSurveyStatus = 2;
            wd->tickIbssReceiveBeacon = 0;
            wd->sta.ibssReceiveBeaconCount = 0;
            FUNC16(dev);

            /* #5 Re-enable RIFS function after the site survey ! */
            /* This is because switch band will reset the BB register to initial value */
            if( wd->sta.rifsState == ZM_RIFS_STATE_DETECTED )
            {
                FUNC5(dev, ((wd->sta.currentFrequency<3000)?1:0), wd->sta.EnableHT, wd->sta.HT2040);
            }
        }
        else
        {
            FUNC6(dev, 0);
            FUNC14(dev);
            wd->sta.ibssSiteSurveyStatus = 0;
            FUNC16(dev);
        }
        #endif

report_scan_result:
        /* avoid lose receive packet when site survey */
        //if ((zfStaIsConnected(dev)) && (!zfPowerSavingMgrIsSleeping(dev)))
        //{
        //    zfSendNullData(dev, 0);
        //}

        if ( isExternalScan )//Quickly reboot
        {
            if (wd->zfcbScanNotify != NULL)
            {
                wd->zfcbScanNotify(dev, NULL);
            }
        }

        if ( isInternalScan )
        {
            //wd->sta.InternalScanReq = 0;
            FUNC8(dev);
        }

        return 0;
    }
    else
    {
        wd->sta.scanFrequency = nextScanFrequency;

        //zmw_enter_critical_section(dev);
        FUNC9(dev, ZM_EVENT_IN_SCAN);
        FUNC16(dev);

        FUNC11("scan 2");
        FUNC4(dev, wd->sta.scanFrequency, zfScanMgrEventSetFreqCompleteCb);

        return 1;
    }
}