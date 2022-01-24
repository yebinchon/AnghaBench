#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct et131x_adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct et131x_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct et131x_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct et131x_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct et131x_adapter*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct et131x_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct et131x_adapter*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct et131x_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUEPHY_ADV_DUPLEX_NONE ; 
 int /*<<< orphan*/  TRUEPHY_DUPLEX_FULL ; 
 int /*<<< orphan*/  TRUEPHY_SPEED_100MBPS ; 

void FUNC7(struct et131x_adapter *etdev)
{
	/* Power down PHY */
	FUNC5(etdev, 1);

	/* Disable autoneg */
	FUNC3(etdev, false);

	/* Disable all advertisement */
	FUNC0(etdev, TRUEPHY_ADV_DUPLEX_NONE);
	FUNC2(etdev, TRUEPHY_ADV_DUPLEX_NONE);
	FUNC1(etdev, TRUEPHY_ADV_DUPLEX_NONE);

	/* Force 100 Mbps */
	FUNC6(etdev, TRUEPHY_SPEED_100MBPS);

	/* Force Full duplex */
	FUNC4(etdev, TRUEPHY_DUPLEX_FULL);

	/* Power up PHY */
	FUNC5(etdev, 0);
}