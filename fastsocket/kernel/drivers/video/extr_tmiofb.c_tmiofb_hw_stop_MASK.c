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
struct tmio_fb_data {int /*<<< orphan*/  (* lcd_set_power ) (struct platform_device*,int /*<<< orphan*/ ) ;} ;
struct TYPE_2__ {struct mfd_cell* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct mfd_cell {struct tmio_fb_data* driver_data; } ;
struct fb_info {struct tmiofb_par* par; } ;

/* Variables and functions */
 scalar_t__ CCR_UGCC ; 
 scalar_t__ LCR_GM ; 
 scalar_t__ LCR_LCDCCRC ; 
 struct fb_info* FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct platform_device *dev)
{
	struct mfd_cell *cell = dev->dev.platform_data;
	struct tmio_fb_data *data = cell->driver_data;
	struct fb_info *info = FUNC0(dev);
	struct tmiofb_par *par = info->par;

	FUNC2(0, par->ccr + CCR_UGCC);
	FUNC2(0, par->lcr + LCR_GM);
	data->lcd_set_power(dev, 0);
	FUNC2(0x0010, par->lcr + LCR_LCDCCRC);

	return 0;
}