
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16_t ;
struct zsRcCell {scalar_t__ rxRssi; int probingTime; } ;


 int ZM_MS_PER_TICK ;
 int ZM_RATE_CTRL_PROBING_INTERVAL_MS ;
 scalar_t__ ZM_RATE_CTRL_RSSI_VARIATION ;

void zfRateCtrlRxRssiEvent(struct zsRcCell* rcCell, u16_t rxRssi)
{

    if ((rcCell->rxRssi - rxRssi) > ZM_RATE_CTRL_RSSI_VARIATION)
    {

        rcCell->probingTime -= ZM_RATE_CTRL_PROBING_INTERVAL_MS/ZM_MS_PER_TICK;
    }


    rcCell->rxRssi = (((rcCell->rxRssi*7) + rxRssi)+4) >> 3;
    return;
}
