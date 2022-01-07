
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dwIsrSTIMER1Int; int dwIsrRx1OK; int dwIsrRxNoBuf; int dwIsrMIBNearfull; int dwIsrSoftInterrupt; int dwIsrUnrecoverableError; int dwIsrWatchDog; int dwIsrSTIMERInt; int dwIsrTBTTInt; int dwIsrRx0OK; int dwIsrBeaconTxOK; int dwIsrAC0TxOK; int dwIsrTx0OK; int dwIsrUnknown; } ;
struct TYPE_5__ {TYPE_1__ ISRStat; } ;
typedef TYPE_2__* PSStatCounter ;
typedef int DWORD ;


 int ISR_AC0DMA ;
 int ISR_BNTX ;
 int ISR_FETALERR ;
 int ISR_MIBNEARFULL ;
 int ISR_RXDMA0 ;
 int ISR_RXDMA1 ;
 int ISR_RXNOBUF ;
 int ISR_SOFTINT ;
 int ISR_SOFTTIMER ;
 int ISR_SOFTTIMER1 ;
 int ISR_TBTT ;
 int ISR_TXDMA0 ;
 int ISR_WATCHDOG ;

void STAvUpdateIsrStatCounter (PSStatCounter pStatistic, DWORD dwIsr)
{





    if (dwIsr == 0) {
        pStatistic->ISRStat.dwIsrUnknown++;
        return;
    }


    if (dwIsr & ISR_TXDMA0)
        pStatistic->ISRStat.dwIsrTx0OK++;

    if (dwIsr & ISR_AC0DMA)
        pStatistic->ISRStat.dwIsrAC0TxOK++;

    if (dwIsr & ISR_BNTX)
        pStatistic->ISRStat.dwIsrBeaconTxOK++;

    if (dwIsr & ISR_RXDMA0)
        pStatistic->ISRStat.dwIsrRx0OK++;

    if (dwIsr & ISR_TBTT)
        pStatistic->ISRStat.dwIsrTBTTInt++;

    if (dwIsr & ISR_SOFTTIMER)
        pStatistic->ISRStat.dwIsrSTIMERInt++;

    if (dwIsr & ISR_WATCHDOG)
        pStatistic->ISRStat.dwIsrWatchDog++;

    if (dwIsr & ISR_FETALERR)
        pStatistic->ISRStat.dwIsrUnrecoverableError++;

    if (dwIsr & ISR_SOFTINT)
        pStatistic->ISRStat.dwIsrSoftInterrupt++;

    if (dwIsr & ISR_MIBNEARFULL)
        pStatistic->ISRStat.dwIsrMIBNearfull++;

    if (dwIsr & ISR_RXNOBUF)
        pStatistic->ISRStat.dwIsrRxNoBuf++;

    if (dwIsr & ISR_RXDMA1)
        pStatistic->ISRStat.dwIsrRx1OK++;
    if (dwIsr & ISR_SOFTTIMER1)
        pStatistic->ISRStat.dwIsrSTIMER1Int++;

}
