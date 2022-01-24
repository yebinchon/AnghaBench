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
typedef  int /*<<< orphan*/  u8 ;
struct twl4030_usb {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned long HZ ; 
 int /*<<< orphan*/  PHY_CLK_CTRL ; 
 int /*<<< orphan*/  PHY_CLK_CTRL_STS ; 
 int PHY_DPLL_CLK ; 
 int REQ_PHY_DPLL_CLK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 unsigned long jiffies ; 
 scalar_t__ FUNC2 (unsigned long,unsigned long) ; 
 int FUNC3 (struct twl4030_usb*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct twl4030_usb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct twl4030_usb *twl, int on)
{
	unsigned long timeout;
	int val = FUNC3(twl, PHY_CLK_CTRL);

	if (val >= 0) {
		if (on) {
			/* enable DPLL to access PHY registers over I2C */
			val |= REQ_PHY_DPLL_CLK;
			FUNC0(FUNC4(twl, PHY_CLK_CTRL,
						(u8)val) < 0);

			timeout = jiffies + HZ;
			while (!(FUNC3(twl, PHY_CLK_CTRL_STS) &
							PHY_DPLL_CLK)
				&& FUNC2(jiffies, timeout))
					FUNC5(10);
			if (!(FUNC3(twl, PHY_CLK_CTRL_STS) &
							PHY_DPLL_CLK))
				FUNC1(twl->dev, "Timeout setting T2 HSUSB "
						"PHY DPLL clock\n");
		} else {
			/* let ULPI control the DPLL clock */
			val &= ~REQ_PHY_DPLL_CLK;
			FUNC0(FUNC4(twl, PHY_CLK_CTRL,
						(u8)val) < 0);
		}
	}
}