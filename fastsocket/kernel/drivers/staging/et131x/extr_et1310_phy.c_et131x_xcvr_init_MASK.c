#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_7__ {scalar_t__ value; } ;
struct et131x_adapter {int* eepromData; int AiForceSpeed; int AiForceDpx; scalar_t__ RegistryFlowControl; TYPE_1__ Bmsr; } ;
struct TYPE_8__ {int int_en; int link_status; int autoneg_status; int led_tx_rx; int led_link; } ;
struct TYPE_9__ {int /*<<< orphan*/  value; TYPE_2__ bits; } ;
typedef  TYPE_3__ MI_LCR2_t ;
typedef  TYPE_3__ MI_ISR_t ;
typedef  TYPE_3__ MI_IMR_t ;

/* Variables and functions */
 scalar_t__ Both ; 
 int /*<<< orphan*/  FUNC0 (struct et131x_adapter*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct et131x_adapter*,int) ; 
 int /*<<< orphan*/  MI_REGS_t ; 
 int /*<<< orphan*/  FUNC2 (struct et131x_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct et131x_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct et131x_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct et131x_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct et131x_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct et131x_adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct et131x_adapter*) ; 
 int /*<<< orphan*/  FUNC9 (struct et131x_adapter*) ; 
 int /*<<< orphan*/  FUNC10 (struct et131x_adapter*) ; 
 int /*<<< orphan*/  TRUEPHY_BIT_CLEAR ; 
 int /*<<< orphan*/  TRUEPHY_BIT_SET ; 
 scalar_t__ TxOnly ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,TYPE_3__) ; 

__attribute__((used)) static int FUNC12(struct et131x_adapter *adapter)
{
	int status = 0;
	MI_IMR_t imr;
	MI_ISR_t isr;
	MI_LCR2_t lcr2;

	/* Zero out the adapter structure variable representing BMSR */
	adapter->Bmsr.value = 0;

	FUNC2(adapter, (uint8_t) FUNC11(MI_REGS_t, isr), &isr.value);

	FUNC2(adapter, (uint8_t) FUNC11(MI_REGS_t, imr), &imr.value);

	/* Set the link status interrupt only.  Bad behavior when link status
	 * and auto neg are set, we run into a nested interrupt problem
	 */
	imr.bits.int_en = 0x1;
	imr.bits.link_status = 0x1;
	imr.bits.autoneg_status = 0x1;

	FUNC3(adapter, (uint8_t) FUNC11(MI_REGS_t, imr), imr.value);

	/* Set the LED behavior such that LED 1 indicates speed (off =
	 * 10Mbits, blink = 100Mbits, on = 1000Mbits) and LED 2 indicates
	 * link and activity (on for link, blink off for activity).
	 *
	 * NOTE: Some customizations have been added here for specific
	 * vendors; The LED behavior is now determined by vendor data in the
	 * EEPROM. However, the above description is the default.
	 */
	if ((adapter->eepromData[1] & 0x4) == 0) {
		FUNC2(adapter, (uint8_t) FUNC11(MI_REGS_t, lcr2),
		       &lcr2.value);
		if ((adapter->eepromData[1] & 0x8) == 0)
			lcr2.bits.led_tx_rx = 0x3;
		else
			lcr2.bits.led_tx_rx = 0x4;
		lcr2.bits.led_link = 0xa;
		FUNC3(adapter, (uint8_t) FUNC11(MI_REGS_t, lcr2),
			lcr2.value);
	}

	/* Determine if we need to go into a force mode and set it */
	if (adapter->AiForceSpeed == 0 && adapter->AiForceDpx == 0) {
		if ((adapter->RegistryFlowControl == TxOnly) ||
		    (adapter->RegistryFlowControl == Both)) {
			FUNC0(adapter,
					      TRUEPHY_BIT_SET, 4, 11, NULL);
		} else {
			FUNC0(adapter,
					      TRUEPHY_BIT_CLEAR, 4, 11, NULL);
		}

		if (adapter->RegistryFlowControl == Both) {
			FUNC0(adapter,
					      TRUEPHY_BIT_SET, 4, 10, NULL);
		} else {
			FUNC0(adapter,
					      TRUEPHY_BIT_CLEAR, 4, 10, NULL);
		}

		/* Set the phy to autonegotiation */
		FUNC1(adapter, true);

		/* NOTE - Do we need this? */
		FUNC0(adapter, TRUEPHY_BIT_SET, 0, 9, NULL);
		return status;
	} else {
		FUNC1(adapter, false);

		/* Set to the correct force mode. */
		if (adapter->AiForceDpx != 1) {
			if ((adapter->RegistryFlowControl == TxOnly) ||
			    (adapter->RegistryFlowControl == Both)) {
				FUNC0(adapter,
						      TRUEPHY_BIT_SET, 4, 11,
						      NULL);
			} else {
				FUNC0(adapter,
						      TRUEPHY_BIT_CLEAR, 4, 11,
						      NULL);
			}

			if (adapter->RegistryFlowControl == Both) {
				FUNC0(adapter,
						      TRUEPHY_BIT_SET, 4, 10,
						      NULL);
			} else {
				FUNC0(adapter,
						      TRUEPHY_BIT_CLEAR, 4, 10,
						      NULL);
			}
		} else {
			FUNC0(adapter,
					      TRUEPHY_BIT_CLEAR, 4, 10, NULL);
			FUNC0(adapter,
					      TRUEPHY_BIT_CLEAR, 4, 11, NULL);
		}

		switch (adapter->AiForceSpeed) {
		case 10:
			if (adapter->AiForceDpx == 1)
				FUNC10(adapter);
			else if (adapter->AiForceDpx == 2)
				FUNC9(adapter);
			else
				FUNC8(adapter);
			break;
		case 100:
			if (adapter->AiForceDpx == 1)
				FUNC7(adapter);
			else if (adapter->AiForceDpx == 2)
				FUNC6(adapter);
			else
				FUNC5(adapter);
			break;
		case 1000:
			FUNC4(adapter);
			break;
		}

		return status;
	}
}