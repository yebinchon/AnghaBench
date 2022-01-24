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
struct intelfb_info {int dummy; } ;
struct intelfb_hwstate {void* imr; void* iir; void* ier; void* hwstam; void* fw_blc_1; void* fw_blc_0; void* mem_mode; void* instpm; void** fence; void** swf3x; void** swf1x; void** swf0x; void* add_id; void* vgacntrl; void* disp_b_stride; void* disp_a_stride; void* disp_b_base; void* disp_a_base; void* disp_b_ctrl; void* disp_a_ctrl; void* cursor_size; void** cursor_b_palette; void** cursor_a_palette; void* cursor_b_base; void* cursor_a_base; void* cursor_b_control; void* cursor_a_control; void* disp_arb; void* pipe_b_conf; void* pipe_a_conf; void* lvds; void* dvoc_srcdim; void* dvob_srcdim; void* dvoa_srcdim; void* dvoc; void* dvob; void* dvoa; void* adpa; void* bclrpat_b; void* src_size_b; void* vsync_b; void* vblank_b; void* vtotal_b; void* hsync_b; void* hblank_b; void* htotal_b; void* bclrpat_a; void* src_size_a; void* vsync_a; void* vblank_a; void* vtotal_a; void* hsync_a; void* hblank_a; void* htotal_a; void** palette_b; void** palette_a; void* fpb1; void* fpb0; void* fpa1; void* fpa0; void* dpll_b; void* dpll_a; void* vga_pd; void* vga1_divisor; void* vga0_divisor; } ;

/* Variables and functions */
 scalar_t__ ADD_ID ; 
 scalar_t__ ADPA ; 
 scalar_t__ BCLRPAT_A ; 
 scalar_t__ BCLRPAT_B ; 
 scalar_t__ CURSOR_A_BASEADDR ; 
 scalar_t__ CURSOR_A_CONTROL ; 
 scalar_t__ CURSOR_A_PALETTE0 ; 
 scalar_t__ CURSOR_B_BASEADDR ; 
 scalar_t__ CURSOR_B_CONTROL ; 
 scalar_t__ CURSOR_B_PALETTE0 ; 
 scalar_t__ CURSOR_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ DISPARB ; 
 scalar_t__ DPLL_A ; 
 scalar_t__ DPLL_B ; 
 scalar_t__ DSPABASE ; 
 scalar_t__ DSPACNTR ; 
 scalar_t__ DSPASTRIDE ; 
 scalar_t__ DSPBBASE ; 
 scalar_t__ DSPBCNTR ; 
 scalar_t__ DSPBSTRIDE ; 
 scalar_t__ DVOA ; 
 scalar_t__ DVOA_SRCDIM ; 
 scalar_t__ DVOB ; 
 scalar_t__ DVOB_SRCDIM ; 
 scalar_t__ DVOC ; 
 scalar_t__ DVOC_SRCDIM ; 
 scalar_t__ FENCE ; 
 scalar_t__ FPA0 ; 
 scalar_t__ FPA1 ; 
 scalar_t__ FPB0 ; 
 scalar_t__ FPB1 ; 
 scalar_t__ FW_BLC_0 ; 
 scalar_t__ FW_BLC_1 ; 
 scalar_t__ HBLANK_A ; 
 scalar_t__ HBLANK_B ; 
 scalar_t__ HSYNC_A ; 
 scalar_t__ HSYNC_B ; 
 scalar_t__ HTOTAL_A ; 
 scalar_t__ HTOTAL_B ; 
 int /*<<< orphan*/  HWSTAM ; 
 int /*<<< orphan*/  IER ; 
 int /*<<< orphan*/  IIR ; 
 int /*<<< orphan*/  IMR ; 
 void* FUNC1 (scalar_t__) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ INSTPM ; 
 scalar_t__ LVDS ; 
 scalar_t__ MEM_MODE ; 
 int PALETTE_8_ENTRIES ; 
 scalar_t__ PALETTE_A ; 
 scalar_t__ PALETTE_B ; 
 scalar_t__ PIPEACONF ; 
 scalar_t__ PIPEBCONF ; 
 scalar_t__ SRC_SIZE_A ; 
 scalar_t__ SRC_SIZE_B ; 
 scalar_t__ SWF00 ; 
 scalar_t__ SWF10 ; 
 scalar_t__ SWF30 ; 
 scalar_t__ VBLANK_A ; 
 scalar_t__ VBLANK_B ; 
 scalar_t__ VGA0_DIVISOR ; 
 scalar_t__ VGA1_DIVISOR ; 
 scalar_t__ VGACNTRL ; 
 scalar_t__ VGAPD ; 
 scalar_t__ VSYNC_A ; 
 scalar_t__ VSYNC_B ; 
 scalar_t__ VTOTAL_A ; 
 scalar_t__ VTOTAL_B ; 

int FUNC3(struct intelfb_info *dinfo,
			    struct intelfb_hwstate *hw, int flag)
{
	int i;

#if VERBOSE > 0
	DBG_MSG("intelfbhw_read_hw_state\n");
#endif

	if (!hw || !dinfo)
		return -1;

	/* Read in as much of the HW state as possible. */
	hw->vga0_divisor = FUNC1(VGA0_DIVISOR);
	hw->vga1_divisor = FUNC1(VGA1_DIVISOR);
	hw->vga_pd = FUNC1(VGAPD);
	hw->dpll_a = FUNC1(DPLL_A);
	hw->dpll_b = FUNC1(DPLL_B);
	hw->fpa0 = FUNC1(FPA0);
	hw->fpa1 = FUNC1(FPA1);
	hw->fpb0 = FUNC1(FPB0);
	hw->fpb1 = FUNC1(FPB1);

	if (flag == 1)
		return flag;

#if 0
	/* This seems to be a problem with the 852GM/855GM */
	for (i = 0; i < PALETTE_8_ENTRIES; i++) {
		hw->palette_a[i] = INREG(PALETTE_A + (i << 2));
		hw->palette_b[i] = INREG(PALETTE_B + (i << 2));
	}
#endif

	if (flag == 2)
		return flag;

	hw->htotal_a = FUNC1(HTOTAL_A);
	hw->hblank_a = FUNC1(HBLANK_A);
	hw->hsync_a = FUNC1(HSYNC_A);
	hw->vtotal_a = FUNC1(VTOTAL_A);
	hw->vblank_a = FUNC1(VBLANK_A);
	hw->vsync_a = FUNC1(VSYNC_A);
	hw->src_size_a = FUNC1(SRC_SIZE_A);
	hw->bclrpat_a = FUNC1(BCLRPAT_A);
	hw->htotal_b = FUNC1(HTOTAL_B);
	hw->hblank_b = FUNC1(HBLANK_B);
	hw->hsync_b = FUNC1(HSYNC_B);
	hw->vtotal_b = FUNC1(VTOTAL_B);
	hw->vblank_b = FUNC1(VBLANK_B);
	hw->vsync_b = FUNC1(VSYNC_B);
	hw->src_size_b = FUNC1(SRC_SIZE_B);
	hw->bclrpat_b = FUNC1(BCLRPAT_B);

	if (flag == 3)
		return flag;

	hw->adpa = FUNC1(ADPA);
	hw->dvoa = FUNC1(DVOA);
	hw->dvob = FUNC1(DVOB);
	hw->dvoc = FUNC1(DVOC);
	hw->dvoa_srcdim = FUNC1(DVOA_SRCDIM);
	hw->dvob_srcdim = FUNC1(DVOB_SRCDIM);
	hw->dvoc_srcdim = FUNC1(DVOC_SRCDIM);
	hw->lvds = FUNC1(LVDS);

	if (flag == 4)
		return flag;

	hw->pipe_a_conf = FUNC1(PIPEACONF);
	hw->pipe_b_conf = FUNC1(PIPEBCONF);
	hw->disp_arb = FUNC1(DISPARB);

	if (flag == 5)
		return flag;

	hw->cursor_a_control = FUNC1(CURSOR_A_CONTROL);
	hw->cursor_b_control = FUNC1(CURSOR_B_CONTROL);
	hw->cursor_a_base = FUNC1(CURSOR_A_BASEADDR);
	hw->cursor_b_base = FUNC1(CURSOR_B_BASEADDR);

	if (flag == 6)
		return flag;

	for (i = 0; i < 4; i++) {
		hw->cursor_a_palette[i] = FUNC1(CURSOR_A_PALETTE0 + (i << 2));
		hw->cursor_b_palette[i] = FUNC1(CURSOR_B_PALETTE0 + (i << 2));
	}

	if (flag == 7)
		return flag;

	hw->cursor_size = FUNC1(CURSOR_SIZE);

	if (flag == 8)
		return flag;

	hw->disp_a_ctrl = FUNC1(DSPACNTR);
	hw->disp_b_ctrl = FUNC1(DSPBCNTR);
	hw->disp_a_base = FUNC1(DSPABASE);
	hw->disp_b_base = FUNC1(DSPBBASE);
	hw->disp_a_stride = FUNC1(DSPASTRIDE);
	hw->disp_b_stride = FUNC1(DSPBSTRIDE);

	if (flag == 9)
		return flag;

	hw->vgacntrl = FUNC1(VGACNTRL);

	if (flag == 10)
		return flag;

	hw->add_id = FUNC1(ADD_ID);

	if (flag == 11)
		return flag;

	for (i = 0; i < 7; i++) {
		hw->swf0x[i] = FUNC1(SWF00 + (i << 2));
		hw->swf1x[i] = FUNC1(SWF10 + (i << 2));
		if (i < 3)
			hw->swf3x[i] = FUNC1(SWF30 + (i << 2));
	}

	for (i = 0; i < 8; i++)
		hw->fence[i] = FUNC1(FENCE + (i << 2));

	hw->instpm = FUNC1(INSTPM);
	hw->mem_mode = FUNC1(MEM_MODE);
	hw->fw_blc_0 = FUNC1(FW_BLC_0);
	hw->fw_blc_1 = FUNC1(FW_BLC_1);

	hw->hwstam = FUNC2(HWSTAM);
	hw->ier = FUNC2(IER);
	hw->iir = FUNC2(IIR);
	hw->imr = FUNC2(IMR);

	return 0;
}