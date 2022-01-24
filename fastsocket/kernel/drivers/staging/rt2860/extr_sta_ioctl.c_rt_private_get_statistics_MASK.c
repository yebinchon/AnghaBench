#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_9__ ;
typedef  struct TYPE_27__   TYPE_8__ ;
typedef  struct TYPE_26__   TYPE_7__ ;
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_14__ ;
typedef  struct TYPE_18__   TYPE_13__ ;
typedef  struct TYPE_17__   TYPE_12__ ;
typedef  struct TYPE_16__   TYPE_11__ ;
typedef  struct TYPE_15__   TYPE_10__ ;

/* Type definitions */
struct net_device {TYPE_14__* ml_priv; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {int length; } ;
typedef  int ULONG ;
struct TYPE_28__ {scalar_t__ QuadPart; } ;
struct TYPE_27__ {scalar_t__ RxNoBuffer; } ;
struct TYPE_26__ {scalar_t__ QuadPart; } ;
struct TYPE_25__ {scalar_t__ QuadPart; } ;
struct TYPE_24__ {scalar_t__ QuadPart; } ;
struct TYPE_23__ {scalar_t__ QuadPart; } ;
struct TYPE_22__ {scalar_t__ QuadPart; } ;
struct TYPE_21__ {scalar_t__ QuadPart; } ;
struct TYPE_20__ {scalar_t__ QuadPart; } ;
struct TYPE_17__ {scalar_t__ LastRssi2; scalar_t__ LastRssi1; scalar_t__ LastRssi0; } ;
struct TYPE_18__ {int WpaSupplicantUP; TYPE_12__ RssiSample; } ;
struct TYPE_16__ {scalar_t__ OneSecFalseCCACnt; } ;
struct TYPE_15__ {TYPE_9__ FrameDuplicateCount; TYPE_7__ FCSErrorCount; TYPE_6__ ReceivedFragmentCount; TYPE_5__ RTSFailureCount; TYPE_4__ RTSSuccessCount; TYPE_3__ FailedCount; TYPE_2__ RetryCount; TYPE_1__ TransmittedFragmentCount; } ;
struct TYPE_19__ {TYPE_13__ StaCfg; scalar_t__ BbpRssiToDbmDelta; TYPE_11__ RalinkCounters; TYPE_10__ WlanCounters; TYPE_8__ Counters8023; } ;
typedef  TYPE_14__* PRTMP_ADAPTER ;
typedef  int LONG ;
typedef  int INT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int EIO ; 
 int /*<<< orphan*/  IW_PRIV_SIZE_MASK ; 
 int /*<<< orphan*/  RT_DEBUG_TRACE ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,...) ; 
 int FUNC3 (char*) ; 

__attribute__((used)) static int
FUNC4(struct net_device *dev, struct iw_request_info *info,
		struct iw_point *wrq, char *extra)
{
	INT				Status = 0;
    PRTMP_ADAPTER   pAd = dev->ml_priv;

    if (extra == NULL)
    {
        wrq->length = 0;
        return -EIO;
    }

    FUNC1(extra, 0x00, IW_PRIV_SIZE_MASK);
    FUNC2(extra, "\n\n");

	{
    FUNC2(extra+FUNC3(extra), "Tx success                      = %ld\n", (ULONG)pAd->WlanCounters.TransmittedFragmentCount.QuadPart);
    FUNC2(extra+FUNC3(extra), "Tx success without retry        = %ld\n", (ULONG)pAd->WlanCounters.TransmittedFragmentCount.QuadPart - (ULONG)pAd->WlanCounters.RetryCount.QuadPart);
	}
    FUNC2(extra+FUNC3(extra), "Tx success after retry          = %ld\n", (ULONG)pAd->WlanCounters.RetryCount.QuadPart);
    FUNC2(extra+FUNC3(extra), "Tx fail to Rcv ACK after retry  = %ld\n", (ULONG)pAd->WlanCounters.FailedCount.QuadPart);
    FUNC2(extra+FUNC3(extra), "RTS Success Rcv CTS             = %ld\n", (ULONG)pAd->WlanCounters.RTSSuccessCount.QuadPart);
    FUNC2(extra+FUNC3(extra), "RTS Fail Rcv CTS                = %ld\n", (ULONG)pAd->WlanCounters.RTSFailureCount.QuadPart);

    FUNC2(extra+FUNC3(extra), "Rx success                      = %ld\n", (ULONG)pAd->WlanCounters.ReceivedFragmentCount.QuadPart);
    FUNC2(extra+FUNC3(extra), "Rx with CRC                     = %ld\n", (ULONG)pAd->WlanCounters.FCSErrorCount.QuadPart);
    FUNC2(extra+FUNC3(extra), "Rx drop due to out of resource  = %ld\n", (ULONG)pAd->Counters8023.RxNoBuffer);
    FUNC2(extra+FUNC3(extra), "Rx duplicate frame              = %ld\n", (ULONG)pAd->WlanCounters.FrameDuplicateCount.QuadPart);

    FUNC2(extra+FUNC3(extra), "False CCA (one second)          = %ld\n", (ULONG)pAd->RalinkCounters.OneSecFalseCCACnt);
	{
    	FUNC2(extra+FUNC3(extra), "RSSI-A                          = %ld\n", (LONG)(pAd->StaCfg.RssiSample.LastRssi0 - pAd->BbpRssiToDbmDelta));
        FUNC2(extra+FUNC3(extra), "RSSI-B (if available)           = %ld\n", (LONG)(pAd->StaCfg.RssiSample.LastRssi1 - pAd->BbpRssiToDbmDelta));
        FUNC2(extra+FUNC3(extra), "RSSI-C (if available)           = %ld\n\n", (LONG)(pAd->StaCfg.RssiSample.LastRssi2 - pAd->BbpRssiToDbmDelta));
	}
    FUNC2(extra+FUNC3(extra), "WpaSupplicantUP                 = %d\n\n", pAd->StaCfg.WpaSupplicantUP);

    wrq->length = FUNC3(extra) + 1; // 1: size of '\0'
    FUNC0(RT_DEBUG_TRACE, ("<== rt_private_get_statistics, wrq->length = %d\n", wrq->length));

    return Status;
}