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
typedef  scalar_t__ u8_t ;
typedef  int u16_t ;
struct zsRcCell {int currentRate; int operationRateCount; scalar_t__* operationRateSet; int currentRateIndex; int /*<<< orphan*/  lastTime; scalar_t__ lasttxCount; scalar_t__ txCount; scalar_t__ failCount; } ;
struct TYPE_2__ {int probeSuccessCount; scalar_t__ probeCount; scalar_t__ success_probing; int* txFail; int* txMPDU; int /*<<< orphan*/  tick; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZM_LV_0 ; 
 TYPE_1__* wd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(zdev_t* dev, struct zsRcCell* rcCell, u8_t successRate)
{
    /* Raise Tx Rate */
    u16_t i, PERProbe;
    u16_t pcount;
    FUNC4(dev);

    FUNC2();

    //DbgPrint("Probing successRate=%d", successRate);
    /* Find successRate in operationRateSet[] */
    wd->probeSuccessCount++;
    if (wd->probeCount < wd->success_probing)
    {
        return;
    }

    pcount = wd->probeCount;
    if (pcount != 0)
    {
        PERProbe = wd->probeSuccessCount * 100 / pcount;
    }
    else
    {
        PERProbe = 1;
    }

    if (PERProbe < ((rcCell->currentRate < 16)? 80:100))
    {
        return;
    }
    //DbgPrint("wd->probeCount=%d, wd->probeSuccessCount=%d", wd->probeCount, wd->probeSuccessCount);
    wd->probeCount = wd->probeSuccessCount = 0;
    for (i=0; i<rcCell->operationRateCount; i++)
    {
        if (successRate == rcCell->operationRateSet[i])
        {
            if (i > rcCell->currentRateIndex)
            {
                /* Raise current Tx rate */
                FUNC1(ZM_LV_0, "Raise Tx Rate=", successRate);
                //DbgPrint("Raise Tx Rate=%d", successRate);

                // Resolve compatibility problem with Marvell
                if((rcCell->currentRate <= 15) && (successRate > 15))
                {
                    FUNC5(dev);
                    FUNC0(dev, 16);
                    FUNC3(dev);
                }

                rcCell->currentRate = successRate;
                rcCell->currentRateIndex = (u8_t)i;
                rcCell->failCount = rcCell->txCount = 0;
                rcCell->lasttxCount = 0;
                rcCell->lastTime  = wd->tick;
                wd->txFail[rcCell->currentRate] = wd->txFail[rcCell->currentRate] >> 1;
                wd->txMPDU[rcCell->currentRate] = wd->txMPDU[rcCell->currentRate] >> 1;
            }
        }
    }

    return;
}