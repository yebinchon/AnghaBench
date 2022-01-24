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
typedef  int u8 ;
struct TYPE_4__ {int pix_tx_time; int line_upd_time; TYPE_1__* extif; scalar_t__ vsync_only; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* enable_tearsync ) (int,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  BLIZZARD_NDISP_CTRL_STATUS ; 
 TYPE_2__ blizzard ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 

__attribute__((used)) static void FUNC7(int y, int width, int height, int screen_height,
			    int out_height, int force_vsync)
{
	u8 b;

	b = FUNC0(BLIZZARD_NDISP_CTRL_STATUS);
	b |= 1 << 3;
	FUNC1(BLIZZARD_NDISP_CTRL_STATUS, b);

	if (FUNC2(blizzard.vsync_only || force_vsync)) {
		blizzard.extif->enable_tearsync(1, 0);
		return;
	}

	if (width * blizzard.pix_tx_time < blizzard.line_upd_time) {
		blizzard.extif->enable_tearsync(1, 0);
		return;
	}

	if ((width * blizzard.pix_tx_time / 1000) * height <
	    (y + out_height) * (blizzard.line_upd_time / 1000)) {
		blizzard.extif->enable_tearsync(1, 0);
		return;
	}

	blizzard.extif->enable_tearsync(1, y + 1);
}