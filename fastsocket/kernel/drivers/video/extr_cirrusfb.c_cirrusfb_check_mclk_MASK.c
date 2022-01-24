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
struct fb_info {int /*<<< orphan*/  device; struct cirrusfb_info* par; } ;
struct cirrusfb_info {int /*<<< orphan*/  regbase; } ;

/* Variables and functions */
 int /*<<< orphan*/  CL_SEQR1F ; 
 int FUNC0 (long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct fb_info *info, long freq)
{
	struct cirrusfb_info *cinfo = info->par;
	long mclk = FUNC2(cinfo->regbase, CL_SEQR1F) & 0x3f;

	/* Read MCLK value */
	mclk = (14318 * mclk) >> 3;
	FUNC1(info->device, "Read MCLK of %ld kHz\n", mclk);

	/* Determine if we should use MCLK instead of VCLK, and if so, what we
	 * should divide it by to get VCLK
	 */

	if (FUNC0(freq - mclk) < 250) {
		FUNC1(info->device, "Using VCLK = MCLK\n");
		return 1;
	} else if (FUNC0(freq - (mclk / 2)) < 250) {
		FUNC1(info->device, "Using VCLK = MCLK/2\n");
		return 2;
	}

	return 0;
}