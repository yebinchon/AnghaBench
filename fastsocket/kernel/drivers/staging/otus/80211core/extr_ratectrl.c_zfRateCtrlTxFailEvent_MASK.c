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
typedef  int u32_t ;
struct zsRcCell {size_t currentRate; scalar_t__ failCount; int /*<<< orphan*/  flag; } ;
struct TYPE_2__ {int* txFail; int* txMPDU; scalar_t__* PER; scalar_t__ probeSuccessCount; scalar_t__ probeCount; } ;

/* Variables and functions */
 scalar_t__* PERThreshold ; 
 scalar_t__ ZM_MIN_RATE_FAIL_COUNT ; 
 int /*<<< orphan*/  ZM_RC_TRAINED_BIT ; 
 TYPE_1__* wd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct zsRcCell*) ; 
 int FUNC2 (struct zsRcCell*,size_t) ; 
 scalar_t__ FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(zdev_t* dev, struct zsRcCell* rcCell, u8_t aggRate, u32_t retryRate)
{
    FUNC6(dev);

    FUNC4();

#ifndef ZM_DISABLE_RATE_CTRL
    //DbgPrint("aggRate=%d, retryRate=%d", aggRate, retryRate);
    if (aggRate && (aggRate != rcCell->currentRate)) {
        wd->txFail[aggRate] += retryRate;
        return;
    }

    if (!aggRate) {
        retryRate = (FUNC2(rcCell, (u8_t)retryRate)+1)>>1;
        if (rcCell->currentRate <12) //legacy rate
        {
            retryRate*=2;
        }
    }
    rcCell->failCount += retryRate;
    wd->txFail[rcCell->currentRate] += retryRate;

    //DbgPrint("failCount=%d", rcCell->failCount);
    if (rcCell->failCount > ZM_MIN_RATE_FAIL_COUNT)
    {
        if (wd->txMPDU[rcCell->currentRate] != 0) {
            wd->PER[rcCell->currentRate] = FUNC3(100,
                (wd->txFail[rcCell->currentRate]*100)/wd->txMPDU[rcCell->currentRate]);
            if (!wd->PER[rcCell->currentRate]) wd->PER[rcCell->currentRate] ++;
        }
        //zm_msg1_tx(ZM_LV_1, "PER=", per);
        //DbgPrint("PER=%d, txFail=%d, txMPDU=%d", wd->PER[rcCell->currentRate], wd->txFail[rcCell->currentRate], wd->txMPDU[rcCell->currentRate]);
        if (wd->PER[rcCell->currentRate] > PERThreshold[rcCell->currentRate])
        {
            /* Lower Tx Rate if PER < THRESHOLD */
            FUNC1(dev, rcCell);
            rcCell->flag |= ZM_RC_TRAINED_BIT;

            // Resolve compatibility problem with Marvell
            if(rcCell->currentRate == 15)
            {
                FUNC7(dev);
                FUNC0(dev, 8);
                FUNC5(dev);
            }

            wd->txFail[rcCell->currentRate] = wd->txFail[rcCell->currentRate] >> 1;
            wd->txMPDU[rcCell->currentRate] = wd->txMPDU[rcCell->currentRate] >> 1;

            wd->probeCount = wd->probeSuccessCount = 0;
        }
    }

#endif
    return;
}