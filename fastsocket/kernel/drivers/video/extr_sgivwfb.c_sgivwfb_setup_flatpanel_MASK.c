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
typedef  scalar_t__ u32 ;
struct sgivw_par {int dummy; } ;
struct dbe_timing_info {int flags; int pll_m; int pll_n; int /*<<< orphan*/  pll_p; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FB_SYNC_HOR_HIGH_ACT ; 
 int FB_SYNC_VERT_HIGH_ACT ; 
#define  FLATPANEL_SGI_1600SW 128 
 int /*<<< orphan*/  FP_DE ; 
 int /*<<< orphan*/  FP_DE_OFF ; 
 int /*<<< orphan*/  FP_DE_ON ; 
 int /*<<< orphan*/  FP_HDRV ; 
 int /*<<< orphan*/  FP_HDRV_OFF ; 
 int /*<<< orphan*/  FP_VDRV ; 
 int /*<<< orphan*/  FP_VDRV_OFF ; 
 int /*<<< orphan*/  FP_VDRV_ON ; 
 int /*<<< orphan*/  HDRV_INVERT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  VDRV_INVERT ; 
 int /*<<< orphan*/  VT_FLAGS ; 
 int flatpanel_id ; 
 int /*<<< orphan*/  fp_de ; 
 int /*<<< orphan*/  fp_hdrv ; 
 int /*<<< orphan*/  fp_vdrv ; 
 int /*<<< orphan*/  vt_flags ; 

__attribute__((used)) static void FUNC2(struct sgivw_par *par, struct dbe_timing_info *currentTiming)
{
	int fp_wid, fp_hgt, fp_vbs, fp_vbe;
	u32 outputVal = 0;

	FUNC1(VT_FLAGS, HDRV_INVERT, outputVal, 
		(currentTiming->flags & FB_SYNC_HOR_HIGH_ACT) ? 0 : 1);
	FUNC1(VT_FLAGS, VDRV_INVERT, outputVal, 
		(currentTiming->flags & FB_SYNC_VERT_HIGH_ACT) ? 0 : 1);
	FUNC0(vt_flags, outputVal);

	/* Turn on the flat panel */
	switch (flatpanel_id) {
		case FLATPANEL_SGI_1600SW:
			fp_wid = 1600;
			fp_hgt = 1024;
			fp_vbs = 0;
			fp_vbe = 1600;
			currentTiming->pll_m = 4;
			currentTiming->pll_n = 1;
			currentTiming->pll_p = 0;
			break;
		default:
      			fp_wid = fp_hgt = fp_vbs = fp_vbe = 0xfff;
  	}

	outputVal = 0;
	FUNC1(FP_DE, FP_DE_ON, outputVal, fp_vbs);
	FUNC1(FP_DE, FP_DE_OFF, outputVal, fp_vbe);
	FUNC0(fp_de, outputVal);
	outputVal = 0;
	FUNC1(FP_HDRV, FP_HDRV_OFF, outputVal, fp_wid);
	FUNC0(fp_hdrv, outputVal);
	outputVal = 0;
	FUNC1(FP_VDRV, FP_VDRV_ON, outputVal, 1);
	FUNC1(FP_VDRV, FP_VDRV_OFF, outputVal, fp_hgt + 1);
	FUNC0(fp_vdrv, outputVal);
}