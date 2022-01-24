#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct plane_info {int /*<<< orphan*/  color_mode; int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  pos_y; int /*<<< orphan*/  pos_x; int /*<<< orphan*/  scr_width; int /*<<< orphan*/  offset; } ;
struct TYPE_9__ {int flags; } ;
struct TYPE_10__ {TYPE_3__ update; } ;
struct blizzard_request {TYPE_4__ par; } ;
struct TYPE_12__ {int enabled_planes; int /*<<< orphan*/  screen_height; int /*<<< orphan*/  screen_width; TYPE_5__* extif; scalar_t__ zoom_on; TYPE_2__* fbdev; TYPE_1__* int_ctrl; struct plane_info* plane; } ;
struct TYPE_11__ {int /*<<< orphan*/  (* transfer_area ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct blizzard_request*) ;int /*<<< orphan*/  (* set_bits_per_cycle ) (int) ;} ;
struct TYPE_8__ {int /*<<< orphan*/  dev; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* enable_plane ) (int,int) ;int /*<<< orphan*/  (* setup_plane ) (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  BLIZZARD_COLOR_RGB565 ; 
 int /*<<< orphan*/  OMAPFB_CHANNEL_OUT_LCD ; 
 int OMAPFB_FORMAT_FLAG_FORCE_VSYNC ; 
 int OMAPFB_FORMAT_FLAG_TEARSYNC ; 
 int REQ_PENDING ; 
 TYPE_6__ blizzard ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  request_complete ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct blizzard_request*) ; 

__attribute__((used)) static int FUNC10(struct blizzard_request *req)
{
	int i;
	int flags;

	for (i = 0; i < 3; i++) {
		struct plane_info *p = &blizzard.plane[i];
		if (!(blizzard.enabled_planes & (1 << i))) {
			blizzard.int_ctrl->enable_plane(i, 0);
			continue;
		}
		FUNC1(blizzard.fbdev->dev, "pw %d ph %d\n",
			p->width, p->height);
		blizzard.int_ctrl->setup_plane(i,
				OMAPFB_CHANNEL_OUT_LCD, p->offset,
				p->scr_width, p->pos_x, p->pos_y,
				p->width, p->height,
				p->color_mode);
		blizzard.int_ctrl->enable_plane(i, 1);
	}

	FUNC1(blizzard.fbdev->dev, "sw %d sh %d\n",
		blizzard.screen_width, blizzard.screen_height);
	FUNC0();
	flags = req->par.update.flags;
	if (flags & OMAPFB_FORMAT_FLAG_TEARSYNC)
		FUNC3(0, blizzard.screen_width,
				blizzard.screen_height,
				blizzard.screen_height,
				blizzard.screen_height,
				flags & OMAPFB_FORMAT_FLAG_FORCE_VSYNC);
	else
		FUNC2();

	FUNC4(0, 0, blizzard.screen_width, blizzard.screen_height,
			0, 0, blizzard.screen_width, blizzard.screen_height,
			BLIZZARD_COLOR_RGB565, blizzard.zoom_on, flags);
	blizzard.zoom_on = 0;

	blizzard.extif->set_bits_per_cycle(16);
	/* set_window_regs has left the register index at the right
	 * place, so no need to set it here.
	 */
	blizzard.extif->transfer_area(blizzard.screen_width,
				      blizzard.screen_height,
				      request_complete, req);
	return REQ_PENDING;
}