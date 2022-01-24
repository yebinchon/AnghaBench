#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zdev_t ;
typedef  int u8_t ;
typedef  int /*<<< orphan*/  u32_t ;
struct TYPE_7__ {scalar_t__ htCtrlBandwidth; TYPE_2__* oppositeInfo; } ;
struct TYPE_8__ {scalar_t__ wlanMode; int txMCS; int /*<<< orphan*/  CurrentTxRateKbps; TYPE_3__ sta; } ;
struct TYPE_5__ {int flag; int* operationRateSet; int operationRateCount; size_t currentRateIndex; } ;
struct TYPE_6__ {TYPE_1__ rcCell; } ;

/* Variables and functions */
 scalar_t__ ZM_MODE_INFRASTRUCTURE ; 
 int ZM_RC_TRAINED_BIT ; 
 TYPE_4__* wd ; 
 int /*<<< orphan*/ * zcRateIdToKbps20M ; 
 int /*<<< orphan*/ * zcRateIdToKbps40M ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

u32_t FUNC5(zdev_t *dev)
{
	u8_t rateId = 0xff;
	FUNC3(dev);
	FUNC1();

	/* If Tx rate had not been trained, return maximum Tx rate instead */
	if ((wd->wlanMode == ZM_MODE_INFRASTRUCTURE) &&
						(FUNC0(dev))) {
		FUNC2(dev);
		/* Not in fixed rate mode */
		if (wd->txMCS == 0xff) {
			if ((wd->sta.oppositeInfo[0].rcCell.flag &
							ZM_RC_TRAINED_BIT) == 0)
				rateId = wd->sta.oppositeInfo[0].rcCell. \
				operationRateSet[wd->sta.oppositeInfo[0]. \
				rcCell.operationRateCount-1];
			else
				rateId = wd->sta.oppositeInfo[0].rcCell. \
				operationRateSet[wd->sta.oppositeInfo[0]. \
				rcCell.currentRateIndex];
		}
		FUNC4(dev);
	}

	if (rateId != 0xff) {
		if (wd->sta.htCtrlBandwidth)
			return zcRateIdToKbps40M[rateId];
		else
			return zcRateIdToKbps20M[rateId];
	} else
		return wd->CurrentTxRateKbps;
}