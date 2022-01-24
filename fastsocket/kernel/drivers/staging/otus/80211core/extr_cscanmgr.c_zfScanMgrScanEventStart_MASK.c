#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zdev_t ;
struct TYPE_4__ {scalar_t__ currScanType; } ;
struct TYPE_5__ {int ibssSiteSurveyStatus; int /*<<< orphan*/  scanFrequency; int /*<<< orphan*/  bPassiveScan; int /*<<< orphan*/  bScheduleScan; scalar_t__ bChannelScan; TYPE_1__ scanMgr; } ;
struct TYPE_6__ {TYPE_2__ sta; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  ZM_EVENT_IN_SCAN ; 
 int /*<<< orphan*/  ZM_EVENT_TIMEOUT_SCAN ; 
 scalar_t__ ZM_SCAN_MGR_SCAN_NONE ; 
 TYPE_3__* wd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zfScanMgrEventSetFreqCompleteCb ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

void FUNC12(zdev_t* dev)
{
    FUNC10(dev);

    FUNC8();

    if ( wd->sta.bChannelScan )
    {
        return;
    }

    FUNC4(dev);

    FUNC9(dev);

    if ( wd->sta.scanMgr.currScanType == ZM_SCAN_MGR_SCAN_NONE )
    {
        goto no_scan;
    }

    //zfBssInfoRefresh(dev);
    FUNC0(dev, 0);
    wd->sta.bChannelScan = TRUE;
    wd->sta.bScheduleScan = FALSE;
    FUNC6(dev, ZM_EVENT_IN_SCAN);
    FUNC6(dev, ZM_EVENT_TIMEOUT_SCAN);

    //zm_debug_msg1("start scan = ", KeQueryInterruptTime());
    wd->sta.scanFrequency = FUNC1(dev, &wd->sta.bPassiveScan);
    FUNC11(dev);

    /* avoid lose receive packet when site survey */
    //if ((zfStaIsConnected(dev)) && (!zfPowerSavingMgrIsSleeping(dev)))
    //{
    //    zfSendNullData(dev, 1);
    //}
//    zm_debug_msg0("scan 0");
//    zfCoreSetFrequencyV2(dev, wd->sta.scanFrequency, zfScanMgrEventSetFreqCompleteCb);

    #if 1
    if (FUNC5(dev))
    {// If doing site survey !
        FUNC3(dev, 1);
        FUNC9(dev);
        wd->sta.ibssSiteSurveyStatus = 1;
        FUNC11(dev);
    }
    else
    {
        FUNC3(dev, 0);
        FUNC9(dev);
        wd->sta.ibssSiteSurveyStatus = 0;
        FUNC11(dev);
    }
    #endif

    FUNC7("scan 0");
    FUNC2(dev, wd->sta.scanFrequency, zfScanMgrEventSetFreqCompleteCb);

    return;

no_scan:
    FUNC11(dev);
    return;
}