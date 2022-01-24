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
struct nvidia_par {int currentRop; } ;
struct fb_info {struct nvidia_par* par; } ;

/* Variables and functions */
 int /*<<< orphan*/ * NVCopyROP ; 
 int /*<<< orphan*/ * NVCopyROP_PM ; 
 int /*<<< orphan*/  FUNC0 (struct nvidia_par*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fb_info*,struct nvidia_par*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct fb_info*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ROP_SET ; 

__attribute__((used)) static void FUNC3(struct fb_info *info, u32 rop, u32 planemask)
{
	struct nvidia_par *par = info->par;

	if (planemask != ~0) {
		FUNC2(info, 0, planemask, ~0, ~0);
		if (par->currentRop != (rop + 32)) {
			FUNC1(info, par, ROP_SET, 1);
			FUNC0(par, NVCopyROP_PM[rop]);
			par->currentRop = rop + 32;
		}
	} else if (par->currentRop != rop) {
		if (par->currentRop >= 16)
			FUNC2(info, ~0, ~0, ~0, ~0);
		FUNC1(info, par, ROP_SET, 1);
		FUNC0(par, NVCopyROP[rop]);
		par->currentRop = rop;
	}
}