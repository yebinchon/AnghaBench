
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tmiofb_par {scalar_t__ lcr; scalar_t__ ccr; } ;
struct resource {unsigned long start; } ;
struct TYPE_2__ {struct mfd_cell* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct mfd_cell {struct resource* resources; } ;
struct fb_info {unsigned long screen_size; struct tmiofb_par* par; } ;


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
 int msleep (int) ;
 struct fb_info* platform_get_drvdata (struct platform_device*) ;
 int tmio_iowrite16 (int,scalar_t__) ;

__attribute__((used)) static int tmiofb_hw_init(struct platform_device *dev)
{
 struct mfd_cell *cell = dev->dev.platform_data;
 struct fb_info *info = platform_get_drvdata(dev);
 struct tmiofb_par *par = info->par;
 const struct resource *nlcr = &cell->resources[0];
 const struct resource *vram = &cell->resources[2];
 unsigned long base;

 if (nlcr == ((void*)0) || vram == ((void*)0))
  return -EINVAL;

 base = nlcr->start;

 tmio_iowrite16(0x003a, par->ccr + CCR_UGCC);
 tmio_iowrite16(0x003a, par->ccr + CCR_GCC);
 tmio_iowrite16(0x3f00, par->ccr + CCR_USC);

 msleep(2);

 tmio_iowrite16(0x0000, par->ccr + CCR_USC);
 tmio_iowrite16(base >> 16, par->ccr + CCR_BASEH);
 tmio_iowrite16(base, par->ccr + CCR_BASEL);
 tmio_iowrite16(0x0002, par->ccr + CCR_CMD);
 tmio_iowrite16(0x40a8, par->ccr + CCR_VRAMRTC);
 tmio_iowrite16(0x0018, par->ccr + CCR_VRAMSAC);
 tmio_iowrite16(0x0002, par->ccr + CCR_VRAMBC);
 msleep(2);
 tmio_iowrite16(0x000b, par->ccr + CCR_VRAMBC);

 base = vram->start + info->screen_size;
 tmio_iowrite16(base >> 16, par->lcr + LCR_CFSAH);
 tmio_iowrite16(base, par->lcr + LCR_CFSAL);
 tmio_iowrite16(TMIOFB_FIFO_SIZE - 1, par->lcr + LCR_CFS);
 tmio_iowrite16(1, par->lcr + LCR_CFC);
 tmio_iowrite16(1, par->lcr + LCR_BBIE);
 tmio_iowrite16(0, par->lcr + LCR_CFWS);

 return 0;
}
