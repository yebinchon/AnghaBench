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
typedef  int /*<<< orphan*/  u8_t ;
typedef  scalar_t__ u32_t ;
struct TYPE_3__ {scalar_t__ beaconTxCnt; int txBeaconInd; scalar_t__ atimWindow; scalar_t__ ibssDelayedInd; int /*<<< orphan*/  ibssDelayedIndEvent; } ;
struct TYPE_4__ {scalar_t__ wlanMode; TYPE_1__ sta; int /*<<< orphan*/  (* zfcbIbssPartnerNotify ) (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ;scalar_t__ tickIbssSendBeacon; } ;

/* Variables and functions */
 scalar_t__ ZM_MODE_IBSS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 TYPE_2__* wd ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(zdev_t* dev, u8_t* rsp)
{
    u32_t txBeaconCounter;

    FUNC5(dev);

    FUNC3();

    if ( wd->wlanMode == ZM_MODE_IBSS )
    {
        txBeaconCounter = *((u32_t *)rsp);
        if ( wd->sta.beaconTxCnt != txBeaconCounter )
        {
            wd->sta.txBeaconInd = 1;

            FUNC4(dev);
            wd->tickIbssSendBeacon = 0;
            FUNC6(dev);
        }
        else
        {
            wd->sta.txBeaconInd = 0;
        }

#ifdef ZM_ENABLE_IBSS_DELAYED_JOIN_INDICATION
        if ( wd->sta.txBeaconInd && wd->sta.ibssDelayedInd )
        {
            if (wd->zfcbIbssPartnerNotify != NULL)
            {
                wd->zfcbIbssPartnerNotify(dev, 1, &wd->sta.ibssDelayedIndEvent);
            }

            wd->sta.ibssDelayedInd = 0;
        }
#endif

        wd->sta.beaconTxCnt = txBeaconCounter;

        // Need to check if the time is expired after ATIM window??

        // Check if we have buffered any data for those stations that are sleeping
        // If it's true, then transmitting ATIM pkt to notify them

#ifdef ZM_ENABLE_IBSS_PS
        // TODO: Need to check if the station receive our ATIM pkt???
        zfStaIbssPSSend(dev);

        if ( wd->sta.atimWindow == 0 )
        {
            // We won't receive the end of ATIM isr so we fake it
            zfPowerSavingMgrAtimWinExpired(dev);
        }
#endif
    }
}