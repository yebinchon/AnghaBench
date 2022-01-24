#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zdev_t ;
struct TYPE_3__ {int Hw_UnderrunCnt; int Hw_TotalRxFrm; int Hw_CRC32Cnt; int Hw_CRC16Cnt; int Hw_DecrypErr_UNI; int Hw_RxFIFOOverrun; int Hw_DecrypErr_Mul; int Hw_RetryCnt; int Hw_TotalTxFrm; int Hw_RxTimeOut; int Tx_MPDU; int BA_Fail; int Hw_Tx_AMPDU; int Hw_Tx_MPDU; int Hw_RxMPDU; int Hw_RxDropMPDU; int Hw_RxDelMPDU; int Hw_RxPhyMiscError; int Hw_RxPhyXRError; int Hw_RxPhyOFDMError; int Hw_RxPhyCCKError; int Hw_RxPhyHTError; int Hw_RxPhyTotalCount; } ;
struct TYPE_4__ {TYPE_1__ commTally; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZM_LV_0 ; 
 int /*<<< orphan*/  ZM_LV_1 ; 
 TYPE_2__* wd ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(zdev_t* dev)
{
    FUNC2(dev);

    FUNC1(ZM_LV_0, "Hw_UnderrunCnt    = ", wd->commTally.Hw_UnderrunCnt);
    FUNC1(ZM_LV_0, "Hw_TotalRxFrm     = ", wd->commTally.Hw_TotalRxFrm);
    FUNC1(ZM_LV_0, "Hw_CRC32Cnt       = ", wd->commTally.Hw_CRC32Cnt);
    FUNC1(ZM_LV_0, "Hw_CRC16Cnt       = ", wd->commTally.Hw_CRC16Cnt);
    FUNC1(ZM_LV_1, "Hw_DecrypErr_UNI  = ", wd->commTally.Hw_DecrypErr_UNI);
    FUNC1(ZM_LV_0, "Hw_RxFIFOOverrun  = ", wd->commTally.Hw_RxFIFOOverrun);
    FUNC1(ZM_LV_1, "Hw_DecrypErr_Mul  = ", wd->commTally.Hw_DecrypErr_Mul);
    FUNC1(ZM_LV_1, "Hw_RetryCnt       = ", wd->commTally.Hw_RetryCnt);
    FUNC1(ZM_LV_0, "Hw_TotalTxFrm     = ", wd->commTally.Hw_TotalTxFrm);
    FUNC1(ZM_LV_0, "Hw_RxTimeOut      = ", wd->commTally.Hw_RxTimeOut);
    FUNC1(ZM_LV_0, "Tx_MPDU           = ", wd->commTally.Tx_MPDU);
    FUNC1(ZM_LV_0, "BA_Fail           = ", wd->commTally.BA_Fail);
    FUNC1(ZM_LV_0, "Hw_Tx_AMPDU       = ", wd->commTally.Hw_Tx_AMPDU);
    FUNC1(ZM_LV_0, "Hw_Tx_MPDU        = ", wd->commTally.Hw_Tx_MPDU);

    FUNC1(ZM_LV_1, "Hw_RxMPDU          = ", wd->commTally.Hw_RxMPDU);
    FUNC1(ZM_LV_1, "Hw_RxDropMPDU      = ", wd->commTally.Hw_RxDropMPDU);
    FUNC1(ZM_LV_1, "Hw_RxDelMPDU       = ", wd->commTally.Hw_RxDelMPDU);
    FUNC1(ZM_LV_1, "Hw_RxPhyMiscError  = ", wd->commTally.Hw_RxPhyMiscError);
    FUNC1(ZM_LV_1, "Hw_RxPhyXRError    = ", wd->commTally.Hw_RxPhyXRError);
    FUNC1(ZM_LV_1, "Hw_RxPhyOFDMError  = ", wd->commTally.Hw_RxPhyOFDMError);
    FUNC1(ZM_LV_1, "Hw_RxPhyCCKError   = ", wd->commTally.Hw_RxPhyCCKError);
    FUNC1(ZM_LV_1, "Hw_RxPhyHTError    = ", wd->commTally.Hw_RxPhyHTError);
    FUNC1(ZM_LV_1, "Hw_RxPhyTotalCount = ", wd->commTally.Hw_RxPhyTotalCount);

    if (!((wd->commTally.Tx_MPDU == 0) && (wd->commTally.BA_Fail == 0)))
    {
        FUNC0("BA Fail Ratio(%)  = ", wd->commTally.BA_Fail * 100,
                (wd->commTally.BA_Fail + wd->commTally.Tx_MPDU));
    }

    if (!((wd->commTally.Hw_Tx_MPDU == 0) && (wd->commTally.Hw_Tx_AMPDU == 0)))
    {
        FUNC0("Avg Agg Number    = ",
                wd->commTally.Hw_Tx_MPDU, wd->commTally.Hw_Tx_AMPDU);
    }
}