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
struct vgastate {int /*<<< orphan*/  vgabase; } ;
struct vc_data {int vc_hi_font_mask; int /*<<< orphan*/ * vc_sw; } ;
struct TYPE_2__ {struct vc_data* d; } ;

/* Variables and functions */
 int EINVAL ; 
 int MAX_NR_CONSOLES ; 
 int /*<<< orphan*/  VGA_AR_ENABLE_DISPLAY ; 
 int /*<<< orphan*/  VGA_ATC_PLANE_ENABLE ; 
 int /*<<< orphan*/  VGA_GFX_MISC ; 
 int /*<<< orphan*/  VGA_GFX_MODE ; 
 int /*<<< orphan*/  VGA_GFX_PLANE_READ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VGA_SEQ_CHARACTER_MAP ; 
 int /*<<< orphan*/  VGA_SEQ_MEMORY_MODE ; 
 int /*<<< orphan*/  VGA_SEQ_PLANE_WRITE ; 
 int /*<<< orphan*/  VGA_SEQ_RESET ; 
 scalar_t__ VIDEO_TYPE_EGAM ; 
 scalar_t__ VIDEO_TYPE_VGAC ; 
 int /*<<< orphan*/  blackwmap ; 
 int cmapsz ; 
 int /*<<< orphan*/  colourmap ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (unsigned short) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 TYPE_1__* vc_cons ; 
 int vga_512_chars ; 
 int /*<<< orphan*/  vga_con ; 
 int vga_font_is_default ; 
 int /*<<< orphan*/  vga_lock ; 
 char FUNC7 (char*) ; 
 int vga_video_port_reg ; 
 scalar_t__ vga_video_type ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (char,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC12(struct vgastate *state,char *arg,int set,int ch512)
{
	unsigned short video_port_status = vga_video_port_reg + 6;
	int font_select = 0x00, beg, i;
	char *charmap;
	
	if (vga_video_type != VIDEO_TYPE_EGAM) {
		charmap = (char *) FUNC0(colourmap, 0);
		beg = 0x0e;
#ifdef VGA_CAN_DO_64KB
		if (vga_video_type == VIDEO_TYPE_VGAC)
			beg = 0x06;
#endif
	} else {
		charmap = (char *) FUNC0(blackwmap, 0);
		beg = 0x0a;
	}

#ifdef BROKEN_GRAPHICS_PROGRAMS
	/*
	 * All fonts are loaded in slot 0 (0:1 for 512 ch)
	 */

	if (!arg)
		return -EINVAL;	/* Return to default font not supported */

	vga_font_is_default = 0;
	font_select = ch512 ? 0x04 : 0x00;
#else
	/*
	 * The default font is kept in slot 0 and is never touched.
	 * A custom font is loaded in slot 2 (256 ch) or 2:3 (512 ch)
	 */

	if (set) {
		vga_font_is_default = !arg;
		if (!arg)
			ch512 = 0;	/* Default font is always 256 */
		font_select = arg ? (ch512 ? 0x0e : 0x0a) : 0x00;
	}

	if (!vga_font_is_default)
		charmap += 4 * cmapsz;
#endif

	FUNC6();
	FUNC4(&vga_lock);
	/* First, the Sequencer */
	FUNC11(state->vgabase, VGA_SEQ_RESET, 0x1);
	/* CPU writes only to map 2 */
	FUNC11(state->vgabase, VGA_SEQ_PLANE_WRITE, 0x04);	
	/* Sequential addressing */
	FUNC11(state->vgabase, VGA_SEQ_MEMORY_MODE, 0x07);	
	/* Clear synchronous reset */
	FUNC11(state->vgabase, VGA_SEQ_RESET, 0x03);

	/* Now, the graphics controller, select map 2 */
	FUNC9(state->vgabase, VGA_GFX_PLANE_READ, 0x02);		
	/* disable odd-even addressing */
	FUNC9(state->vgabase, VGA_GFX_MODE, 0x00);
	/* map start at A000:0000 */
	FUNC9(state->vgabase, VGA_GFX_MISC, 0x00);
	FUNC5(&vga_lock);

	if (arg) {
		if (set)
			for (i = 0; i < cmapsz; i++) {
				FUNC10(arg[i], charmap + i);
				FUNC1();
			}
		else
			for (i = 0; i < cmapsz; i++) {
				arg[i] = FUNC7(charmap + i);
				FUNC1();
			}

		/*
		 * In 512-character mode, the character map is not contiguous if
		 * we want to remain EGA compatible -- which we do
		 */

		if (ch512) {
			charmap += 2 * cmapsz;
			arg += cmapsz;
			if (set)
				for (i = 0; i < cmapsz; i++) {
					FUNC10(arg[i], charmap + i);
					FUNC1();
				}
			else
				for (i = 0; i < cmapsz; i++) {
					arg[i] = FUNC7(charmap + i);
					FUNC1();
				}
		}
	}

	FUNC4(&vga_lock);
	/* First, the sequencer, Synchronous reset */
	FUNC11(state->vgabase, VGA_SEQ_RESET, 0x01);	
	/* CPU writes to maps 0 and 1 */
	FUNC11(state->vgabase, VGA_SEQ_PLANE_WRITE, 0x03);
	/* odd-even addressing */
	FUNC11(state->vgabase, VGA_SEQ_MEMORY_MODE, 0x03);
	/* Character Map Select */
	if (set)
		FUNC11(state->vgabase, VGA_SEQ_CHARACTER_MAP, font_select);
	/* clear synchronous reset */
	FUNC11(state->vgabase, VGA_SEQ_RESET, 0x03);

	/* Now, the graphics controller, select map 0 for CPU */
	FUNC9(state->vgabase, VGA_GFX_PLANE_READ, 0x00);
	/* enable even-odd addressing */
	FUNC9(state->vgabase, VGA_GFX_MODE, 0x10);
	/* map starts at b800:0 or b000:0 */
	FUNC9(state->vgabase, VGA_GFX_MISC, beg);

	/* if 512 char mode is already enabled don't re-enable it. */
	if ((set) && (ch512 != vga_512_chars)) {
		/* attribute controller */
		for (i = 0; i < MAX_NR_CONSOLES; i++) {
			struct vc_data *c = vc_cons[i].d;
			if (c && c->vc_sw == &vga_con)
				c->vc_hi_font_mask = ch512 ? 0x0800 : 0;
		}
		vga_512_chars = ch512;
		/* 256-char: enable intensity bit
		   512-char: disable intensity bit */
		FUNC2(video_port_status);	/* clear address flip-flop */
		/* color plane enable register */
		FUNC8(state->vgabase, VGA_ATC_PLANE_ENABLE, ch512 ? 0x07 : 0x0f);
		/* Wilton (1987) mentions the following; I don't know what
		   it means, but it works, and it appears necessary */
		FUNC2(video_port_status);
		FUNC8(state->vgabase, VGA_AR_ENABLE_DISPLAY, 0);	
	}
	FUNC5(&vga_lock);
	FUNC3();
	return 0;
}