
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tmiofb_par {scalar_t__ lcr; scalar_t__ ccr; } ;
struct tmio_fb_data {int (* lcd_set_power ) (struct platform_device*,int ) ;} ;
struct TYPE_2__ {struct mfd_cell* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct mfd_cell {struct tmio_fb_data* driver_data; } ;
struct fb_info {struct tmiofb_par* par; } ;


 scalar_t__ CCR_UGCC ;
 scalar_t__ LCR_GM ;
 scalar_t__ LCR_LCDCCRC ;
 struct fb_info* platform_get_drvdata (struct platform_device*) ;
 int stub1 (struct platform_device*,int ) ;
 int tmio_iowrite16 (int,scalar_t__) ;

__attribute__((used)) static int tmiofb_hw_stop(struct platform_device *dev)
{
 struct mfd_cell *cell = dev->dev.platform_data;
 struct tmio_fb_data *data = cell->driver_data;
 struct fb_info *info = platform_get_drvdata(dev);
 struct tmiofb_par *par = info->par;

 tmio_iowrite16(0, par->ccr + CCR_UGCC);
 tmio_iowrite16(0, par->lcr + LCR_GM);
 data->lcd_set_power(dev, 0);
 tmio_iowrite16(0x0010, par->lcr + LCR_LCDCCRC);

 return 0;
}
