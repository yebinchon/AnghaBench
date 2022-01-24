#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zdev_t ;
typedef  size_t u8_t ;
typedef  size_t u16_t ;
struct zsRcCell {size_t txCount; size_t probingTime; size_t currentRate; int failCount; int lastTime; int lasttxCount; } ;
struct TYPE_2__ {size_t tick; int probeCount; int success_probing; int probeInterval; int probeSuccessCount; int* txMPDU; int* PER; int* txFail; } ;

/* Variables and functions */
 scalar_t__* FailDiff ; 
 int /*<<< orphan*/  ZM_LV_0 ; 
 int /*<<< orphan*/  ZM_LV_1 ; 
 int /*<<< orphan*/  ZM_LV_3 ; 
 int ZM_MS_PER_TICK ; 
 size_t ZM_RATE_CTRL_MIN_PROBING_PACKET ; 
 int ZM_RATE_CTRL_PROBING_INTERVAL_MS ; 
 int ZM_RATE_PROBING_THRESHOLD ; 
 int ZM_RATE_SUCCESS_PROBING ; 
 TYPE_1__* wd ; 
 size_t FUNC0 (int /*<<< orphan*/ *,struct zsRcCell*) ; 
 size_t FUNC1 (struct zsRcCell*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct zsRcCell*,size_t) ; 
 int FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

u16_t FUNC7(zdev_t* dev, struct zsRcCell* rcCell, u16_t* probing)
{
    u8_t newRate, highRate;
    FUNC6(dev);

    FUNC5(ZM_LV_3, "txCount=", rcCell->txCount);
    FUNC5(ZM_LV_3, "probingTime=", rcCell->probingTime);
    FUNC5(ZM_LV_3, "tick=", wd->tick);
    *probing = 0;
    newRate = rcCell->currentRate;

    if (wd->probeCount && (wd->probeCount < wd->success_probing))
    {
        if (wd->probeInterval < 50)
        {
            wd->probeInterval++;
        }
        else
        {
            wd->probeInterval++;
            if (wd->probeInterval > 52) //probe 51, 52, 53 three packets every 50 packets
            {
                wd->probeInterval = 0;
            }
            newRate=FUNC1(rcCell);
            *probing = 1;
            wd->probeCount++;
            rcCell->probingTime = wd->tick;
        }
    }
    /* Accumulate at least 1000ms and 8 packets or Accumulate over 1K packets */
    else if ((((wd->tick - rcCell->probingTime) > (ZM_RATE_CTRL_PROBING_INTERVAL_MS/ZM_MS_PER_TICK))
                && (rcCell->txCount >= ZM_RATE_CTRL_MIN_PROBING_PACKET))
        || (rcCell->txCount >= 1000))
    {
#ifndef ZM_DISABLE_RATE_CTRL
        /* PER = fail/total */
        wd->probeCount = 0;
        wd->probeSuccessCount = 0;
        if (wd->txMPDU[rcCell->currentRate] != 0) {
            wd->PER[rcCell->currentRate] = FUNC3(100,
                (wd->txFail[rcCell->currentRate]*100)/wd->txMPDU[rcCell->currentRate]);
            if (!wd->PER[rcCell->currentRate]) wd->PER[rcCell->currentRate] ++;
        }

        /* if PER < threshold, do rate probing, return probing rate */
        if ((wd->PER[rcCell->currentRate] <= (ZM_RATE_PROBING_THRESHOLD+15)) ||
            ((rcCell->currentRate <= 16) &&
            ((wd->PER[rcCell->currentRate]/2) <= ZM_RATE_PROBING_THRESHOLD)))
        {
            if ((newRate=FUNC1(rcCell)) != rcCell->currentRate)
            {
                *probing = 1;
                wd->probeCount++;
                wd->probeInterval = 0;
                wd->success_probing =
                    (rcCell->currentRate <= 16)? (ZM_RATE_SUCCESS_PROBING/2) : ZM_RATE_SUCCESS_PROBING;
                //DbgPrint("Start Probing");
                FUNC5(ZM_LV_0, "Probing Rate=", newRate);
            }
        }
#endif

        FUNC4(ZM_LV_1, "Diminish counter");
        rcCell->failCount = rcCell->failCount>>1;
        rcCell->txCount = rcCell->txCount>>1;
        wd->txFail[rcCell->currentRate] = wd->txFail[rcCell->currentRate] >> 1;
        wd->txMPDU[rcCell->currentRate] = wd->txMPDU[rcCell->currentRate] >> 1;


        if (rcCell->currentRate > 15) {
            highRate = FUNC1(rcCell);
            if ((highRate != rcCell->currentRate) && wd->PER[highRate] &&
                ((wd->PER[rcCell->currentRate] + FailDiff[rcCell->currentRate]) >
                wd->PER[highRate])) {
                //DbgPrint("PER compare force raise rate to %d", highRate);
                wd->probeSuccessCount = wd->probeCount = ZM_RATE_SUCCESS_PROBING;
                FUNC2(dev, rcCell, highRate);
            }
        }
        else {
            highRate = FUNC0(dev, rcCell);
            if (rcCell->currentRate < highRate) {
                //DbgPrint("UDP Throughput compare force raise rate to %d", highRate);
                wd->probeSuccessCount = wd->probeCount = ZM_RATE_SUCCESS_PROBING;
                FUNC2(dev, rcCell, highRate);
            }
        }
        rcCell->probingTime = wd->tick;
    }

    if( (wd->tick > 1000)
        && ((wd->tick - rcCell->lastTime) > 3840) )
    {
        if (rcCell->lasttxCount < 70)
        {
            rcCell->failCount = rcCell->failCount>>1;
            rcCell->txCount = rcCell->txCount>>1;
            wd->txFail[rcCell->currentRate] = wd->txFail[rcCell->currentRate] >> 1;
            wd->txMPDU[rcCell->currentRate] = wd->txMPDU[rcCell->currentRate] >> 1;

            rcCell->failCount = (rcCell->failCount < rcCell->txCount)?
                                rcCell->failCount : rcCell->txCount;
            wd->txFail[rcCell->currentRate] = (wd->txFail[rcCell->currentRate] < wd->txMPDU[rcCell->currentRate])?
                                              wd->txFail[rcCell->currentRate] : wd->txMPDU[rcCell->currentRate];
        }

        rcCell->lastTime    = wd->tick;
        rcCell->lasttxCount = 0;
    }

    rcCell->txCount++;
    rcCell->lasttxCount++;
    wd->txMPDU[rcCell->currentRate]++;
    FUNC5(ZM_LV_1, "Get Tx Rate=", newRate);
    return newRate;
}