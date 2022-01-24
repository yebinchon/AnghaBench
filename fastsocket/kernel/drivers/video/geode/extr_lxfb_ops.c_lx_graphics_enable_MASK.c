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
typedef  int u32 ;
struct lxfb_par {int output; } ;
struct TYPE_2__ {int sync; } ;
struct fb_info {TYPE_1__ var; struct lxfb_par* par; } ;

/* Variables and functions */
 int FB_SYNC_HOR_HIGH_ACT ; 
 int FB_SYNC_VERT_HIGH_ACT ; 
 int /*<<< orphan*/  FP_DFC ; 
 int FP_DFC_BC ; 
 int /*<<< orphan*/  FP_PM ; 
 int FP_PM_P ; 
 int /*<<< orphan*/  FP_PT1 ; 
 int /*<<< orphan*/  FP_PT2 ; 
 int FP_PT2_SCRC ; 
 int /*<<< orphan*/  MSR_LX_MSR_PADSEL ; 
 int MSR_LX_MSR_PADSEL_TFT_SEL_HIGH ; 
 int MSR_LX_MSR_PADSEL_TFT_SEL_LOW ; 
 int OUTPUT_CRT ; 
 int OUTPUT_PANEL ; 
 int /*<<< orphan*/  VP_DCFG ; 
 int VP_DCFG_CRT_EN ; 
 int VP_DCFG_CRT_HSYNC_POL ; 
 int VP_DCFG_CRT_SYNC_SKW ; 
 int VP_DCFG_CRT_SYNC_SKW_DEFAULT ; 
 int VP_DCFG_CRT_VSYNC_POL ; 
 int VP_DCFG_DAC_BL_EN ; 
 int VP_DCFG_GV_GAM ; 
 int VP_DCFG_HSYNC_EN ; 
 int VP_DCFG_PWR_SEQ_DELAY ; 
 int VP_DCFG_PWR_SEQ_DELAY_DEFAULT ; 
 int VP_DCFG_VSYNC_EN ; 
 int /*<<< orphan*/  VP_MISC ; 
 int VP_MISC_APWRDN ; 
 int VP_MISC_DACPWRDN ; 
 int /*<<< orphan*/  VP_VRR ; 
 int FUNC0 (struct lxfb_par*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct lxfb_par*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct lxfb_par*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct lxfb_par*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC5(struct fb_info *info)
{
	struct lxfb_par *par = info->par;
	u32 temp, config;

	/* Set the video request register */
	FUNC3(par, VP_VRR, 0);

	/* Set up the polarities */

	config = FUNC1(par, VP_DCFG);

	config &= ~(VP_DCFG_CRT_SYNC_SKW | VP_DCFG_PWR_SEQ_DELAY |
			VP_DCFG_CRT_HSYNC_POL | VP_DCFG_CRT_VSYNC_POL);

	config |= (VP_DCFG_CRT_SYNC_SKW_DEFAULT | VP_DCFG_PWR_SEQ_DELAY_DEFAULT
			| VP_DCFG_GV_GAM);

	if (info->var.sync & FB_SYNC_HOR_HIGH_ACT)
		config |= VP_DCFG_CRT_HSYNC_POL;

	if (info->var.sync & FB_SYNC_VERT_HIGH_ACT)
		config |= VP_DCFG_CRT_VSYNC_POL;

	if (par->output & OUTPUT_PANEL) {
		u32 msrlo, msrhi;

		FUNC2(par, FP_PT1, 0);
		FUNC2(par, FP_PT2, FP_PT2_SCRC);
		FUNC2(par, FP_DFC, FP_DFC_BC);

		msrlo = MSR_LX_MSR_PADSEL_TFT_SEL_LOW;
		msrhi = MSR_LX_MSR_PADSEL_TFT_SEL_HIGH;

		FUNC4(MSR_LX_MSR_PADSEL, msrlo, msrhi);
	}

	if (par->output & OUTPUT_CRT) {
		config |= VP_DCFG_CRT_EN | VP_DCFG_HSYNC_EN |
				VP_DCFG_VSYNC_EN | VP_DCFG_DAC_BL_EN;
	}

	FUNC3(par, VP_DCFG, config);

	/* Turn the CRT dacs back on */

	if (par->output & OUTPUT_CRT) {
		temp = FUNC1(par, VP_MISC);
		temp &= ~(VP_MISC_DACPWRDN | VP_MISC_APWRDN);
		FUNC3(par, VP_MISC, temp);
	}

	/* Turn the panel on (if it isn't already) */
	if (par->output & OUTPUT_PANEL)
		FUNC2(par, FP_PM, FUNC0(par, FP_PM) | FP_PM_P);
}