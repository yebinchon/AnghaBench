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
struct TYPE_2__ {scalar_t__ update_mode; } ;

/* Variables and functions */
 scalar_t__ OMAPFB_AUTO_UPDATE ; 
 int /*<<< orphan*/  OMAP_LCDC_IRQ_DONE ; 
 int /*<<< orphan*/  OMAP_LCDC_LOAD_FRAME ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__ lcdc ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void FUNC6(void)
{
	if (lcdc.update_mode == OMAPFB_AUTO_UPDATE) {
		FUNC5();
		FUNC2();
		FUNC4();
		FUNC3(OMAP_LCDC_LOAD_FRAME);
		FUNC1(OMAP_LCDC_IRQ_DONE);
		FUNC0();
	}
}