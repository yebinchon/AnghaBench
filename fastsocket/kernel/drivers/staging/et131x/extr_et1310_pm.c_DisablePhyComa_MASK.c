#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_4__ {int /*<<< orphan*/  PowerDownDuplex; int /*<<< orphan*/  PowerDownSpeed; } ;
struct et131x_adapter {int /*<<< orphan*/  Flags; TYPE_1__ PoMgmt; int /*<<< orphan*/  AiForceDpx; int /*<<< orphan*/  AiForceSpeed; TYPE_3__* regs; } ;
struct TYPE_5__ {int /*<<< orphan*/  pm_csr; } ;
struct TYPE_6__ {TYPE_2__ global; } ;

/* Variables and functions */
 int /*<<< orphan*/  ET_PMCSR_INIT ; 
 int /*<<< orphan*/  ET_PM_PHY_SW_COMA ; 
 int /*<<< orphan*/  FUNC0 (struct et131x_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct et131x_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct et131x_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct et131x_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct et131x_adapter*) ; 
 int /*<<< orphan*/  fMP_ADAPTER_LOWER_POWER ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC7(struct et131x_adapter *etdev)
{
	u32 GlobalPmCSR;

	GlobalPmCSR = FUNC5(&etdev->regs->global.pm_csr);

	/* Disable phy_sw_coma register and re-enable JAGCore clocks */
	GlobalPmCSR |= ET_PMCSR_INIT;
	GlobalPmCSR &= ~ET_PM_PHY_SW_COMA;
	FUNC6(GlobalPmCSR, &etdev->regs->global.pm_csr);

	/* Restore the GbE PHY speed and duplex modes;
	 * Reset JAGCore; re-configure and initialize JAGCore and gigE PHY
	 */
	etdev->AiForceSpeed = etdev->PoMgmt.PowerDownSpeed;
	etdev->AiForceDpx = etdev->PoMgmt.PowerDownDuplex;

	/* Re-initialize the send structures */
	FUNC1(etdev);

	/* Reset the RFD list and re-start RU  */
	FUNC2(etdev);

	/* Bring the device back to the state it was during init prior to
	 * autonegotiation being complete.  This way, when we get the auto-neg
	 * complete interrupt, we can complete init by calling ConfigMacREGS2.
	 */
	FUNC4(etdev);

	/* setup et1310 as per the documentation ?? */
	FUNC0(etdev);

	/* Allow Tx to restart */
	etdev->Flags &= ~fMP_ADAPTER_LOWER_POWER;

	/* Need to re-enable Rx. */
	FUNC3(etdev);
}