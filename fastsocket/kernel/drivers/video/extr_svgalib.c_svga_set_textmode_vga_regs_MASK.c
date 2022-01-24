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

/* Variables and functions */
 int /*<<< orphan*/  VGA_ATT_W ; 
 int /*<<< orphan*/  VGA_CRTC_CURSOR_END ; 
 int /*<<< orphan*/  VGA_CRTC_CURSOR_HI ; 
 int /*<<< orphan*/  VGA_CRTC_CURSOR_LO ; 
 int /*<<< orphan*/  VGA_CRTC_CURSOR_START ; 
 int /*<<< orphan*/  VGA_CRTC_MAX_SCAN ; 
 int /*<<< orphan*/  VGA_CRTC_MODE ; 
 int /*<<< orphan*/  VGA_CRTC_UNDERLINE ; 
 int /*<<< orphan*/  VGA_GFX_COMPARE_MASK ; 
 int /*<<< orphan*/  VGA_GFX_MISC ; 
 int /*<<< orphan*/  VGA_GFX_MODE ; 
 int /*<<< orphan*/  VGA_SEQ_MEMORY_MODE ; 
 int /*<<< orphan*/  VGA_SEQ_PLANE_WRITE ; 
 int VGA_SR04_EXT_MEM ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

void FUNC7(void)
{
	/* svga_wseq_mask(0x1, 0x00, 0x01); */   /* Switch 8/9 pixel per char */
	FUNC6(NULL, VGA_SEQ_MEMORY_MODE,	VGA_SR04_EXT_MEM);
	FUNC6(NULL, VGA_SEQ_PLANE_WRITE,	0x03);

	FUNC4(NULL, VGA_CRTC_MAX_SCAN,	0x0f); /* 0x4f */
	FUNC4(NULL, VGA_CRTC_UNDERLINE,	0x1f);
	FUNC1(VGA_CRTC_MODE,		0x23, 0x7f);

	FUNC4(NULL, VGA_CRTC_CURSOR_START,	0x0d);
	FUNC4(NULL, VGA_CRTC_CURSOR_END,	0x0e);
	FUNC4(NULL, VGA_CRTC_CURSOR_HI,	0x00);
	FUNC4(NULL, VGA_CRTC_CURSOR_LO,	0x00);

	FUNC5(NULL, VGA_GFX_MODE,		0x10); /* Odd/even memory mode */
	FUNC5(NULL, VGA_GFX_MISC,		0x0E); /* Misc graphics register - text mode enable */
	FUNC5(NULL, VGA_GFX_COMPARE_MASK,	0x00);

	FUNC2(NULL, 0x3DA);
	FUNC3(NULL, VGA_ATT_W, 0x00);

	FUNC0(0x10, 0x0C);			/* Attribute Mode Control Register - text mode, blinking and line graphics */
	FUNC0(0x13, 0x08);			/* Horizontal Pixel Panning Register  */

	FUNC2(NULL, 0x3DA);
	FUNC3(NULL, VGA_ATT_W, 0x20);
}