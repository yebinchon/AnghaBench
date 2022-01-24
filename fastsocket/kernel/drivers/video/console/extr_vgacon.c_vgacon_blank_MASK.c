#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct vc_data {int /*<<< orphan*/  vc_screenbuf_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLANK ; 
 int /*<<< orphan*/  VIDEO_TYPE_VGAC ; 
 int /*<<< orphan*/  color_table ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  state ; 
 int vga_is_gfx ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int vga_palette_blanked ; 
 int /*<<< orphan*/  FUNC2 (struct vc_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int vga_vesa_blanked ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vga_video_type ; 
 scalar_t__ vga_vram_base ; 
 int /*<<< orphan*/  FUNC5 (struct vc_data*) ; 

__attribute__((used)) static int FUNC6(struct vc_data *c, int blank, int mode_switch)
{
	switch (blank) {
	case 0:		/* Unblank */
		if (vga_vesa_blanked) {
			FUNC4(&state);
			vga_vesa_blanked = 0;
		}
		if (vga_palette_blanked) {
			FUNC2(c, color_table);
			vga_palette_blanked = 0;
			return 0;
		}
		vga_is_gfx = 0;
		/* Tell console.c that it has to restore the screen itself */
		return 1;
	case 1:		/* Normal blanking */
	case -1:	/* Obsolete */
		if (!mode_switch && vga_video_type == VIDEO_TYPE_VGAC) {
			FUNC1(&state);
			vga_palette_blanked = 1;
			return 0;
		}
		FUNC5(c);
		FUNC0((void *) vga_vram_base, BLANK,
			    c->vc_screenbuf_size);
		if (mode_switch)
			vga_is_gfx = 1;
		return 1;
	default:		/* VESA blanking */
		if (vga_video_type == VIDEO_TYPE_VGAC) {
			FUNC3(&state, blank - 1);
			vga_vesa_blanked = blank;
		}
		return 0;
	}
}