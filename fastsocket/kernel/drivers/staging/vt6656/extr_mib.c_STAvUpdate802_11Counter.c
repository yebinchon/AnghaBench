
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* ULONGLONG ;
struct TYPE_6__ {void* MulticastReceivedFrameCount; int FCSErrorCount; int ACKFailureCount; int RTSFailureCount; int RTSSuccessCount; void* MultipleRetryCount; void* RetryCount; void* FailedCount; void* MulticastTransmittedFrameCount; } ;
struct TYPE_5__ {scalar_t__ dwRsrMulticast; scalar_t__ dwRsrBroadcast; scalar_t__ dwTsrMoreThanOnceRetry; scalar_t__ dwTsrRetry; scalar_t__ dwTsrErr; scalar_t__ dwTsrMulticast; scalar_t__ dwTsrBroadcast; } ;
typedef TYPE_1__* PSStatCounter ;
typedef TYPE_2__* PSDot11Counters ;
typedef scalar_t__ BYTE ;



void
STAvUpdate802_11Counter(
    PSDot11Counters p802_11Counter,
    PSStatCounter pStatistic,
    BYTE byRTSSuccess,
    BYTE byRTSFail,
    BYTE byACKFail,
    BYTE byFCSErr
    )
{

    p802_11Counter->MulticastTransmittedFrameCount = (ULONGLONG) (pStatistic->dwTsrBroadcast +
                                                                  pStatistic->dwTsrMulticast);
    p802_11Counter->FailedCount = (ULONGLONG) (pStatistic->dwTsrErr);
    p802_11Counter->RetryCount = (ULONGLONG) (pStatistic->dwTsrRetry);
    p802_11Counter->MultipleRetryCount = (ULONGLONG) (pStatistic->dwTsrMoreThanOnceRetry);

    p802_11Counter->RTSSuccessCount += (ULONGLONG) byRTSSuccess;
    p802_11Counter->RTSFailureCount += (ULONGLONG) byRTSFail;
    p802_11Counter->ACKFailureCount += (ULONGLONG) byACKFail;
    p802_11Counter->FCSErrorCount += (ULONGLONG) byFCSErr;

    p802_11Counter->MulticastReceivedFrameCount = (ULONGLONG) (pStatistic->dwRsrBroadcast +
                                                               pStatistic->dwRsrMulticast);
}
