
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zdev_t ;
typedef size_t u8_t ;
typedef scalar_t__ u32_t ;
struct zsRcCell {size_t currentRateIndex; size_t* operationRateSet; scalar_t__ operationRateCount; } ;
struct TYPE_2__ {int * PER; } ;


 TYPE_1__* wd ;
 int * zcRate ;
 scalar_t__ zfRateCtrlUDPTP (int *,int ,int ) ;
 size_t zm_agg_min (size_t,scalar_t__) ;
 int zmw_get_wlan_dev (int *) ;

u8_t zfRateCtrlFindMaxUDPTP(zdev_t* dev, struct zsRcCell* rcCell) {
    u8_t i, maxIndex=0, rateIndex;
    u32_t max=0, UDPThroughput;

    zmw_get_wlan_dev(dev);

    rateIndex = zm_agg_min(rcCell->currentRateIndex+3, rcCell->operationRateCount-1);
    for (i=rcCell->currentRateIndex; i < rateIndex; i++) {
        UDPThroughput = zfRateCtrlUDPTP(dev, zcRate[rcCell->operationRateSet[i]],
            wd->PER[rcCell->operationRateSet[i]]);
        if (max < UDPThroughput) {
            max = UDPThroughput;
            maxIndex = i;
        }
    }

    return rcCell->operationRateSet[maxIndex];
}
