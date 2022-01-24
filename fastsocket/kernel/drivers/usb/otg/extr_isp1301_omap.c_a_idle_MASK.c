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
typedef  int u32 ;
struct TYPE_6__ {scalar_t__ state; int default_a; TYPE_2__* gadget; TYPE_1__* host; } ;
struct isp1301 {int last_otg_ctrl; TYPE_3__ otg; } ;
struct TYPE_5__ {int is_a_peripheral; } ;
struct TYPE_4__ {scalar_t__ is_b_host; } ;

/* Variables and functions */
 int /*<<< orphan*/  OTG_CTRL ; 
 scalar_t__ OTG_STATE_A_IDLE ; 
 int OTG_XCEIV_OUTPUTS ; 
 int /*<<< orphan*/  FUNC0 (struct isp1301*) ; 
 int /*<<< orphan*/  FUNC1 (struct isp1301*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct isp1301*) ; 

__attribute__((used)) static void FUNC6(struct isp1301 *isp, const char *tag)
{
	u32 l;

	if (isp->otg.state == OTG_STATE_A_IDLE)
		return;

	isp->otg.default_a = 1;
	if (isp->otg.host) {
		isp->otg.host->is_b_host = 0;
		FUNC1(isp);
	}
	if (isp->otg.gadget) {
		isp->otg.gadget->is_a_peripheral = 1;
		FUNC0(isp);
	}
	isp->otg.state = OTG_STATE_A_IDLE;
	l = FUNC2(OTG_CTRL) & OTG_XCEIV_OUTPUTS;
	FUNC3(l, OTG_CTRL);
	isp->last_otg_ctrl = l;
	FUNC4("  --> %s/%s\n", FUNC5(isp), tag);
}