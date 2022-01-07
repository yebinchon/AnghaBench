
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zdev_t ;
typedef size_t u8_t ;
typedef int u32_t ;
struct zsRcCell {size_t currentRate; scalar_t__ failCount; int flag; } ;
struct TYPE_2__ {int* txFail; int* txMPDU; scalar_t__* PER; scalar_t__ probeSuccessCount; scalar_t__ probeCount; } ;


 scalar_t__* PERThreshold ;
 scalar_t__ ZM_MIN_RATE_FAIL_COUNT ;
 int ZM_RC_TRAINED_BIT ;
 TYPE_1__* wd ;
 int zfHpSetAggPktNum (int *,int) ;
 int zfRateCtrlNextLowerRate (int *,struct zsRcCell*) ;
 int zfRateCtrlRateDiff (struct zsRcCell*,size_t) ;
 scalar_t__ zm_agg_min (int,int) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

void zfRateCtrlTxFailEvent(zdev_t* dev, struct zsRcCell* rcCell, u8_t aggRate, u32_t retryRate)
{
    zmw_get_wlan_dev(dev);

    zmw_declare_for_critical_section();



    if (aggRate && (aggRate != rcCell->currentRate)) {
        wd->txFail[aggRate] += retryRate;
        return;
    }

    if (!aggRate) {
        retryRate = (zfRateCtrlRateDiff(rcCell, (u8_t)retryRate)+1)>>1;
        if (rcCell->currentRate <12)
        {
            retryRate*=2;
        }
    }
    rcCell->failCount += retryRate;
    wd->txFail[rcCell->currentRate] += retryRate;


    if (rcCell->failCount > ZM_MIN_RATE_FAIL_COUNT)
    {
        if (wd->txMPDU[rcCell->currentRate] != 0) {
            wd->PER[rcCell->currentRate] = zm_agg_min(100,
                (wd->txFail[rcCell->currentRate]*100)/wd->txMPDU[rcCell->currentRate]);
            if (!wd->PER[rcCell->currentRate]) wd->PER[rcCell->currentRate] ++;
        }


        if (wd->PER[rcCell->currentRate] > PERThreshold[rcCell->currentRate])
        {

            zfRateCtrlNextLowerRate(dev, rcCell);
            rcCell->flag |= ZM_RC_TRAINED_BIT;


            if(rcCell->currentRate == 15)
            {
                zmw_leave_critical_section(dev);
                zfHpSetAggPktNum(dev, 8);
                zmw_enter_critical_section(dev);
            }

            wd->txFail[rcCell->currentRate] = wd->txFail[rcCell->currentRate] >> 1;
            wd->txMPDU[rcCell->currentRate] = wd->txMPDU[rcCell->currentRate] >> 1;

            wd->probeCount = wd->probeSuccessCount = 0;
        }
    }


    return;
}
