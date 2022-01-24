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
typedef  scalar_t__ u32_t ;
struct zsRcCell {size_t currentRateIndex; size_t* operationRateSet; scalar_t__ operationRateCount; } ;
struct TYPE_2__ {int /*<<< orphan*/ * PER; } ;

/* Variables and functions */
 TYPE_1__* wd ; 
 int /*<<< orphan*/ * zcRate ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (size_t,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

u8_t FUNC3(zdev_t* dev, struct zsRcCell* rcCell) {
    u8_t i, maxIndex=0, rateIndex;
    u32_t max=0, UDPThroughput;

    FUNC2(dev);

    rateIndex = FUNC1(rcCell->currentRateIndex+3, rcCell->operationRateCount-1);
    for (i=rcCell->currentRateIndex; i < rateIndex; i++) {
        UDPThroughput = FUNC0(dev, zcRate[rcCell->operationRateSet[i]],
            wd->PER[rcCell->operationRateSet[i]]);
        if (max < UDPThroughput) {
            max = UDPThroughput;
            maxIndex = i;
        }
    }

    return rcCell->operationRateSet[maxIndex];
}