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
 int /*<<< orphan*/  CL_SEQR1E ; 
 int /*<<< orphan*/  CL_SEQR1F ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char) ; 

__attribute__((used)) static void FUNC4(const struct fb_info *info, int div)
{
	struct cirrusfb_info *cinfo = info->par;
	unsigned char old1f, old1e;

	FUNC0(cinfo != NULL);
	old1f = FUNC2(cinfo->regbase, CL_SEQR1F) & ~0x40;

	if (div) {
		FUNC1(info->device, "Set %s as pixclock source.\n",
			(div == 2) ? "MCLK/2" : "MCLK");
		old1f |= 0x40;
		old1e = FUNC2(cinfo->regbase, CL_SEQR1E) & ~0x1;
		if (div == 2)
			old1e |= 1;

		FUNC3(cinfo->regbase, CL_SEQR1E, old1e);
	}
	FUNC3(cinfo->regbase, CL_SEQR1F, old1f);
}