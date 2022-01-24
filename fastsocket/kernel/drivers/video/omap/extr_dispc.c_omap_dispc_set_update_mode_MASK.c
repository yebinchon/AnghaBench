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
struct TYPE_4__ {int update_mode; TYPE_1__* fbdev; int /*<<< orphan*/  frame_done; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
#define  OMAPFB_AUTO_UPDATE 130 
#define  OMAPFB_MANUAL_UPDATE 129 
#define  OMAPFB_UPDATE_DISABLED 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 TYPE_2__ dispc ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(enum omapfb_update_mode mode)
{
	int r = 0;

	if (mode != dispc.update_mode) {
		switch (mode) {
		case OMAPFB_AUTO_UPDATE:
		case OMAPFB_MANUAL_UPDATE:
			FUNC1(1);
			FUNC4(1);
			dispc.update_mode = mode;
			break;
		case OMAPFB_UPDATE_DISABLED:
			FUNC2(&dispc.frame_done);
			FUNC4(0);
			if (!FUNC5(&dispc.frame_done,
					FUNC3(500))) {
				FUNC0(dispc.fbdev->dev,
					 "timeout waiting for FRAME DONE\n");
			}
			dispc.update_mode = mode;
			FUNC1(0);
			break;
		default:
			r = -EINVAL;
		}
	}

	return r;
}