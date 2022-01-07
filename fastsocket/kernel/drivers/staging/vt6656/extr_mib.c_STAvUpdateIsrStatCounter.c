
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dwIsrRxNoBuf; int dwIsrMIBNearfull; int dwIsrSoftInterrupt; int dwIsrUnrecoverableError; int dwIsrWatchDog; int dwIsrSTIMERInt; int dwIsrTBTTInt; int dwIsrRx0OK; int dwIsrBeaconTxOK; int dwIsrTx0OK; int dwIsrUnknown; } ;
struct TYPE_5__ {TYPE_1__ ISRStat; } ;
typedef TYPE_2__* PSStatCounter ;
typedef int BYTE ;


 int ISR_ACTX ;
 int ISR_BNTX ;
 int ISR_FETALERR ;
 int ISR_MIBNEARFULL ;
 int ISR_RXDMA0 ;
 int ISR_RXNOBUF ;
 int ISR_SOFTINT ;
 int ISR_SOFTTIMER ;
 int ISR_TBTT ;
 int ISR_WATCHDOG ;

void STAvUpdateIsrStatCounter (PSStatCounter pStatistic, BYTE byIsr0, BYTE byIsr1)
{




    if (byIsr0 == 0) {
        pStatistic->ISRStat.dwIsrUnknown++;
        return;
    }


    if (byIsr0 & ISR_ACTX)
        pStatistic->ISRStat.dwIsrTx0OK++;

    if (byIsr0 & ISR_BNTX)
        pStatistic->ISRStat.dwIsrBeaconTxOK++;

    if (byIsr0 & ISR_RXDMA0)
        pStatistic->ISRStat.dwIsrRx0OK++;

    if (byIsr0 & ISR_TBTT)
        pStatistic->ISRStat.dwIsrTBTTInt++;

    if (byIsr0 & ISR_SOFTTIMER)
        pStatistic->ISRStat.dwIsrSTIMERInt++;

    if (byIsr0 & ISR_WATCHDOG)
        pStatistic->ISRStat.dwIsrWatchDog++;


    if (byIsr1 & ISR_FETALERR)
        pStatistic->ISRStat.dwIsrUnrecoverableError++;

    if (byIsr1 & ISR_SOFTINT)
        pStatistic->ISRStat.dwIsrSoftInterrupt++;

    if (byIsr1 & ISR_MIBNEARFULL)
        pStatistic->ISRStat.dwIsrMIBNearfull++;

    if (byIsr1 & ISR_RXNOBUF)
        pStatistic->ISRStat.dwIsrRxNoBuf++;

}
