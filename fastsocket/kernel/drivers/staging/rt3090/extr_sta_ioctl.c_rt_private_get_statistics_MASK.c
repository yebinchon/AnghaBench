#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_32__   TYPE_9__ ;
typedef  struct TYPE_31__   TYPE_8__ ;
typedef  struct TYPE_30__   TYPE_7__ ;
typedef  struct TYPE_29__   TYPE_6__ ;
typedef  struct TYPE_28__   TYPE_5__ ;
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;
typedef  struct TYPE_23__   TYPE_15__ ;
typedef  struct TYPE_22__   TYPE_14__ ;
typedef  struct TYPE_21__   TYPE_13__ ;
typedef  struct TYPE_20__   TYPE_12__ ;
typedef  struct TYPE_19__   TYPE_11__ ;
typedef  struct TYPE_18__   TYPE_10__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {int length; } ;
typedef  int ULONG ;
struct TYPE_32__ {scalar_t__ QuadPart; } ;
struct TYPE_31__ {scalar_t__ RxNoBuffer; } ;
struct TYPE_30__ {scalar_t__ QuadPart; } ;
struct TYPE_29__ {scalar_t__ QuadPart; } ;
struct TYPE_28__ {scalar_t__ QuadPart; } ;
struct TYPE_27__ {scalar_t__ QuadPart; } ;
struct TYPE_26__ {scalar_t__ QuadPart; } ;
struct TYPE_25__ {scalar_t__ QuadPart; } ;
struct TYPE_24__ {scalar_t__ QuadPart; } ;
struct TYPE_21__ {scalar_t__ LastRssi2; scalar_t__ LastRssi1; scalar_t__ LastRssi0; } ;
struct TYPE_22__ {int WpaSupplicantUP; TYPE_13__ RssiSample; } ;
struct TYPE_20__ {scalar_t__ RxAntennaSel; scalar_t__ LastRssi0; scalar_t__ LastRssi2; scalar_t__ LastRssi1; scalar_t__ TxDoneCount; } ;
struct TYPE_19__ {scalar_t__ OneSecFalseCCACnt; } ;
struct TYPE_18__ {TYPE_9__ FrameDuplicateCount; TYPE_7__ FCSErrorCount; TYPE_6__ ReceivedFragmentCount; TYPE_5__ RTSFailureCount; TYPE_4__ RTSSuccessCount; TYPE_3__ FailedCount; TYPE_2__ RetryCount; TYPE_1__ TransmittedFragmentCount; } ;
struct TYPE_23__ {TYPE_14__ StaCfg; scalar_t__ BbpRssiToDbmDelta; TYPE_12__ ate; TYPE_11__ RalinkCounters; TYPE_10__ WlanCounters; TYPE_8__ Counters8023; } ;
typedef  TYPE_15__* PRTMP_ADAPTER ;
typedef  int LONG ;
typedef  int INT ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_15__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int EIO ; 
 int /*<<< orphan*/  IW_PRIV_SIZE_MASK ; 
 TYPE_15__* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  RT_DEBUG_TRACE ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,...) ; 
 int FUNC5 (char*) ; 

__attribute__((used)) static int
FUNC6(struct net_device *dev, struct iw_request_info *info,
		struct iw_point *wrq, char *extra)
{
	INT				Status = 0;
    PRTMP_ADAPTER   pAd = FUNC2(dev);

    if (extra == NULL)
    {
        wrq->length = 0;
        return -EIO;
    }

    FUNC3(extra, 0x00, IW_PRIV_SIZE_MASK);
    FUNC4(extra, "\n\n");

#ifdef RALINK_ATE
	if (ATE_ON(pAd))
	{
	    sprintf(extra+strlen(extra), "Tx success                      = %ld\n", (ULONG)pAd->ate.TxDoneCount);
	    //sprintf(extra+strlen(extra), "Tx success without retry        = %ld\n", (ULONG)pAd->ate.TxDoneCount);
	}
	else
#endif // RALINK_ATE //
	{
    FUNC4(extra+FUNC5(extra), "Tx success                      = %ld\n", (ULONG)pAd->WlanCounters.TransmittedFragmentCount.QuadPart);
    FUNC4(extra+FUNC5(extra), "Tx success without retry        = %ld\n", (ULONG)pAd->WlanCounters.TransmittedFragmentCount.QuadPart - (ULONG)pAd->WlanCounters.RetryCount.QuadPart);
	}
    FUNC4(extra+FUNC5(extra), "Tx success after retry          = %ld\n", (ULONG)pAd->WlanCounters.RetryCount.QuadPart);
    FUNC4(extra+FUNC5(extra), "Tx fail to Rcv ACK after retry  = %ld\n", (ULONG)pAd->WlanCounters.FailedCount.QuadPart);
    FUNC4(extra+FUNC5(extra), "RTS Success Rcv CTS             = %ld\n", (ULONG)pAd->WlanCounters.RTSSuccessCount.QuadPart);
    FUNC4(extra+FUNC5(extra), "RTS Fail Rcv CTS                = %ld\n", (ULONG)pAd->WlanCounters.RTSFailureCount.QuadPart);

    FUNC4(extra+FUNC5(extra), "Rx success                      = %ld\n", (ULONG)pAd->WlanCounters.ReceivedFragmentCount.QuadPart);
    FUNC4(extra+FUNC5(extra), "Rx with CRC                     = %ld\n", (ULONG)pAd->WlanCounters.FCSErrorCount.QuadPart);
    FUNC4(extra+FUNC5(extra), "Rx drop due to out of resource  = %ld\n", (ULONG)pAd->Counters8023.RxNoBuffer);
    FUNC4(extra+FUNC5(extra), "Rx duplicate frame              = %ld\n", (ULONG)pAd->WlanCounters.FrameDuplicateCount.QuadPart);

    FUNC4(extra+FUNC5(extra), "False CCA (one second)          = %ld\n", (ULONG)pAd->RalinkCounters.OneSecFalseCCACnt);

#ifdef RALINK_ATE
	if (ATE_ON(pAd))
	{
		if (pAd->ate.RxAntennaSel == 0)
		{
		sprintf(extra+strlen(extra), "RSSI-A                          = %ld\n", (LONG)(pAd->ate.LastRssi0 - pAd->BbpRssiToDbmDelta));
			sprintf(extra+strlen(extra), "RSSI-B (if available)           = %ld\n", (LONG)(pAd->ate.LastRssi1 - pAd->BbpRssiToDbmDelta));
			sprintf(extra+strlen(extra), "RSSI-C (if available)           = %ld\n\n", (LONG)(pAd->ate.LastRssi2 - pAd->BbpRssiToDbmDelta));
		}
		else
		{
		sprintf(extra+strlen(extra), "RSSI                            = %ld\n", (LONG)(pAd->ate.LastRssi0 - pAd->BbpRssiToDbmDelta));
		}
	}
	else
#endif // RALINK_ATE //
	{
	FUNC4(extra+FUNC5(extra), "RSSI-A                          = %ld\n", (LONG)(pAd->StaCfg.RssiSample.LastRssi0 - pAd->BbpRssiToDbmDelta));
        FUNC4(extra+FUNC5(extra), "RSSI-B (if available)           = %ld\n", (LONG)(pAd->StaCfg.RssiSample.LastRssi1 - pAd->BbpRssiToDbmDelta));
        FUNC4(extra+FUNC5(extra), "RSSI-C (if available)           = %ld\n\n", (LONG)(pAd->StaCfg.RssiSample.LastRssi2 - pAd->BbpRssiToDbmDelta));
	}
#ifdef WPA_SUPPLICANT_SUPPORT
    sprintf(extra+strlen(extra), "WpaSupplicantUP                 = %d\n\n", pAd->StaCfg.WpaSupplicantUP);
#endif // WPA_SUPPLICANT_SUPPORT //



    wrq->length = FUNC5(extra) + 1; // 1: size of '\0'
    FUNC1(RT_DEBUG_TRACE, ("<== rt_private_get_statistics, wrq->length = %d\n", wrq->length));

    return Status;
}