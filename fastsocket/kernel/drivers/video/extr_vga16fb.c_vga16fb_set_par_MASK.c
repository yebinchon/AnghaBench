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
typedef  int u8 ;
struct vga16fb_par {int clkdiv; int mode; int* crtc; int misc; int pel_msk; scalar_t__ isVGA; } ;
struct TYPE_2__ {int xoffset; } ;
struct fb_info {TYPE_1__ var; struct vga16fb_par* par; } ;

/* Variables and functions */
 int /*<<< orphan*/  EGA_GFX_E0 ; 
 int /*<<< orphan*/  EGA_GFX_E1 ; 
 int MODE_8BPP ; 
 int MODE_CFB ; 
 int MODE_SKIP4 ; 
 int MODE_TEXT ; 
 size_t VGA_ATC_COLOR_PAGE ; 
 size_t VGA_ATC_MODE ; 
 size_t VGA_ATC_OVERSCAN ; 
 size_t VGA_ATC_PEL ; 
 size_t VGA_ATC_PLANE_ENABLE ; 
 int VGA_ATT_C ; 
 int /*<<< orphan*/  VGA_ATT_IW ; 
 size_t VGA_CRTC_MAX_SCAN ; 
 int VGA_CRTC_REGS ; 
 size_t VGA_CRTC_V_SYNC_END ; 
 size_t VGA_GFX_BIT_MASK ; 
 int VGA_GFX_C ; 
 size_t VGA_GFX_COMPARE_MASK ; 
 size_t VGA_GFX_COMPARE_VALUE ; 
 size_t VGA_GFX_DATA_ROTATE ; 
 size_t VGA_GFX_MISC ; 
 size_t VGA_GFX_MODE ; 
 size_t VGA_GFX_PLANE_READ ; 
 size_t VGA_GFX_SR_ENABLE ; 
 size_t VGA_GFX_SR_VALUE ; 
 int /*<<< orphan*/  VGA_IS1_RC ; 
 int /*<<< orphan*/  VGA_MIS_R ; 
 int /*<<< orphan*/  VGA_MIS_W ; 
 int /*<<< orphan*/  VGA_PEL_MSK ; 
 int VGA_SEQ_C ; 
 size_t VGA_SEQ_CHARACTER_MAP ; 
 size_t VGA_SEQ_CLOCK_MODE ; 
 size_t VGA_SEQ_MEMORY_MODE ; 
 size_t VGA_SEQ_PLANE_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct fb_info*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (size_t,int) ; 

__attribute__((used)) static int FUNC8(struct fb_info *info)
{
	struct vga16fb_par *par = info->par;
	u8 gdc[VGA_GFX_C];
	u8 seq[VGA_SEQ_C];
	u8 atc[VGA_ATT_C];
	int fh, i;

	seq[VGA_SEQ_CLOCK_MODE] = 0x01 | par->clkdiv;
	if (par->mode & MODE_TEXT)
		seq[VGA_SEQ_PLANE_WRITE] = 0x03;
	else
		seq[VGA_SEQ_PLANE_WRITE] = 0x0F;
	seq[VGA_SEQ_CHARACTER_MAP] = 0x00;
	if (par->mode & MODE_TEXT)
		seq[VGA_SEQ_MEMORY_MODE] = 0x03;
	else if (par->mode & MODE_SKIP4)
		seq[VGA_SEQ_MEMORY_MODE] = 0x0E;
	else
		seq[VGA_SEQ_MEMORY_MODE] = 0x06;

	gdc[VGA_GFX_SR_VALUE] = 0x00;
	gdc[VGA_GFX_SR_ENABLE] = 0x00;
	gdc[VGA_GFX_COMPARE_VALUE] = 0x00;
	gdc[VGA_GFX_DATA_ROTATE] = 0x00;
	gdc[VGA_GFX_PLANE_READ] = 0;
	if (par->mode & MODE_TEXT) {
		gdc[VGA_GFX_MODE] = 0x10;
		gdc[VGA_GFX_MISC] = 0x06;
	} else {
		if (par->mode & MODE_CFB)
			gdc[VGA_GFX_MODE] = 0x40;
		else
			gdc[VGA_GFX_MODE] = 0x00;
		gdc[VGA_GFX_MISC] = 0x05;
	}
	gdc[VGA_GFX_COMPARE_MASK] = 0x0F;
	gdc[VGA_GFX_BIT_MASK] = 0xFF;

	for (i = 0x00; i < 0x10; i++)
		atc[i] = i;
	if (par->mode & MODE_TEXT)
		atc[VGA_ATC_MODE] = 0x04;
	else if (par->mode & MODE_8BPP)
		atc[VGA_ATC_MODE] = 0x41;
	else
		atc[VGA_ATC_MODE] = 0x81;
	atc[VGA_ATC_OVERSCAN] = 0x00;	/* 0 for EGA, 0xFF for VGA */
	atc[VGA_ATC_PLANE_ENABLE] = 0x0F;
	if (par->mode & MODE_8BPP)
		atc[VGA_ATC_PEL] = (info->var.xoffset & 3) << 1;
	else
		atc[VGA_ATC_PEL] = info->var.xoffset & 7;
	atc[VGA_ATC_COLOR_PAGE] = 0x00;
	
	if (par->mode & MODE_TEXT) {
		fh = 16; // FIXME !!! Fudge font height. 
		par->crtc[VGA_CRTC_MAX_SCAN] = (par->crtc[VGA_CRTC_MAX_SCAN] 
					       & ~0x1F) | (fh - 1);
	}

	FUNC3(VGA_MIS_W, FUNC2(VGA_MIS_R) | 0x01);

	/* Enable graphics register modification */
	if (!par->isVGA) {
		FUNC3(EGA_GFX_E0, 0x00);
		FUNC3(EGA_GFX_E1, 0x01);
	}
	
	/* update misc output register */
	FUNC3(VGA_MIS_W, par->misc);
	
	/* synchronous reset on */
	FUNC7(0x00, 0x01);

	if (par->isVGA)
		FUNC3(VGA_PEL_MSK, par->pel_msk);

	/* write sequencer registers */
	FUNC7(VGA_SEQ_CLOCK_MODE, seq[VGA_SEQ_CLOCK_MODE] | 0x20);
	for (i = 2; i < VGA_SEQ_C; i++) {
		FUNC7(i, seq[i]);
	}
	
	/* synchronous reset off */
	FUNC7(0x00, 0x03);

	/* deprotect CRT registers 0-7 */
	FUNC5(VGA_CRTC_V_SYNC_END, par->crtc[VGA_CRTC_V_SYNC_END]);

	/* write CRT registers */
	for (i = 0; i < VGA_CRTC_REGS; i++) {
		FUNC5(i, par->crtc[i]);
	}
	
	/* write graphics controller registers */
	for (i = 0; i < VGA_GFX_C; i++) {
		FUNC6(i, gdc[i]);
	}
	
	/* write attribute controller registers */
	for (i = 0; i < VGA_ATT_C; i++) {
		FUNC2(VGA_IS1_RC);		/* reset flip-flop */
		FUNC4(i, atc[i]);
	}

	/* Wait for screen to stabilize. */
	FUNC0(50);

	FUNC7(VGA_SEQ_CLOCK_MODE, seq[VGA_SEQ_CLOCK_MODE]);

	FUNC2(VGA_IS1_RC);
	FUNC3(VGA_ATT_IW, 0x20);

	FUNC1(info);
	return 0;
}