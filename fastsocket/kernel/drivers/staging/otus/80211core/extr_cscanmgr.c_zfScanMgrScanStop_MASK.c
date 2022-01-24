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
typedef  int u8_t ;
struct TYPE_4__ {void* currScanType; scalar_t__* scanReqs; } ;
struct TYPE_5__ {TYPE_1__ scanMgr; scalar_t__ scanFrequency; void* bChannelScan; void* bScheduleScan; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* zfcbScanNotify ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;TYPE_2__ sta; } ;

/* Variables and functions */
 void* FALSE ; 
 int /*<<< orphan*/  ZM_EVENT_IN_SCAN ; 
 int /*<<< orphan*/  ZM_EVENT_SCAN ; 
 int /*<<< orphan*/  ZM_EVENT_TIMEOUT_SCAN ; 
#define  ZM_SCAN_MGR_SCAN_EXTERNAL 129 
#define  ZM_SCAN_MGR_SCAN_INTERNAL 128 
 void* ZM_SCAN_MGR_SCAN_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_3__* wd ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

void FUNC12(zdev_t* dev, u8_t scanType)
{
    u8_t scanNotifyRequired = 0;
    u8_t theOtherScan = ZM_SCAN_MGR_SCAN_NONE;

    FUNC10(dev);

    FUNC8();

    FUNC9(dev);

    if ( wd->sta.scanMgr.currScanType == ZM_SCAN_MGR_SCAN_NONE )
    {
        FUNC6(wd->sta.scanMgr.scanReqs[0] == 0);
        FUNC6(wd->sta.scanMgr.scanReqs[1] == 0);
        goto done;
    }

    switch(scanType)
    {
        case ZM_SCAN_MGR_SCAN_EXTERNAL:
            scanNotifyRequired = 1;
            theOtherScan = ZM_SCAN_MGR_SCAN_INTERNAL;
            break;

        case ZM_SCAN_MGR_SCAN_INTERNAL:
            theOtherScan = ZM_SCAN_MGR_SCAN_EXTERNAL;
            break;

        default:
            goto done;
    }

    if ( wd->sta.scanMgr.currScanType != scanType )
    {
        goto stop_done;
    }

    FUNC4(dev, ZM_EVENT_SCAN);

    /* Fix for WHQL sendrecv => we do not apply delay time in which the device
       stop transmitting packet when we already connect to some AP  */
    wd->sta.bScheduleScan = FALSE;

    FUNC4(dev, ZM_EVENT_TIMEOUT_SCAN);
    FUNC4(dev, ZM_EVENT_IN_SCAN);

    wd->sta.bChannelScan = FALSE;
    wd->sta.scanFrequency = 0;

    if ( wd->sta.scanMgr.scanReqs[theOtherScan - 1] )
    {
        wd->sta.scanMgr.currScanType = theOtherScan;

        // Schedule the other scan after 1 second later
        FUNC5(dev, ZM_EVENT_SCAN, 100);
    }
    else
    {
        wd->sta.scanMgr.currScanType = ZM_SCAN_MGR_SCAN_NONE;
    }

stop_done:
    wd->sta.scanMgr.scanReqs[scanType - 1] = 0;

    FUNC11(dev);

    /* avoid lose receive packet when site survey */
    if ((FUNC3(dev)) && (!FUNC1(dev)))
    {
        FUNC2(dev, 0);
    }

    if ( scanNotifyRequired )
    {
        FUNC7("Scan notify after reset");
        if (wd->zfcbScanNotify != NULL)
        {
            wd->zfcbScanNotify(dev, NULL);
        }
    }

    return;

done:
    FUNC11(dev);
    return;
}