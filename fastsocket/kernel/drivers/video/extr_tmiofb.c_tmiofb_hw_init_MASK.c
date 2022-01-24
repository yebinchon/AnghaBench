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
struct tmiofb_par {scalar_t__ lcr; scalar_t__ ccr; } ;
struct resource {unsigned long start; } ;
struct TYPE_2__ {struct mfd_cell* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct mfd_cell {struct resource* resources; } ;
struct fb_info {unsigned long screen_size; struct tmiofb_par* par; } ;

/* Variables and functions */
 scalar_t__ CCR_BASEH ; 
 scalar_t__ CCR_BASEL ; 
 scalar_t__ CCR_CMD ; 
 scalar_t__ CCR_GCC ; 
 scalar_t__ CCR_UGCC ; 
 scalar_t__ CCR_USC ; 
 scalar_t__ CCR_VRAMBC ; 
 scalar_t__ CCR_VRAMRTC ; 
 scalar_t__ CCR_VRAMSAC ; 
 int EINVAL ; 
 scalar_t__ LCR_BBIE ; 
 scalar_t__ LCR_CFC ; 
 scalar_t__ LCR_CFS ; 
 scalar_t__ LCR_CFSAH ; 
 scalar_t__ LCR_CFSAL ; 
 scalar_t__ LCR_CFWS ; 
 int TMIOFB_FIFO_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct fb_info* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct platform_device *dev)
{
	struct mfd_cell *cell = dev->dev.platform_data;
	struct fb_info *info = FUNC1(dev);
	struct tmiofb_par *par = info->par;
	const struct resource *nlcr = &cell->resources[0];
	const struct resource *vram = &cell->resources[2];
	unsigned long base;

	if (nlcr == NULL || vram == NULL)
		return -EINVAL;

	base = nlcr->start;

	FUNC2(0x003a, par->ccr + CCR_UGCC);
	FUNC2(0x003a, par->ccr + CCR_GCC);
	FUNC2(0x3f00, par->ccr + CCR_USC);

	FUNC0(2); /* wait for device to settle */

	FUNC2(0x0000, par->ccr + CCR_USC);
	FUNC2(base >> 16, par->ccr + CCR_BASEH);
	FUNC2(base, par->ccr + CCR_BASEL);
	FUNC2(0x0002, par->ccr + CCR_CMD); /* base address enable */
	FUNC2(0x40a8, par->ccr + CCR_VRAMRTC); /* VRAMRC, VRAMTC */
	FUNC2(0x0018, par->ccr + CCR_VRAMSAC); /* VRAMSTS, VRAMAC */
	FUNC2(0x0002, par->ccr + CCR_VRAMBC);
	FUNC0(2); /* wait for device to settle */
	FUNC2(0x000b, par->ccr + CCR_VRAMBC);

	base = vram->start + info->screen_size;
	FUNC2(base >> 16, par->lcr + LCR_CFSAH);
	FUNC2(base, par->lcr + LCR_CFSAL);
	FUNC2(TMIOFB_FIFO_SIZE - 1, par->lcr + LCR_CFS);
	FUNC2(1, par->lcr + LCR_CFC);
	FUNC2(1, par->lcr + LCR_BBIE);
	FUNC2(0, par->lcr + LCR_CFWS);

	return 0;
}