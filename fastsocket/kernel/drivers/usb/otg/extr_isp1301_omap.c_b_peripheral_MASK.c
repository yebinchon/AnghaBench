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
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  state; int /*<<< orphan*/  gadget; } ;
struct isp1301 {TYPE_1__ otg; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISP1301_OTG_CONTROL_1 ; 
 int /*<<< orphan*/  OTG1_DP_PULLDOWN ; 
 int /*<<< orphan*/  OTG1_DP_PULLUP ; 
 int /*<<< orphan*/  OTG_CTRL ; 
 int /*<<< orphan*/  OTG_STATE_B_PERIPHERAL ; 
 int OTG_XCEIV_OUTPUTS ; 
 int /*<<< orphan*/  FUNC0 (struct isp1301*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct isp1301*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct isp1301*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct isp1301*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct isp1301*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct isp1301 *isp)
{
	u32 l;

	l = FUNC4(OTG_CTRL) & OTG_XCEIV_OUTPUTS;
	FUNC5(l, OTG_CTRL);

	FUNC8(isp->otg.gadget);

#ifdef	CONFIG_USB_OTG
	enable_vbus_draw(isp, 8);
	otg_update_isp(isp);
#else
	FUNC1(isp, 100);
	/* UDC driver just set OTG_BSESSVLD */
	FUNC3(isp, ISP1301_OTG_CONTROL_1, OTG1_DP_PULLUP);
	FUNC2(isp, ISP1301_OTG_CONTROL_1, OTG1_DP_PULLDOWN);
	isp->otg.state = OTG_STATE_B_PERIPHERAL;
	FUNC7("  --> b_peripheral\n");
	FUNC0(isp, "2periph");
#endif
}