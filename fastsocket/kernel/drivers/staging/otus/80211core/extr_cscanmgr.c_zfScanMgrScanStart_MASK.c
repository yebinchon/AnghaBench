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
typedef  scalar_t__ u8_t ;
struct TYPE_4__ {int* scanReqs; scalar_t__ currScanType; int scanStartDelay; } ;
struct TYPE_5__ {TYPE_1__ scanMgr; void* bScheduleScan; void* bChannelScan; } ;
struct TYPE_6__ {TYPE_2__ sta; } ;

/* Variables and functions */
 void* FALSE ; 
 void* TRUE ; 
 int /*<<< orphan*/  ZM_EVENT_IN_SCAN ; 
 int /*<<< orphan*/  ZM_EVENT_SCAN ; 
 int /*<<< orphan*/  ZM_EVENT_TIMEOUT_SCAN ; 
 scalar_t__ ZM_SCAN_MGR_SCAN_EXTERNAL ; 
 scalar_t__ ZM_SCAN_MGR_SCAN_INTERNAL ; 
 scalar_t__ ZM_SCAN_MGR_SCAN_NONE ; 
 TYPE_3__* wd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

u8_t FUNC12(zdev_t* dev, u8_t scanType)
{
    u8_t i;

    FUNC10(dev);

    FUNC7("scanType = ", scanType);

    FUNC8();

    if ( scanType != ZM_SCAN_MGR_SCAN_INTERNAL &&
         scanType != ZM_SCAN_MGR_SCAN_EXTERNAL )
    {
        FUNC6("unknown scanType");
        return 1;
    }
    else if (FUNC3(dev))
    {
        FUNC6("reject scan request due to connecting");
        return 1;
    }

    i = scanType - 1;

    FUNC9(dev);

    if ( wd->sta.scanMgr.scanReqs[i] == 1 )
    {
        FUNC7("scan rescheduled", scanType);
        goto scan_done;
    }

    wd->sta.scanMgr.scanReqs[i] = 1;
    FUNC7("scan scheduled: ", scanType);

    // If there's no scan pending, we do the scan right away.
    // If there's an internal scan and the new scan request is external one,
    // we will restart the scan.
    if ( wd->sta.scanMgr.currScanType == ZM_SCAN_MGR_SCAN_NONE )
    {
        goto schedule_scan;
    }
    else if ( wd->sta.scanMgr.currScanType == ZM_SCAN_MGR_SCAN_INTERNAL &&
              scanType == ZM_SCAN_MGR_SCAN_EXTERNAL )
    {
        // Stop the internal scan & schedule external scan first
        FUNC4(dev, ZM_EVENT_SCAN);

        /* Fix for WHQL sendrecv => we do not apply delay time in which the device
           stop transmitting packet when we already connect to some AP  */
        wd->sta.bScheduleScan = FALSE;

        FUNC4(dev, ZM_EVENT_TIMEOUT_SCAN);
        FUNC4(dev, ZM_EVENT_IN_SCAN);

        wd->sta.bChannelScan = FALSE;
        goto schedule_scan;
    }
    else
    {
        FUNC6("Scan is busy...waiting later to start\n");
    }

    FUNC11(dev);
    return 0;

scan_done:
    FUNC11(dev);
    return 1;

schedule_scan:

    wd->sta.bScheduleScan = TRUE;

    FUNC5(dev, ZM_EVENT_SCAN, wd->sta.scanMgr.scanStartDelay);
    wd->sta.scanMgr.scanStartDelay = 3;
    //wd->sta.scanMgr.scanStartDelay = 0;
    wd->sta.scanMgr.currScanType = scanType;
    FUNC11(dev);

    if ((FUNC2(dev)) && (!FUNC0(dev)))
    {
        FUNC1(dev, 1);
    }
    return 0;
}