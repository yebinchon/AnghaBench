#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int region_cnt; } ;
struct TYPE_4__ {int /*<<< orphan*/  base; int /*<<< orphan*/  fbdev; TYPE_1__ mem_desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  INT_24XX_DSS_IRQ ; 
 int /*<<< orphan*/  OMAPFB_UPDATE_DISABLED ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_2__ dispc ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void FUNC7(void)
{
	int i;

	FUNC5(OMAPFB_UPDATE_DISABLED);
	/* This will also disable clocks that are on */
	for (i = 0; i < dispc.mem_desc.region_cnt; i++)
		FUNC4(i, 0);
	FUNC0();
	FUNC2();
	FUNC1(INT_24XX_DSS_IRQ, dispc.fbdev);
	FUNC6();
	FUNC3(dispc.base);
}