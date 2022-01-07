
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ullTsrAllOK; } ;
struct TYPE_7__ {int dwTsrTotalRetry; int* dwTxFail; int dwTsrDirected; TYPE_2__* abyTxPktInfo; int dwTsrMulticast; int dwTsrBroadcast; int dwTsrTransmitTimeout; int dwTsrRetryTimeout; int dwTsrErr; int TxFailCount; int ullTxDirectedBytes; int ullTxDirectedFrames; int ullTxMulticastBytes; int ullTxMulticastFrames; int ullTxBroadcastBytes; int ullTxBroadcastFrames; int * dwTxOk; TYPE_1__ CustomStat; int ullTsrOK; int TxRetryOkCount; int TxNoRetryOkCount; int * dwTxRetryCount; int dwTsrMoreThanOnceRetry; int dwTsrOnceRetry; int dwTsrRetry; int dwTsrTxPacket; } ;
struct TYPE_6__ {scalar_t__ byBroadMultiUni; scalar_t__ wLength; } ;
typedef TYPE_3__* PSStatCounter ;
typedef int BYTE ;


 size_t MAX_RATE ;
 int TSR_RETRYTMO ;
 int TSR_TMO ;
 scalar_t__ TX_PKT_BROAD ;
 scalar_t__ TX_PKT_MULTI ;
 scalar_t__ TX_PKT_UNI ;

void
STAvUpdateTDStatCounter (
    PSStatCounter pStatistic,
    BYTE byPktNum,
    BYTE byRate,
    BYTE byTSR
    )
{
    BYTE byRetyCnt;

    pStatistic->dwTsrTxPacket++;

    byRetyCnt = (byTSR & 0xF0) >> 4;
    if (byRetyCnt != 0) {
        pStatistic->dwTsrRetry++;
        pStatistic->dwTsrTotalRetry += byRetyCnt;
        pStatistic->dwTxFail[byRate]+= byRetyCnt;
        pStatistic->dwTxFail[MAX_RATE] += byRetyCnt;

        if ( byRetyCnt == 0x1)
            pStatistic->dwTsrOnceRetry++;
        else
            pStatistic->dwTsrMoreThanOnceRetry++;

        if (byRetyCnt <= 8)
            pStatistic->dwTxRetryCount[byRetyCnt-1]++;

    }
    if ( !(byTSR & (TSR_TMO | TSR_RETRYTMO))) {
        pStatistic->ullTsrOK++;
        pStatistic->CustomStat.ullTsrAllOK++;

        pStatistic->dwTxOk[byRate]++;
        pStatistic->dwTxOk[MAX_RATE]++;

        if ( pStatistic->abyTxPktInfo[byPktNum].byBroadMultiUni == TX_PKT_BROAD ) {
            pStatistic->ullTxBroadcastFrames++;
            pStatistic->ullTxBroadcastBytes += pStatistic->abyTxPktInfo[byPktNum].wLength;
        } else if ( pStatistic->abyTxPktInfo[byPktNum].byBroadMultiUni == TX_PKT_MULTI ) {
            pStatistic->ullTxMulticastFrames++;
            pStatistic->ullTxMulticastBytes += pStatistic->abyTxPktInfo[byPktNum].wLength;
        } else if ( pStatistic->abyTxPktInfo[byPktNum].byBroadMultiUni == TX_PKT_UNI ) {
            pStatistic->ullTxDirectedFrames++;
            pStatistic->ullTxDirectedBytes += pStatistic->abyTxPktInfo[byPktNum].wLength;
        }
    }
    else {





        pStatistic->dwTsrErr++;
        if (byTSR & TSR_RETRYTMO)
            pStatistic->dwTsrRetryTimeout++;
        if (byTSR & TSR_TMO)
            pStatistic->dwTsrTransmitTimeout++;
    }

    if ( pStatistic->abyTxPktInfo[byPktNum].byBroadMultiUni == TX_PKT_BROAD ) {
        pStatistic->dwTsrBroadcast++;
    } else if ( pStatistic->abyTxPktInfo[byPktNum].byBroadMultiUni == TX_PKT_MULTI ) {
        pStatistic->dwTsrMulticast++;
    } else if ( pStatistic->abyTxPktInfo[byPktNum].byBroadMultiUni == TX_PKT_UNI ) {
        pStatistic->dwTsrDirected++;
    }
}
