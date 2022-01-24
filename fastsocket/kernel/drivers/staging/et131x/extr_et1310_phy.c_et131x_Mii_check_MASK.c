#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  void* uint32_t ;
typedef  int uint16_t ;
struct TYPE_9__ {int TransPhyComaModeOnBoot; } ;
struct et131x_adapter {scalar_t__ MediaState; int Flags; int RegistryPhyLoopbk; scalar_t__ linkspeed; int RegistryPhyComa; int AiForceDpx; int RegistryJumboPacket; TYPE_3__ PoMgmt; void* duplex_mode; int /*<<< orphan*/  netdev; int /*<<< orphan*/  Lock; TYPE_1__* pdev; } ;
struct TYPE_8__ {scalar_t__ auto_neg_complete; scalar_t__ link_status; } ;
struct TYPE_10__ {TYPE_2__ bits; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;
typedef  TYPE_4__ MI_BMSR_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct et131x_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct et131x_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct et131x_adapter*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct et131x_adapter*,int /*<<< orphan*/ *,void**,void**,void**,void**,void**,void**) ; 
 int /*<<< orphan*/  FUNC4 (struct et131x_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct et131x_adapter*,int,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct et131x_adapter*,int,int) ; 
 scalar_t__ NETIF_STATUS_MEDIA_CONNECT ; 
 scalar_t__ NETIF_STATUS_MEDIA_DISCONNECT ; 
 int /*<<< orphan*/  FUNC7 (struct et131x_adapter*) ; 
 scalar_t__ TRUEPHY_SPEED_1000MBPS ; 
 scalar_t__ TRUEPHY_SPEED_10MBPS ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct et131x_adapter*) ; 
 int /*<<< orphan*/  FUNC10 (struct et131x_adapter*) ; 
 int /*<<< orphan*/  FUNC11 (struct et131x_adapter*) ; 
 int /*<<< orphan*/  FUNC12 (struct et131x_adapter*) ; 
 int /*<<< orphan*/  FUNC13 (struct et131x_adapter*) ; 
 int fMP_ADAPTER_LINK_DETECTION ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC18(struct et131x_adapter *etdev,
		      MI_BMSR_t bmsr, MI_BMSR_t bmsr_ints)
{
	uint8_t link_status;
	uint32_t autoneg_status;
	uint32_t speed;
	uint32_t duplex;
	uint32_t mdi_mdix;
	uint32_t masterslave;
	uint32_t polarity;
	unsigned long flags;

	if (bmsr_ints.bits.link_status) {
		if (bmsr.bits.link_status) {
			etdev->PoMgmt.TransPhyComaModeOnBoot = 20;

			/* Update our state variables and indicate the
			 * connected state
			 */
			FUNC16(&etdev->Lock, flags);

			etdev->MediaState = NETIF_STATUS_MEDIA_CONNECT;
			etdev->Flags &= ~fMP_ADAPTER_LINK_DETECTION;

			FUNC17(&etdev->Lock, flags);

			/* Don't indicate state if we're in loopback mode */
			if (etdev->RegistryPhyLoopbk == false)
				FUNC15(etdev->netdev);
		} else {
			FUNC8(&etdev->pdev->dev,
			    "Link down - cable problem ?\n");

			if (etdev->linkspeed == TRUEPHY_SPEED_10MBPS) {
				/* NOTE - Is there a way to query this without
				 * TruePHY?
				 * && TRU_QueryCoreType(etdev->hTruePhy, 0) == EMI_TRUEPHY_A13O) {
				 */
				uint16_t Register18;

				FUNC5(etdev, 0x12, &Register18);
				FUNC6(etdev, 0x12, Register18 | 0x4);
				FUNC6(etdev, 0x10, Register18 | 0x8402);
				FUNC6(etdev, 0x11, Register18 | 511);
				FUNC6(etdev, 0x12, Register18);
			}

			/* For the first N seconds of life, we are in "link
			 * detection" When we are in this state, we should
			 * only report "connected". When the LinkDetection
			 * Timer expires, we can report disconnected (handled
			 * in the LinkDetectionDPC).
			 */
			if (!(etdev->Flags & fMP_ADAPTER_LINK_DETECTION) ||
			  (etdev->MediaState == NETIF_STATUS_MEDIA_DISCONNECT)) {
				FUNC16(&etdev->Lock, flags);
				etdev->MediaState =
				    NETIF_STATUS_MEDIA_DISCONNECT;
				FUNC17(&etdev->Lock,
						       flags);

				/* Only indicate state if we're in loopback
				 * mode
				 */
				if (etdev->RegistryPhyLoopbk == false)
					FUNC14(etdev->netdev);
			}

			etdev->linkspeed = 0;
			etdev->duplex_mode = 0;

			/* Free the packets being actively sent & stopped */
			FUNC10(etdev);

			/* Re-initialize the send structures */
			FUNC11(etdev);

			/* Reset the RFD list and re-start RU */
			FUNC12(etdev);

			/*
			 * Bring the device back to the state it was during
			 * init prior to autonegotiation being complete. This
			 * way, when we get the auto-neg complete interrupt,
			 * we can complete init by calling ConfigMacREGS2.
			 */
			FUNC13(etdev);

			/* Setup ET1310 as per the documentation */
			FUNC9(etdev);

			/* Setup the PHY into coma mode until the cable is
			 * plugged back in
			 */
			if (etdev->RegistryPhyComa == 1)
				FUNC4(etdev);
		}
	}

	if (bmsr_ints.bits.auto_neg_complete ||
	    (etdev->AiForceDpx == 3 && bmsr_ints.bits.link_status)) {
		if (bmsr.bits.auto_neg_complete || etdev->AiForceDpx == 3) {
			FUNC3(etdev,
					     &link_status, &autoneg_status,
					     &speed, &duplex, &mdi_mdix,
					     &masterslave, &polarity);

			etdev->linkspeed = speed;
			etdev->duplex_mode = duplex;

			etdev->PoMgmt.TransPhyComaModeOnBoot = 20;

			if (etdev->linkspeed == TRUEPHY_SPEED_10MBPS) {
				/*
				 * NOTE - Is there a way to query this without
				 * TruePHY?
				 * && TRU_QueryCoreType(etdev->hTruePhy, 0)== EMI_TRUEPHY_A13O) {
				 */
				uint16_t Register18;

				FUNC5(etdev, 0x12, &Register18);
				FUNC6(etdev, 0x12, Register18 | 0x4);
				FUNC6(etdev, 0x10, Register18 | 0x8402);
				FUNC6(etdev, 0x11, Register18 | 511);
				FUNC6(etdev, 0x12, Register18);
			}

			FUNC0(etdev);

			if (etdev->linkspeed == TRUEPHY_SPEED_1000MBPS &&
					etdev->RegistryJumboPacket > 2048)
				FUNC2(etdev, 0x16, 0xcfff,
								   0x2000);

			FUNC7(etdev);
			FUNC1(etdev);
		}
	}
}