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
typedef  int u32 ;
struct TYPE_4__ {int zoom_on; int /*<<< orphan*/  update_mode_before_suspend; TYPE_1__* fbdev; int /*<<< orphan*/  (* power_up ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLIZZARD_DISPLAY_MODE ; 
 int /*<<< orphan*/  BLIZZARD_PLL_DIV ; 
 int /*<<< orphan*/  BLIZZARD_PLL_MODE ; 
 int /*<<< orphan*/  BLIZZARD_POWER_SAVE ; 
 TYPE_2__ blizzard ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static void FUNC10(void)
{
	u32 l;

	if (blizzard.power_up != NULL)
		blizzard.power_up(blizzard.fbdev->dev);

	l = FUNC0(BLIZZARD_POWER_SAVE);
	/* Standby, Sleep */
	l &= ~0x03;
	FUNC6(BLIZZARD_POWER_SAVE, l);

	FUNC3();
	l = FUNC0(BLIZZARD_PLL_MODE);
	l &= ~0x03;
	/* Enable PLL, counter function */
	l |= 0x1;
	FUNC6(BLIZZARD_PLL_MODE, l);

	while (!(FUNC0(BLIZZARD_PLL_DIV) & (1 << 7)))
		FUNC7(1);

	FUNC1();

	FUNC2();

	/* Enable display */
	FUNC6(BLIZZARD_DISPLAY_MODE, 0x01);

	/* the following will enable clocks as necessary */
	FUNC4(blizzard.update_mode_before_suspend);

	/* Force a background update */
	blizzard.zoom_on = 1;
	FUNC9();
	FUNC5();
}