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
 int /*<<< orphan*/  TCOv1_TMR ; 
 int /*<<< orphan*/  TCOv2_TMR ; 
 int heartbeat ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 TYPE_1__ iTCO_wdt_private ; 
 unsigned char FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(int t)
{
	unsigned int val16;
	unsigned char val8;
	unsigned int tmrval;

	tmrval = FUNC5(t);

	/* For TCO v1 the timer counts down twice before rebooting */
	if (iTCO_wdt_private.iTCO_version == 1)
		tmrval /= 2;

	/* from the specs: */
	/* "Values of 0h-3h are ignored and should not be attempted" */
	if (tmrval < 0x04)
		return -EINVAL;
	if (((iTCO_wdt_private.iTCO_version == 2) && (tmrval > 0x3ff)) ||
	    ((iTCO_wdt_private.iTCO_version == 1) && (tmrval > 0x03f)))
		return -EINVAL;

	FUNC0(tmrval);

	/* Write new heartbeat to watchdog */
	if (iTCO_wdt_private.iTCO_version == 2) {
		FUNC6(&iTCO_wdt_private.io_lock);
		val16 = FUNC2(TCOv2_TMR);
		val16 &= 0xfc00;
		val16 |= tmrval;
		FUNC4(val16, TCOv2_TMR);
		val16 = FUNC2(TCOv2_TMR);
		FUNC7(&iTCO_wdt_private.io_lock);

		if ((val16 & 0x3ff) != tmrval)
			return -EINVAL;
	} else if (iTCO_wdt_private.iTCO_version == 1) {
		FUNC6(&iTCO_wdt_private.io_lock);
		val8 = FUNC1(TCOv1_TMR);
		val8 &= 0xc0;
		val8 |= (tmrval & 0xff);
		FUNC3(val8, TCOv1_TMR);
		val8 = FUNC1(TCOv1_TMR);
		FUNC7(&iTCO_wdt_private.io_lock);

		if ((val8 & 0x3f) != tmrval)
			return -EINVAL;
	}

	heartbeat = t;
	return 0;
}