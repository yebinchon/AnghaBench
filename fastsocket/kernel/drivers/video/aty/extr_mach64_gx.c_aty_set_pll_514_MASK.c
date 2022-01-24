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
struct TYPE_2__ {int m; int n; } ;
union aty_pll {TYPE_1__ ibm514; } ;
struct fb_info {scalar_t__ par; } ;
struct atyfb_par {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,struct atyfb_par*) ; 

__attribute__((used)) static void FUNC1(const struct fb_info *info,
			    const union aty_pll *pll)
{
	struct atyfb_par *par = (struct atyfb_par *) info->par;

	FUNC0(0x06, 0x02, par);	/* DAC Operation */
	FUNC0(0x10, 0x01, par);	/* PLL Control 1 */
	FUNC0(0x70, 0x01, par);	/* Misc Control 1 */
	FUNC0(0x8f, 0x1f, par);	/* PLL Ref. Divider Input */
	FUNC0(0x03, 0x00, par);	/* Sync Control */
	FUNC0(0x05, 0x00, par);	/* Power Management */
	FUNC0(0x20, pll->ibm514.m, par);	/* F0 / M0 */
	FUNC0(0x21, pll->ibm514.n, par);	/* F1 / N0 */
}