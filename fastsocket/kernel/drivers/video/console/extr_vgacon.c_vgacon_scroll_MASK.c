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
typedef  int /*<<< orphan*/  u16 ;
struct vc_data {int vc_rows; scalar_t__ vc_mode; unsigned long vc_origin; int vc_size_row; unsigned int vc_scr_end; unsigned int vc_screenbuf_size; unsigned int vc_visible_origin; unsigned long vc_pos; int /*<<< orphan*/  vc_video_erase_char; } ;

/* Variables and functions */
 scalar_t__ KD_TEXT ; 
 int SM_UP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  vga_hardscroll_enabled ; 
 scalar_t__ vga_is_gfx ; 
 unsigned long vga_rolled_over ; 
 int /*<<< orphan*/  FUNC3 (struct vc_data*) ; 
 unsigned long vga_vram_base ; 
 unsigned int vga_vram_end ; 
 int /*<<< orphan*/  FUNC4 (struct vc_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct vc_data*,int,int) ; 

__attribute__((used)) static int FUNC6(struct vc_data *c, int t, int b, int dir,
			 int lines)
{
	unsigned long oldo;
	unsigned int delta;

	if (t || b != c->vc_rows || vga_is_gfx || c->vc_mode != KD_TEXT)
		return 0;

	if (!vga_hardscroll_enabled || lines >= c->vc_rows / 2)
		return 0;

	FUNC4(c);
	oldo = c->vc_origin;
	delta = lines * c->vc_size_row;
	if (dir == SM_UP) {
		FUNC5(c, t, lines);
		if (c->vc_scr_end + delta >= vga_vram_end) {
			FUNC0((u16 *) vga_vram_base,
				    (u16 *) (oldo + delta),
				    c->vc_screenbuf_size - delta);
			c->vc_origin = vga_vram_base;
			vga_rolled_over = oldo - vga_vram_base;
		} else
			c->vc_origin += delta;
		FUNC2((u16 *) (c->vc_origin + c->vc_screenbuf_size -
				     delta), c->vc_video_erase_char,
			    delta);
	} else {
		if (oldo - delta < vga_vram_base) {
			FUNC1((u16 *) (vga_vram_end -
					      c->vc_screenbuf_size +
					      delta), (u16 *) oldo,
				     c->vc_screenbuf_size - delta);
			c->vc_origin = vga_vram_end - c->vc_screenbuf_size;
			vga_rolled_over = 0;
		} else
			c->vc_origin -= delta;
		c->vc_scr_end = c->vc_origin + c->vc_screenbuf_size;
		FUNC2((u16 *) (c->vc_origin), c->vc_video_erase_char,
			    delta);
	}
	c->vc_scr_end = c->vc_origin + c->vc_screenbuf_size;
	c->vc_visible_origin = c->vc_origin;
	FUNC3(c);
	c->vc_pos = (c->vc_pos - oldo) + c->vc_origin;
	return 1;
}