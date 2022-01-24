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
struct TYPE_2__ {int /*<<< orphan*/  state; } ;
struct isp1301 {TYPE_1__ otg; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISP1301_MODE_CONTROL_1 ; 
 int /*<<< orphan*/  ISP1301_OTG_CONTROL_1 ; 
 int /*<<< orphan*/  MC1_DAT_SE0 ; 
 int /*<<< orphan*/  MC1_SUSPEND ; 
 int /*<<< orphan*/  OTG1_ID_PULLDOWN ; 
 int /*<<< orphan*/  OTG_STATE_UNDEFINED ; 
 int /*<<< orphan*/  FUNC0 (struct isp1301*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct isp1301*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct isp1301 *isp)
{
	isp->otg.state = OTG_STATE_UNDEFINED;

	// isp1301_set_bits(isp, ISP1301_MODE_CONTROL_2, MC2_GLOBAL_PWR_DN);
	FUNC1(isp, ISP1301_MODE_CONTROL_1, MC1_SUSPEND);

	FUNC0(isp, ISP1301_OTG_CONTROL_1, OTG1_ID_PULLDOWN);
	FUNC0(isp, ISP1301_MODE_CONTROL_1, MC1_DAT_SE0);
}