
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u8_t ;
struct zsRcCell {size_t currentRateIndex; int currentRate; int lastTime; scalar_t__ lasttxCount; scalar_t__ txCount; scalar_t__ failCount; int * operationRateSet; } ;
struct TYPE_2__ {int tick; } ;


 int ZM_LV_0 ;
 TYPE_1__* wd ;
 int zm_msg1_tx (int ,char*,int ) ;
 int zmw_get_wlan_dev (int *) ;

u8_t zfRateCtrlNextLowerRate(zdev_t* dev, struct zsRcCell* rcCell)
{
    zmw_get_wlan_dev(dev);
    if (rcCell->currentRateIndex > 0)
    {
        rcCell->currentRateIndex--;
        rcCell->currentRate = rcCell->operationRateSet[rcCell->currentRateIndex];
    }
    zm_msg1_tx(ZM_LV_0, "Lower Tx Rate=", rcCell->currentRate);

    rcCell->failCount = rcCell->txCount = 0;
    rcCell->lasttxCount = 0;
    rcCell->lastTime = wd->tick;
    return rcCell->currentRate;
}
