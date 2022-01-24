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
struct pmagbbfb_par {int dummy; } ;
struct TYPE_2__ {unsigned int len; } ;
struct fb_info {TYPE_1__ cmap; struct pmagbbfb_par* par; } ;

/* Variables and functions */
 int /*<<< orphan*/  BT459_ADDR_HI ; 
 int /*<<< orphan*/  BT459_ADDR_LO ; 
 int /*<<< orphan*/  BT459_CMAP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct pmagbbfb_par*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int FUNC4(unsigned int regno, unsigned int red,
			      unsigned int green, unsigned int blue,
			      unsigned int transp, struct fb_info *info)
{
	struct pmagbbfb_par *par = info->par;

	FUNC0(regno >= info->cmap.len);

	red   >>= 8;	/* The cmap fields are 16 bits    */
	green >>= 8;	/* wide, but the hardware colormap */
	blue  >>= 8;	/* registers are only 8 bits wide */

	FUNC2();
	FUNC1(par, BT459_ADDR_LO, regno);
	FUNC1(par, BT459_ADDR_HI, 0x00);
	FUNC3();
	FUNC1(par, BT459_CMAP, red);
	FUNC3();
	FUNC1(par, BT459_CMAP, green);
	FUNC3();
	FUNC1(par, BT459_CMAP, blue);

	return 0;
}