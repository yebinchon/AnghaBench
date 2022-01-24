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
typedef  int u32 ;
struct mbxfb_overlaySetup {int scaled_width; int scaled_height; int width; int height; int fmt; int Y_stride; int UV_stride; int U_offset; int V_offset; int mem_offset; scalar_t__ enable; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
#define  MBXFB_FMT_UY0VY1 133 
#define  MBXFB_FMT_VY0UY1 132 
#define  MBXFB_FMT_Y0UY1V 131 
#define  MBXFB_FMT_Y0VY1U 130 
#define  MBXFB_FMT_YUV12 129 
#define  MBXFB_FMT_YUV16 128 
 int /*<<< orphan*/  SHCTRL ; 
 int SHCTRL_HDECIM ; 
 int /*<<< orphan*/  SHCTRL_HPITCH ; 
 int /*<<< orphan*/  SPOCTRL ; 
 int SPOCTRL_HV_SC_OR ; 
 int SPOCTRL_H_SC_BP ; 
 int /*<<< orphan*/  SPOCTRL_VPITCH ; 
 int SPOCTRL_VS_UR_C ; 
 int SPOCTRL_V_SC_BP ; 
 int /*<<< orphan*/  SSSIZE ; 
 int /*<<< orphan*/  SSSIZE_SC_HEIGHT ; 
 int /*<<< orphan*/  SSSIZE_SC_WIDTH ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  VOVRCLK ; 
 int /*<<< orphan*/  VSADR ; 
 int /*<<< orphan*/  VSCADR ; 
 int VSCADR_STR_EN ; 
 int /*<<< orphan*/  VSCADR_VBASE_ADR ; 
 int /*<<< orphan*/  VSCTRL ; 
 int VSCTRL_COSITED ; 
 int VSCTRL_CSC_EN ; 
 int VSCTRL_GAMMA_EN ; 
 int /*<<< orphan*/  VSCTRL_VPIXFMT ; 
 int VSCTRL_VPIXFMT_UY0VY1 ; 
 int VSCTRL_VPIXFMT_VY0UY1 ; 
 int VSCTRL_VPIXFMT_Y0UY1V ; 
 int VSCTRL_VPIXFMT_Y0VY1U ; 
 int VSCTRL_VPIXFMT_YUV12 ; 
 int /*<<< orphan*/  VSCTRL_VSHEIGHT ; 
 int /*<<< orphan*/  VSCTRL_VSWIDTH ; 
 int /*<<< orphan*/  VUBASE ; 
 int /*<<< orphan*/  VUBASE_UBASE_ADR ; 
 int VUBASE_UVHALFSTR ; 
 int /*<<< orphan*/  VVBASE ; 
 int /*<<< orphan*/  VVBASE_VBASE_ADR ; 
 int FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int) ; 
 int FUNC9 (int) ; 
 int FUNC10 (int) ; 
 int FUNC11 (int) ; 
 int FUNC12 (int) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct mbxfb_overlaySetup *set)
{
	u32 vsctrl, vscadr, vsadr;
	u32 sssize, spoctrl, shctrl;
	u32 vubase, vvbase;
	u32 vovrclk;

	if (set->scaled_width==0 || set->scaled_height==0)
		return -EINVAL;

	/* read registers which have reserved bits
	 * so we can write them back as-is. */
	vovrclk = FUNC13(VOVRCLK);
	vsctrl = FUNC13(VSCTRL);
	vscadr = FUNC13(VSCADR);
	vubase = FUNC13(VUBASE);
	vvbase = FUNC13(VVBASE);
	shctrl = FUNC13(SHCTRL);

	spoctrl = FUNC13(SPOCTRL);
	sssize = FUNC13(SSSIZE);

	vsctrl &= ~(	FUNC0(VSCTRL_VSWIDTH) |
					FUNC0(VSCTRL_VSHEIGHT) |
					FUNC0(VSCTRL_VPIXFMT) |
					VSCTRL_GAMMA_EN | VSCTRL_CSC_EN |
					VSCTRL_COSITED );
	vsctrl |= FUNC10(set->width) | FUNC9(set->height) |
				VSCTRL_CSC_EN;

	vscadr &= ~(VSCADR_STR_EN | FUNC0(VSCADR_VBASE_ADR) );
	vubase &= ~(VUBASE_UVHALFSTR | FUNC0(VUBASE_UBASE_ADR));
	vvbase &= ~(FUNC0(VVBASE_VBASE_ADR));

	switch (set->fmt) {
	case MBXFB_FMT_YUV16:
		vsctrl |= VSCTRL_VPIXFMT_YUV12;

		set->Y_stride = ((set->width) + 0xf ) & ~0xf;
		break;
	case MBXFB_FMT_YUV12:
		vsctrl |= VSCTRL_VPIXFMT_YUV12;

		set->Y_stride = ((set->width) + 0xf ) & ~0xf;
		vubase |= VUBASE_UVHALFSTR;

		break;
	case MBXFB_FMT_UY0VY1:
		vsctrl |= VSCTRL_VPIXFMT_UY0VY1;
		set->Y_stride = (set->width*2 + 0xf ) & ~0xf;
		break;
	case MBXFB_FMT_VY0UY1:
		vsctrl |= VSCTRL_VPIXFMT_VY0UY1;
		set->Y_stride = (set->width*2 + 0xf ) & ~0xf;
		break;
	case MBXFB_FMT_Y0UY1V:
		vsctrl |= VSCTRL_VPIXFMT_Y0UY1V;
		set->Y_stride = (set->width*2 + 0xf ) & ~0xf;
		break;
	case MBXFB_FMT_Y0VY1U:
		vsctrl |= VSCTRL_VPIXFMT_Y0VY1U;
		set->Y_stride = (set->width*2 + 0xf ) & ~0xf;
			break;
	default:
		return -EINVAL;
	}

	/* VSCTRL has the bits which sets the Video Pixel Format.
	 * When passing from a packed to planar format,
	 * if we write VSCTRL first, VVBASE and VUBASE would
	 * be zero if we would not set them here. (And then,
	 * the chips hangs and only a reset seems to fix it).
	 *
	 * If course, the values calculated here have no meaning
	 * for packed formats.
	 */
	set->UV_stride = ((set->width/2) + 0x7 ) & ~0x7;
		set->U_offset = set->height * set->Y_stride;
		set->V_offset = set->U_offset +
						set->height * set->UV_stride;
	vubase |= FUNC11(
			(0x60000 + set->mem_offset + set->U_offset)>>3);
	vvbase |= FUNC12(
			(0x60000 + set->mem_offset + set->V_offset)>>3);


	vscadr |= FUNC8((0x60000 + set->mem_offset)>>4);

	if (set->enable)
		vscadr |= VSCADR_STR_EN;


	vsadr = FUNC5((set->Y_stride)/16-1) |
		FUNC6(set->x) | FUNC7(set->y);

	sssize &= ~(FUNC0(SSSIZE_SC_WIDTH) | FUNC0(SSSIZE_SC_HEIGHT));
	sssize = FUNC4(set->scaled_width-1) |
			FUNC3(set->scaled_height-1);

	spoctrl &= ~(SPOCTRL_H_SC_BP | SPOCTRL_V_SC_BP |
			SPOCTRL_HV_SC_OR | SPOCTRL_VS_UR_C |
			FUNC0(SPOCTRL_VPITCH));
	spoctrl |= FUNC2((set->height<<11)/set->scaled_height);

	/* Bypass horiz/vert scaler when same size */
	if (set->scaled_width == set->width)
		spoctrl |= SPOCTRL_H_SC_BP;
	if (set->scaled_height == set->height)
		spoctrl |= SPOCTRL_V_SC_BP;

	shctrl &= ~(FUNC0(SHCTRL_HPITCH) | SHCTRL_HDECIM);
	shctrl |= FUNC1((set->width<<11)/set->scaled_width);

	/* Video plane registers */
	FUNC14(vsctrl, VSCTRL);
	FUNC14(vscadr, VSCADR);
	FUNC14(vubase, VUBASE);
	FUNC14(vvbase, VVBASE);
	FUNC14(vsadr, VSADR);

	/* Video scaler registers */
	FUNC14(sssize, SSSIZE);
	FUNC14(spoctrl, SPOCTRL);
	FUNC14(shctrl, SHCTRL);

	/* Clock */
	if (set->enable)
		vovrclk |= 1;
	else
		vovrclk &= ~1;

	FUNC14(vovrclk, VOVRCLK);

	return 0;
}