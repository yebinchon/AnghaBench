#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ board_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 scalar_t__ CVMX_BOARD_TYPE_CN3005_EVB_HS5 ; 
 scalar_t__ CVMX_BOARD_TYPE_CN3010_EVB_HS5 ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int,int,int) ; 
 TYPE_1__* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 

int FUNC8(int interface)
{
	if (FUNC5()->board_type == CVMX_BOARD_TYPE_CN3005_EVB_HS5) {
		if (interface == 0) {
			/* Different config for switch port */
			FUNC7(FUNC1(1, interface), 0);
			FUNC7(FUNC0(1, interface), 0);
			/*
			 * Boards with gigabit WAN ports need a
			 * different setting that is compatible with
			 * 100 Mbit settings
			 */
			FUNC7(FUNC1(0, interface),
				       0xc);
			FUNC7(FUNC0(0, interface),
				       0xc);
		}
	} else if (FUNC5()->board_type ==
		   CVMX_BOARD_TYPE_CN3010_EVB_HS5) {
		/*
		 * Broadcom PHYs require differnet ASX
		 * clocks. Unfortunately many boards don't define a
		 * new board Id and simply mangle the
		 * CN3010_EVB_HS5
		 */
		if (interface == 0) {
			/*
			 * Some boards use a hacked up bootloader that
			 * identifies them as CN3010_EVB_HS5
			 * evaluation boards.  This leads to all kinds
			 * of configuration problems.  Detect one
			 * case, and print warning, while trying to do
			 * the right thing.
			 */
			int phy_addr = FUNC3(0);
			if (phy_addr != -1) {
				int phy_identifier =
				    FUNC4(phy_addr >> 8,
						   phy_addr & 0xff, 0x2);
				/* Is it a Broadcom PHY? */
				if (phy_identifier == 0x0143) {
					FUNC2("\n");
					FUNC2("ERROR:\n");
					FUNC2
					    ("ERROR: Board type is CVMX_BOARD_TYPE_CN3010_EVB_HS5, but Broadcom PHY found.\n");
					FUNC2
					    ("ERROR: The board type is mis-configured, and software malfunctions are likely.\n");
					FUNC2
					    ("ERROR: All boards require a unique board type to identify them.\n");
					FUNC2("ERROR:\n");
					FUNC2("\n");
					FUNC6(1000000000);
					FUNC7(FUNC0
						       (0, interface), 5);
					FUNC7(FUNC1
						       (0, interface), 5);
				}
			}
		}
	}
	return 0;
}