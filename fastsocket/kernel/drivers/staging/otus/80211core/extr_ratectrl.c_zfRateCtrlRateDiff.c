
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8_t ;
typedef size_t u16_t ;
struct zsRcCell {size_t operationRateCount; scalar_t__* operationRateSet; size_t currentRateIndex; } ;


 int ZM_LV_0 ;
 int zm_msg1_tx (int ,char*,scalar_t__) ;

u8_t zfRateCtrlRateDiff(struct zsRcCell* rcCell, u8_t retryRate)
{
    u16_t i;


    for (i=0; i<rcCell->operationRateCount; i++)
    {
        if (retryRate == rcCell->operationRateSet[i])
        {
            if (i < rcCell->currentRateIndex)
            {
                return ((rcCell->currentRateIndex - i)+1)>>1;
            }
            else if (i == rcCell->currentRateIndex == 0)
            {
                return 1;
            }
            else
            {
                return 0;
            }
        }
    }

    zm_msg1_tx(ZM_LV_0, "Not in operation rate set:", retryRate);
    return 1;

}
