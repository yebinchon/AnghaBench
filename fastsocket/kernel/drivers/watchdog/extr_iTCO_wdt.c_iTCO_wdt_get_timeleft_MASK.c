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
struct TYPE_2__ {int iTCO_version; int /*<<< orphan*/  io_lock; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  TCO1_STS ; 
 int /*<<< orphan*/  TCO_RLD ; 
 int /*<<< orphan*/  TCOv1_TMR ; 
 TYPE_1__ iTCO_wdt_private ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(int *time_left)
{
	unsigned int val16;
	unsigned char val8;

	/* read the TCO Timer */
	if (iTCO_wdt_private.iTCO_version == 2) {
		FUNC2(&iTCO_wdt_private.io_lock);
		val16 = FUNC1(TCO_RLD);
		val16 &= 0x3ff;
		FUNC3(&iTCO_wdt_private.io_lock);

		*time_left = (val16 * 6) / 10;
	} else if (iTCO_wdt_private.iTCO_version == 1) {
		FUNC2(&iTCO_wdt_private.io_lock);
		val8 = FUNC0(TCO_RLD);
		val8 &= 0x3f;
		if (!(FUNC1(TCO1_STS) & 0x0008))
			val8 += (FUNC0(TCOv1_TMR) & 0x3f);
		FUNC3(&iTCO_wdt_private.io_lock);

		*time_left = (val8 * 6) / 10;
	} else
		return -EINVAL;
	return 0;
}