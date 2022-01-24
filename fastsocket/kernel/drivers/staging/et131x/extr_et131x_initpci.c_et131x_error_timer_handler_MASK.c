#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_11__ {int /*<<< orphan*/  link_status; } ;
struct TYPE_12__ {TYPE_5__ bits; } ;
struct TYPE_10__ {int TransPhyComaModeOnBoot; } ;
struct et131x_adapter {int /*<<< orphan*/  ErrorTimer; scalar_t__ RegistryPhyComa; TYPE_6__ Bmsr; TYPE_4__ PoMgmt; TYPE_3__* pdev; TYPE_2__* regs; } ;
struct TYPE_9__ {int /*<<< orphan*/  dev; } ;
struct TYPE_7__ {int /*<<< orphan*/  pm_csr; } ;
struct TYPE_8__ {TYPE_1__ global; } ;

/* Variables and functions */
 int ET_PM_PHY_SW_COMA ; 
 int /*<<< orphan*/  FUNC0 (struct et131x_adapter*) ; 
 int HZ ; 
 int TX_ERROR_PERIOD ; 
 int /*<<< orphan*/  FUNC1 (struct et131x_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct et131x_adapter*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(unsigned long data)
{
	struct et131x_adapter *etdev = (struct et131x_adapter *) data;
	u32 pm_csr;

	pm_csr = FUNC5(&etdev->regs->global.pm_csr);

	if ((pm_csr & ET_PM_PHY_SW_COMA) == 0)
		FUNC1(etdev);
	else
		FUNC2(&etdev->pdev->dev,
		    "No interrupts, in PHY coma, pm_csr = 0x%x\n", pm_csr);

	if (!etdev->Bmsr.bits.link_status &&
	    etdev->RegistryPhyComa &&
	    etdev->PoMgmt.TransPhyComaModeOnBoot < 11) {
		etdev->PoMgmt.TransPhyComaModeOnBoot++;
	}

	if (etdev->PoMgmt.TransPhyComaModeOnBoot == 10) {
		if (!etdev->Bmsr.bits.link_status
		    && etdev->RegistryPhyComa) {
			if ((pm_csr & ET_PM_PHY_SW_COMA) == 0) {
				/* NOTE - This was originally a 'sync with
				 *  interrupt'. How to do that under Linux?
				 */
				FUNC3(etdev);
				FUNC0(etdev);
			}
		}
	}

	/* This is a periodic timer, so reschedule */
	FUNC4(&etdev->ErrorTimer, jiffies +
					  TX_ERROR_PERIOD * HZ / 1000);
}