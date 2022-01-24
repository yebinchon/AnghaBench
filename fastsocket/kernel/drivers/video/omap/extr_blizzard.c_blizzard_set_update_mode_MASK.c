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
typedef  enum omapfb_update_mode { ____Placeholder_omapfb_update_mode } omapfb_update_mode ;
struct TYPE_4__ {int update_mode; int stop_auto_update; TYPE_1__* fbdev; int /*<<< orphan*/  auto_update_timer; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
#define  OMAPFB_AUTO_UPDATE 130 
 int /*<<< orphan*/  OMAPFB_EVENT_DISABLED ; 
 int /*<<< orphan*/  OMAPFB_EVENT_READY ; 
#define  OMAPFB_MANUAL_UPDATE 129 
#define  OMAPFB_UPDATE_DISABLED 128 
 TYPE_2__ blizzard ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(enum omapfb_update_mode mode)
{
	if (FUNC5(mode != OMAPFB_MANUAL_UPDATE &&
		     mode != OMAPFB_AUTO_UPDATE &&
		     mode != OMAPFB_UPDATE_DISABLED))
		return -EINVAL;

	if (mode == blizzard.update_mode)
		return 0;

	FUNC3(blizzard.fbdev->dev, "s1d1374x: setting update mode to %s\n",
			mode == OMAPFB_UPDATE_DISABLED ? "disabled" :
			(mode == OMAPFB_AUTO_UPDATE ? "auto" : "manual"));

	switch (blizzard.update_mode) {
	case OMAPFB_MANUAL_UPDATE:
		FUNC4(blizzard.fbdev, OMAPFB_EVENT_DISABLED);
		break;
	case OMAPFB_AUTO_UPDATE:
		blizzard.stop_auto_update = 1;
		FUNC2(&blizzard.auto_update_timer);
		break;
	case OMAPFB_UPDATE_DISABLED:
		break;
	}

	blizzard.update_mode = mode;
	FUNC0();
	blizzard.stop_auto_update = 0;

	switch (mode) {
	case OMAPFB_MANUAL_UPDATE:
		FUNC4(blizzard.fbdev, OMAPFB_EVENT_READY);
		break;
	case OMAPFB_AUTO_UPDATE:
		FUNC1(0);
		break;
	case OMAPFB_UPDATE_DISABLED:
		break;
	}

	return 0;
}