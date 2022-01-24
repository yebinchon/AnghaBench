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
union aty_pll {int /*<<< orphan*/  ct; } ;
typedef  int /*<<< orphan*/  u32 ;
struct fb_info {scalar_t__ par; } ;
struct atyfb_par {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GTB_DSP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct fb_info const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct fb_info const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(const struct fb_info *info, u32 vclk_per, u32 bpp, union aty_pll *pll)
{
	struct atyfb_par *par = (struct atyfb_par *) info->par;
	int err;

	if ((err = FUNC2(info, vclk_per, &pll->ct)))
		return err;
	if (FUNC0(GTB_DSP) && (err = FUNC1(info, bpp, &pll->ct)))
		return err;
	/*aty_calc_pll_ct(info, &pll->ct);*/
	return 0;
}