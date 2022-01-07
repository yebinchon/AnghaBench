
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8_t ;
struct zsRcCell {size_t currentRateIndex; scalar_t__ operationRateCount; size_t* operationRateSet; } ;



u8_t zfRateCtrlGetHigherRate(struct zsRcCell* rcCell)
{
    u8_t rateIndex;

    rateIndex = rcCell->currentRateIndex
            + (((rcCell->currentRateIndex+1) < rcCell->operationRateCount)?1:0);
    return rcCell->operationRateSet[rateIndex];
}
