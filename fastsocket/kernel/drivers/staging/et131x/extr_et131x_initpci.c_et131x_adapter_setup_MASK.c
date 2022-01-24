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
struct et131x_adapter {TYPE_1__* pdev; TYPE_2__* regs; } ;
struct TYPE_6__ {int /*<<< orphan*/  mmc_ctrl; } ;
struct TYPE_5__ {TYPE_3__ mmc; } ;
struct TYPE_4__ {scalar_t__ device; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct et131x_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct et131x_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct et131x_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct et131x_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct et131x_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct et131x_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct et131x_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct et131x_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct et131x_adapter*) ; 
 int /*<<< orphan*/  FUNC9 (struct et131x_adapter*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct et131x_adapter*) ; 
 scalar_t__ ET131X_PCI_DEVICE_ID_FAST ; 
 int /*<<< orphan*/  ET_MMC_ENABLE ; 
 int /*<<< orphan*/  TRUEPHY_ADV_DUPLEX_FULL ; 
 int /*<<< orphan*/  TRUEPHY_ADV_DUPLEX_NONE ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC12 (struct et131x_adapter*) ; 
 int FUNC13 (struct et131x_adapter*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC15(struct et131x_adapter *etdev)
{
	int status = 0;

	/* Configure the JAGCore */
	FUNC0(etdev);

	FUNC1(etdev);

	/* Configure the MMC registers */
	/* All we need to do is initialize the Memory Control Register */
	FUNC14(ET_MMC_ENABLE, &etdev->regs->mmc.mmc_ctrl);

	FUNC4(etdev);
	FUNC6(etdev);

	FUNC3(etdev);
	FUNC5(etdev);

	FUNC2(etdev);

	/* Move the following code to Timer function?? */
	status = FUNC13(etdev);

	if (status != 0)
		FUNC11(&etdev->pdev->dev, "Could not find the xcvr\n");

	/* Prepare the TRUEPHY library. */
	FUNC8(etdev);

	/* Reset the phy now so changes take place */
	FUNC10(etdev);

	/* Power down PHY */
	FUNC9(etdev, 1);

	/*
	 * We need to turn off 1000 base half dulplex, the mac does not
	 * support it. For the 10/100 part, turn off all gig advertisement
	 */
	if (etdev->pdev->device != ET131X_PCI_DEVICE_ID_FAST)
		FUNC7(etdev, TRUEPHY_ADV_DUPLEX_FULL);
	else
		FUNC7(etdev, TRUEPHY_ADV_DUPLEX_NONE);

	/* Power up PHY */
	FUNC9(etdev, 0);

	FUNC12(etdev);
;	return status;
}