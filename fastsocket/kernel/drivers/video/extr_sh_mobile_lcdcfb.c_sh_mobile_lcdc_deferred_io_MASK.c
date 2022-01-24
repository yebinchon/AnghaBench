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
struct sh_mobile_lcdc_chan {int /*<<< orphan*/  sglist; int /*<<< orphan*/  lcdc; } ;
struct list_head {int dummy; } ;
struct fb_info {int /*<<< orphan*/  dev; struct sh_mobile_lcdc_chan* par; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  LDSM2R ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sh_mobile_lcdc_chan*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (struct fb_info*,struct list_head*) ; 

__attribute__((used)) static void FUNC5(struct fb_info *info,
				       struct list_head *pagelist)
{
	struct sh_mobile_lcdc_chan *ch = info->par;
	unsigned int nr_pages;

	/* enable clocks before accessing hardware */
	FUNC3(ch->lcdc);

	nr_pages = FUNC4(info, pagelist);
	FUNC0(info->dev, ch->sglist, nr_pages, DMA_TO_DEVICE);

	/* trigger panel update */
	FUNC2(ch, LDSM2R, 1);

	FUNC1(info->dev, ch->sglist, nr_pages, DMA_TO_DEVICE);
}