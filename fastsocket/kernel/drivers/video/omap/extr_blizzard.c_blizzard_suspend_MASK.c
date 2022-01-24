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
struct TYPE_4__ {TYPE_1__* fbdev; int /*<<< orphan*/  (* power_down ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  update_mode; int /*<<< orphan*/  update_mode_before_suspend; scalar_t__ last_color_mode; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLIZZARD_PLL_MODE ; 
 int /*<<< orphan*/  BLIZZARD_POWER_SAVE ; 
 int /*<<< orphan*/  OMAPFB_UPDATE_DISABLED ; 
 TYPE_2__ blizzard ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 unsigned long jiffies ; 
 unsigned long FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 () ; 

__attribute__((used)) static void FUNC12(void)
{
	u32 l;
	unsigned long tmo;

	if (blizzard.last_color_mode) {
		FUNC11();
		FUNC4();
	}
	blizzard.update_mode_before_suspend = blizzard.update_mode;
	/* the following will disable clocks as well */
	FUNC2(OMAPFB_UPDATE_DISABLED);

	FUNC1();

	FUNC3();

	l = FUNC0(BLIZZARD_POWER_SAVE);
	/* Standby, Sleep. We assume we use an external clock. */
	l |= 0x03;
	FUNC5(BLIZZARD_POWER_SAVE, l);

	tmo = jiffies + FUNC7(100);
	while (!(FUNC0(BLIZZARD_PLL_MODE) & (1 << 1))) {
		if (FUNC10(jiffies, tmo)) {
			FUNC6(blizzard.fbdev->dev,
				"s1d1374x: sleep timeout, stopping PLL manually\n");
			l = FUNC0(BLIZZARD_PLL_MODE);
			l &= ~0x03;
			/* Disable PLL, counter function */
			l |= 0x2;
			FUNC5(BLIZZARD_PLL_MODE, l);
			break;
		}
		FUNC8(1);
	}

	if (blizzard.power_down != NULL)
		blizzard.power_down(blizzard.fbdev->dev);
}