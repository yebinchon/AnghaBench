
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ ULONGLONG ;
typedef size_t UINT ;
struct TYPE_5__ {scalar_t__ ullTsrAllOK; } ;
struct TYPE_7__ {int* dwTsrTotalRetry; int * dwTsrDirected; int * dwTsrMulticast; int * dwTsrBroadcast; int * dwTsrACKData; int * dwTsrTransmitTimeout; int * dwTsrRetryTimeout; int * dwTsrErr; int * ullTxDirectedBytes; int * ullTxDirectedFrames; int * ullTxMulticastBytes; int * ullTxMulticastFrames; int * ullTxBroadcastBytes; int * ullTxBroadcastFrames; scalar_t__* ullTsrOK; TYPE_1__ CustomStat; int * dwTsrMoreThanOnceRetry; int * dwTsrOnceRetry; int * dwTsrRetry; int * dwTsrTxOctet; int * dwTsrTxPacket; } ;
struct TYPE_6__ {int * abyAddr3; int * abyAddr1; int wFrameCtl; } ;
typedef TYPE_2__* PWLAN_80211HDR_A4 ;
typedef TYPE_3__* PSStatCounter ;
typedef int * PBYTE ;
typedef int BYTE ;


 int ACK_DATA ;
 scalar_t__ IS_BROADCAST_ADDRESS (int *) ;
 scalar_t__ IS_MULTICAST_ADDRESS (int *) ;
 int TSR0_NCR ;
 int TSR1_RETRYTMO ;
 int TSR1_TERR ;
 int TSR1_TMO ;
 size_t TYPE_AC0DMA ;
 size_t TYPE_TXDMA0 ;
 scalar_t__ WLAN_GET_FC_TODS (int ) ;

void
STAvUpdateTDStatCounter (
    PSStatCounter pStatistic,
    BYTE byTSR0,
    BYTE byTSR1,
    PBYTE pbyBuffer,
    UINT cbFrameLength,
    UINT uIdx
    )
{
    PWLAN_80211HDR_A4 pHeader;
    PBYTE pbyDestAddr;
    BYTE byTSR0_NCR = byTSR0 & TSR0_NCR;



    pHeader = (PWLAN_80211HDR_A4) pbyBuffer;
    if (WLAN_GET_FC_TODS(pHeader->wFrameCtl) == 0) {
        pbyDestAddr = &(pHeader->abyAddr1[0]);
    }
    else {
        pbyDestAddr = &(pHeader->abyAddr3[0]);
    }

    pStatistic->dwTsrTxPacket[uIdx]++;
    pStatistic->dwTsrTxOctet[uIdx] += cbFrameLength;

    if (byTSR0_NCR != 0) {
        pStatistic->dwTsrRetry[uIdx]++;
        pStatistic->dwTsrTotalRetry[uIdx] += byTSR0_NCR;

        if (byTSR0_NCR == 1)
            pStatistic->dwTsrOnceRetry[uIdx]++;
        else
            pStatistic->dwTsrMoreThanOnceRetry[uIdx]++;
    }

    if ((byTSR1&(TSR1_TERR|TSR1_RETRYTMO|TSR1_TMO|ACK_DATA)) == 0) {
        pStatistic->ullTsrOK[uIdx]++;
        pStatistic->CustomStat.ullTsrAllOK =
            (pStatistic->ullTsrOK[TYPE_AC0DMA] + pStatistic->ullTsrOK[TYPE_TXDMA0]);

        if (IS_BROADCAST_ADDRESS(pbyDestAddr)) {
            pStatistic->ullTxBroadcastFrames[uIdx]++;
            pStatistic->ullTxBroadcastBytes[uIdx] += (ULONGLONG)cbFrameLength;
        }
        else if (IS_MULTICAST_ADDRESS(pbyDestAddr)) {
            pStatistic->ullTxMulticastFrames[uIdx]++;
            pStatistic->ullTxMulticastBytes[uIdx] += (ULONGLONG)cbFrameLength;
        }
        else {
            pStatistic->ullTxDirectedFrames[uIdx]++;
            pStatistic->ullTxDirectedBytes[uIdx] += (ULONGLONG)cbFrameLength;
        }
    }
    else {
        if (byTSR1 & TSR1_TERR)
            pStatistic->dwTsrErr[uIdx]++;
        if (byTSR1 & TSR1_RETRYTMO)
            pStatistic->dwTsrRetryTimeout[uIdx]++;
        if (byTSR1 & TSR1_TMO)
            pStatistic->dwTsrTransmitTimeout[uIdx]++;
        if (byTSR1 & ACK_DATA)
            pStatistic->dwTsrACKData[uIdx]++;
    }

    if (IS_BROADCAST_ADDRESS(pbyDestAddr))
        pStatistic->dwTsrBroadcast[uIdx]++;
    else if (IS_MULTICAST_ADDRESS(pbyDestAddr))
        pStatistic->dwTsrMulticast[uIdx]++;
    else
        pStatistic->dwTsrDirected[uIdx]++;

}
