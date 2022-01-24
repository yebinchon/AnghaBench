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
struct fb_info {scalar_t__ screen_size; int /*<<< orphan*/  device; struct cirrusfb_info* par; } ;
struct cirrusfb_info {size_t btype; int /*<<< orphan*/  regbase; } ;
struct cirrusfb_board_info_rec {int sr07; scalar_t__ init_sr07; } ;

/* Variables and functions */
#define  BT_ALPINE 136 
#define  BT_GD5480 135 
#define  BT_LAGUNA 134 
#define  BT_LAGUNAB 133 
#define  BT_PICASSO 132 
#define  BT_PICASSO4 131 
#define  BT_PICCOLO 130 
#define  BT_SD64 129 
#define  BT_SPECTRUM 128 
 int /*<<< orphan*/  CL_CRT1B ; 
 int /*<<< orphan*/  CL_CRT51 ; 
 int /*<<< orphan*/  CL_GR2F ; 
 int /*<<< orphan*/  CL_GR31 ; 
 int /*<<< orphan*/  CL_GR33 ; 
 int /*<<< orphan*/  CL_GRB ; 
 int /*<<< orphan*/  CL_GRC ; 
 int /*<<< orphan*/  CL_GRD ; 
 int /*<<< orphan*/  CL_GRE ; 
 int /*<<< orphan*/  CL_POS102 ; 
 int /*<<< orphan*/  CL_SEQR10 ; 
 int /*<<< orphan*/  CL_SEQR11 ; 
 int /*<<< orphan*/  CL_SEQR12 ; 
 int /*<<< orphan*/  CL_SEQR13 ; 
 int /*<<< orphan*/  CL_SEQR16 ; 
 int /*<<< orphan*/  CL_SEQR17 ; 
 int /*<<< orphan*/  CL_SEQR18 ; 
 int /*<<< orphan*/  CL_SEQR6 ; 
 int /*<<< orphan*/  CL_SEQR7 ; 
 int /*<<< orphan*/  CL_SEQRF ; 
 int /*<<< orphan*/  CL_VSSM ; 
 int /*<<< orphan*/  CL_VSSM2 ; 
 int /*<<< orphan*/  VGA_ATC_COLOR_PAGE ; 
 int /*<<< orphan*/  VGA_ATC_MODE ; 
 int /*<<< orphan*/  VGA_ATC_OVERSCAN ; 
 int /*<<< orphan*/  VGA_ATC_PALETTE0 ; 
 int /*<<< orphan*/  VGA_ATC_PALETTE1 ; 
 int /*<<< orphan*/  VGA_ATC_PALETTE2 ; 
 int /*<<< orphan*/  VGA_ATC_PALETTE3 ; 
 int /*<<< orphan*/  VGA_ATC_PALETTE4 ; 
 int /*<<< orphan*/  VGA_ATC_PALETTE5 ; 
 int /*<<< orphan*/  VGA_ATC_PALETTE6 ; 
 int /*<<< orphan*/  VGA_ATC_PALETTE7 ; 
 int /*<<< orphan*/  VGA_ATC_PALETTE8 ; 
 int /*<<< orphan*/  VGA_ATC_PALETTE9 ; 
 int /*<<< orphan*/  VGA_ATC_PALETTEA ; 
 int /*<<< orphan*/  VGA_ATC_PALETTEB ; 
 int /*<<< orphan*/  VGA_ATC_PALETTEC ; 
 int /*<<< orphan*/  VGA_ATC_PALETTED ; 
 int /*<<< orphan*/  VGA_ATC_PALETTEE ; 
 int /*<<< orphan*/  VGA_ATC_PALETTEF ; 
 int /*<<< orphan*/  VGA_ATC_PLANE_ENABLE ; 
 int /*<<< orphan*/  VGA_CRTC_CURSOR_END ; 
 int /*<<< orphan*/  VGA_CRTC_CURSOR_HI ; 
 int /*<<< orphan*/  VGA_CRTC_CURSOR_LO ; 
 int /*<<< orphan*/  VGA_CRTC_CURSOR_START ; 
 int /*<<< orphan*/  VGA_CRTC_PRESET_ROW ; 
 int /*<<< orphan*/  VGA_CRTC_UNDERLINE ; 
 int /*<<< orphan*/  VGA_GFX_BIT_MASK ; 
 int /*<<< orphan*/  VGA_GFX_COMPARE_MASK ; 
 int /*<<< orphan*/  VGA_GFX_COMPARE_VALUE ; 
 int /*<<< orphan*/  VGA_GFX_DATA_ROTATE ; 
 int /*<<< orphan*/  VGA_GFX_MISC ; 
 int /*<<< orphan*/  VGA_GFX_MODE ; 
 int /*<<< orphan*/  VGA_GFX_PLANE_READ ; 
 int /*<<< orphan*/  VGA_GFX_SR_ENABLE ; 
 int /*<<< orphan*/  VGA_GFX_SR_VALUE ; 
 int /*<<< orphan*/  VGA_PEL_MSK ; 
 int /*<<< orphan*/  VGA_SEQ_CHARACTER_MAP ; 
 int /*<<< orphan*/  VGA_SEQ_CLOCK_MODE ; 
 int /*<<< orphan*/  VGA_SEQ_MEMORY_MODE ; 
 int /*<<< orphan*/  VGA_SEQ_PLANE_WRITE ; 
 int /*<<< orphan*/  VGA_SEQ_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct cirrusfb_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cirrusfb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cirrusfb_info*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct cirrusfb_info*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 struct cirrusfb_board_info_rec* cirrusfb_board_info ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC6 (struct cirrusfb_info*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC13(struct fb_info *info)
{
	struct cirrusfb_info *cinfo = info->par;
	const struct cirrusfb_board_info_rec *bi;

	FUNC4(cinfo != NULL);

	bi = &cirrusfb_board_info[cinfo->btype];

	/* reset board globally */
	switch (cinfo->btype) {
	case BT_PICCOLO:
		FUNC2(cinfo, 0x01);
		FUNC8(500);
		FUNC2(cinfo, 0x51);
		FUNC8(500);
		break;
	case BT_PICASSO:
		FUNC3(cinfo, 0xff);
		FUNC8(500);
		break;
	case BT_SD64:
	case BT_SPECTRUM:
		FUNC2(cinfo, 0x1f);
		FUNC8(500);
		FUNC2(cinfo, 0x4f);
		FUNC8(500);
		break;
	case BT_PICASSO4:
		/* disable flickerfixer */
		FUNC10(cinfo->regbase, CL_CRT51, 0x00);
		FUNC7(100);
		/* mode */
		FUNC11(cinfo->regbase, CL_GR31, 0x00);
	case BT_GD5480:  /* fall through */
		/* from Klaus' NetBSD driver: */
		FUNC11(cinfo->regbase, CL_GR2F, 0x00);
	case BT_ALPINE:  /* fall through */
		/* put blitter into 542x compat */
		FUNC11(cinfo->regbase, CL_GR33, 0x00);
		break;

	case BT_LAGUNA:
	case BT_LAGUNAB:
		/* Nothing to do to reset the board. */
		break;

	default:
		FUNC5(info->device, "Warning: Unknown board type\n");
		break;
	}

	/* make sure RAM size set by this point */
	FUNC4(info->screen_size > 0);

	/* the P4 is not fully initialized here; I rely on it having been */
	/* inited under AmigaOS already, which seems to work just fine    */
	/* (Klaus advised to do it this way)			      */

	if (cinfo->btype != BT_PICASSO4) {
		FUNC0(cinfo, CL_VSSM, 0x10);	/* EGS: 0x16 */
		FUNC0(cinfo, CL_POS102, 0x01);
		FUNC0(cinfo, CL_VSSM, 0x08);	/* EGS: 0x0e */

		if (cinfo->btype != BT_SD64)
			FUNC0(cinfo, CL_VSSM2, 0x01);

		/* reset sequencer logic */
		FUNC12(cinfo->regbase, VGA_SEQ_RESET, 0x03);

		/* FullBandwidth (video off) and 8/9 dot clock */
		FUNC12(cinfo->regbase, VGA_SEQ_CLOCK_MODE, 0x21);

		/* "magic cookie" - doesn't make any sense to me.. */
/*      vga_wgfx(cinfo->regbase, CL_GRA, 0xce);   */
		/* unlock all extension registers */
		FUNC12(cinfo->regbase, CL_SEQR6, 0x12);

		switch (cinfo->btype) {
		case BT_GD5480:
			FUNC12(cinfo->regbase, CL_SEQRF, 0x98);
			break;
		case BT_ALPINE:
		case BT_LAGUNA:
		case BT_LAGUNAB:
			break;
		case BT_SD64:
#ifdef CONFIG_ZORRO
			vga_wseq(cinfo->regbase, CL_SEQRF, 0xb8);
#endif
			break;
		default:
			FUNC12(cinfo->regbase, CL_SEQR16, 0x0f);
			FUNC12(cinfo->regbase, CL_SEQRF, 0xb0);
			break;
		}
	}
	/* plane mask: nothing */
	FUNC12(cinfo->regbase, VGA_SEQ_PLANE_WRITE, 0xff);
	/* character map select: doesn't even matter in gx mode */
	FUNC12(cinfo->regbase, VGA_SEQ_CHARACTER_MAP, 0x00);
	/* memory mode: chain4, ext. memory */
	FUNC12(cinfo->regbase, VGA_SEQ_MEMORY_MODE, 0x0a);

	/* controller-internal base address of video memory */
	if (bi->init_sr07)
		FUNC12(cinfo->regbase, CL_SEQR7, bi->sr07);

	/*  vga_wseq(cinfo->regbase, CL_SEQR8, 0x00); */
	/* EEPROM control: shouldn't be necessary to write to this at all.. */

	/* graphics cursor X position (incomplete; position gives rem. 3 bits */
	FUNC12(cinfo->regbase, CL_SEQR10, 0x00);
	/* graphics cursor Y position (..."... ) */
	FUNC12(cinfo->regbase, CL_SEQR11, 0x00);
	/* graphics cursor attributes */
	FUNC12(cinfo->regbase, CL_SEQR12, 0x00);
	/* graphics cursor pattern address */
	FUNC12(cinfo->regbase, CL_SEQR13, 0x00);

	/* writing these on a P4 might give problems..  */
	if (cinfo->btype != BT_PICASSO4) {
		/* configuration readback and ext. color */
		FUNC12(cinfo->regbase, CL_SEQR17, 0x00);
		/* signature generator */
		FUNC12(cinfo->regbase, CL_SEQR18, 0x02);
	}

	/* Screen A preset row scan: none */
	FUNC10(cinfo->regbase, VGA_CRTC_PRESET_ROW, 0x00);
	/* Text cursor start: disable text cursor */
	FUNC10(cinfo->regbase, VGA_CRTC_CURSOR_START, 0x20);
	/* Text cursor end: - */
	FUNC10(cinfo->regbase, VGA_CRTC_CURSOR_END, 0x00);
	/* text cursor location high: 0 */
	FUNC10(cinfo->regbase, VGA_CRTC_CURSOR_HI, 0x00);
	/* text cursor location low: 0 */
	FUNC10(cinfo->regbase, VGA_CRTC_CURSOR_LO, 0x00);

	/* Underline Row scanline: - */
	FUNC10(cinfo->regbase, VGA_CRTC_UNDERLINE, 0x00);
	/* ### add 0x40 for text modes with > 30 MHz pixclock */
	/* ext. display controls: ext.adr. wrap */
	FUNC10(cinfo->regbase, CL_CRT1B, 0x02);

	/* Set/Reset registes: - */
	FUNC11(cinfo->regbase, VGA_GFX_SR_VALUE, 0x00);
	/* Set/Reset enable: - */
	FUNC11(cinfo->regbase, VGA_GFX_SR_ENABLE, 0x00);
	/* Color Compare: - */
	FUNC11(cinfo->regbase, VGA_GFX_COMPARE_VALUE, 0x00);
	/* Data Rotate: - */
	FUNC11(cinfo->regbase, VGA_GFX_DATA_ROTATE, 0x00);
	/* Read Map Select: - */
	FUNC11(cinfo->regbase, VGA_GFX_PLANE_READ, 0x00);
	/* Mode: conf. for 16/4/2 color mode, no odd/even, read/write mode 0 */
	FUNC11(cinfo->regbase, VGA_GFX_MODE, 0x00);
	/* Miscellaneous: memory map base address, graphics mode */
	FUNC11(cinfo->regbase, VGA_GFX_MISC, 0x01);
	/* Color Don't care: involve all planes */
	FUNC11(cinfo->regbase, VGA_GFX_COMPARE_MASK, 0x0f);
	/* Bit Mask: no mask at all */
	FUNC11(cinfo->regbase, VGA_GFX_BIT_MASK, 0xff);

	if (cinfo->btype == BT_ALPINE || cinfo->btype == BT_SD64 ||
	    FUNC6(cinfo))
		/* (5434 can't have bit 3 set for bitblt) */
		FUNC11(cinfo->regbase, CL_GRB, 0x20);
	else
	/* Graphics controller mode extensions: finer granularity,
	 * 8byte data latches
	 */
		FUNC11(cinfo->regbase, CL_GRB, 0x28);

	FUNC11(cinfo->regbase, CL_GRC, 0xff);	/* Color Key compare: - */
	FUNC11(cinfo->regbase, CL_GRD, 0x00);	/* Color Key compare mask: - */
	FUNC11(cinfo->regbase, CL_GRE, 0x00);	/* Miscellaneous control: - */
	/* Background color byte 1: - */
	/*  vga_wgfx (cinfo->regbase, CL_GR10, 0x00); */
	/*  vga_wgfx (cinfo->regbase, CL_GR11, 0x00); */

	/* Attribute Controller palette registers: "identity mapping" */
	FUNC9(cinfo->regbase, VGA_ATC_PALETTE0, 0x00);
	FUNC9(cinfo->regbase, VGA_ATC_PALETTE1, 0x01);
	FUNC9(cinfo->regbase, VGA_ATC_PALETTE2, 0x02);
	FUNC9(cinfo->regbase, VGA_ATC_PALETTE3, 0x03);
	FUNC9(cinfo->regbase, VGA_ATC_PALETTE4, 0x04);
	FUNC9(cinfo->regbase, VGA_ATC_PALETTE5, 0x05);
	FUNC9(cinfo->regbase, VGA_ATC_PALETTE6, 0x06);
	FUNC9(cinfo->regbase, VGA_ATC_PALETTE7, 0x07);
	FUNC9(cinfo->regbase, VGA_ATC_PALETTE8, 0x08);
	FUNC9(cinfo->regbase, VGA_ATC_PALETTE9, 0x09);
	FUNC9(cinfo->regbase, VGA_ATC_PALETTEA, 0x0a);
	FUNC9(cinfo->regbase, VGA_ATC_PALETTEB, 0x0b);
	FUNC9(cinfo->regbase, VGA_ATC_PALETTEC, 0x0c);
	FUNC9(cinfo->regbase, VGA_ATC_PALETTED, 0x0d);
	FUNC9(cinfo->regbase, VGA_ATC_PALETTEE, 0x0e);
	FUNC9(cinfo->regbase, VGA_ATC_PALETTEF, 0x0f);

	/* Attribute Controller mode: graphics mode */
	FUNC9(cinfo->regbase, VGA_ATC_MODE, 0x01);
	/* Overscan color reg.: reg. 0 */
	FUNC9(cinfo->regbase, VGA_ATC_OVERSCAN, 0x00);
	/* Color Plane enable: Enable all 4 planes */
	FUNC9(cinfo->regbase, VGA_ATC_PLANE_ENABLE, 0x0f);
	/* Color Select: - */
	FUNC9(cinfo->regbase, VGA_ATC_COLOR_PAGE, 0x00);

	FUNC0(cinfo, VGA_PEL_MSK, 0xff);	/* Pixel mask: no mask */

	/* BLT Start/status: Blitter reset */
	FUNC11(cinfo->regbase, CL_GR31, 0x04);
	/* - " -	   : "end-of-reset" */
	FUNC11(cinfo->regbase, CL_GR31, 0x00);

	/* misc... */
	FUNC1(cinfo, 0);	/* Hidden DAC register: - */
	return;
}