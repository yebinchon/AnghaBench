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
struct TYPE_4__ {int /*<<< orphan*/  state; scalar_t__ sleepAllowedtick; } ;
struct TYPE_5__ {scalar_t__ powerSaveMode; int ReceivedPktRatePerSecond; TYPE_1__ psMgr; } ;
struct TYPE_6__ {scalar_t__ wlanMode; TYPE_2__ sta; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 scalar_t__ ZM_MODE_INFRASTRUCTURE ; 
 int /*<<< orphan*/  ZM_PS_MSG_STATE_T2 ; 
 scalar_t__ ZM_STA_PS_LIGHT ; 
 TYPE_3__* wd ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(zdev_t* dev)
{
    FUNC8(dev);
    FUNC6();

    // If the tx Q is not empty...return
    if ( FUNC2(dev) == FALSE )
    {
        return;
    }

FUNC5("VtxQ is empty now...Check if HAL TXQ is empty\n");

    // The the HAL TX Q is not empty...return
    if ( FUNC0(dev) != FUNC1(dev) )
    {
        return;
    }

FUNC5("HAL TXQ is empty now...Could go to sleep...\n");

    FUNC7(dev);

    if (wd->sta.powerSaveMode == ZM_STA_PS_LIGHT)
    {
        if (wd->sta.ReceivedPktRatePerSecond > 200)
        {
            FUNC9(dev);
            return;
        }

        if ( FUNC4(dev)
             && (wd->wlanMode == ZM_MODE_INFRASTRUCTURE) )
        {
            if (wd->sta.psMgr.sleepAllowedtick) {
                wd->sta.psMgr.sleepAllowedtick--;
                FUNC9(dev);
                return;
            }
        }
    }

    wd->sta.psMgr.state = ZM_PS_MSG_STATE_T2;

    FUNC9(dev);

    // Send the Null pkt to AP to notify that I'm going to sleep
    if ( FUNC4(dev) )
    {
FUNC5("zfPowerSavingMgrOnHandleT1 send Null data\n");
        FUNC3(dev);
    }

    // Stall the TX now
    // zfTxEngineStop(dev);
}