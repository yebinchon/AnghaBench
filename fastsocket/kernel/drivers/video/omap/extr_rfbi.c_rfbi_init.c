
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct omapfb_device {int dev; } ;
struct TYPE_2__ {int l4_khz; int dss_ick; int base; struct omapfb_device* fbdev; } ;


 int DISPC_IRQ_FRAMEMASK ;
 int ENOMEM ;
 int RFBI_BASE ;
 int RFBI_CONFIG0 ;
 int RFBI_CONTROL ;
 int RFBI_DATA_CYCLE1_0 ;
 int RFBI_REVISION ;
 int RFBI_SYSCONFIG ;
 int RFBI_SYSSTATUS ;
 int SZ_1K ;
 int clk_get_rate (int ) ;
 int dev_err (int ,char*) ;
 int ioremap (int ,int ) ;
 int omap_dispc_request_irq (int ,int ,int *) ;
 int pr_info (char*,int,int) ;
 TYPE_1__ rfbi ;
 int rfbi_dma_callback ;
 int rfbi_enable_clocks (int) ;
 int rfbi_get_clocks () ;
 int rfbi_read_reg (int ) ;
 int rfbi_write_reg (int ,int) ;

__attribute__((used)) static int rfbi_init(struct omapfb_device *fbdev)
{
 u32 l;
 int r;

 rfbi.fbdev = fbdev;
 rfbi.base = ioremap(RFBI_BASE, SZ_1K);
 if (!rfbi.base) {
  dev_err(fbdev->dev, "can't ioremap RFBI\n");
  return -ENOMEM;
 }

 if ((r = rfbi_get_clocks()) < 0)
  return r;
 rfbi_enable_clocks(1);

 rfbi.l4_khz = clk_get_rate(rfbi.dss_ick) / 1000;


 rfbi_write_reg(RFBI_SYSCONFIG, 1 << 1);
 while (!(rfbi_read_reg(RFBI_SYSSTATUS) & (1 << 0)));

 l = rfbi_read_reg(RFBI_SYSCONFIG);

 l |= (1 << 0) | (2 << 3);
 rfbi_write_reg(RFBI_SYSCONFIG, l);


 l = (0x03 << 0) | (0x00 << 2) | (0x01 << 5) | (0x02 << 7);
 l |= (0 << 9) | (1 << 20) | (1 << 21);
 rfbi_write_reg(RFBI_CONFIG0, l);

 rfbi_write_reg(RFBI_DATA_CYCLE1_0, 0x00000010);

 l = rfbi_read_reg(RFBI_CONTROL);

 l = (0x01 << 2);
 rfbi_write_reg(RFBI_CONTROL, l);

 r = omap_dispc_request_irq(DISPC_IRQ_FRAMEMASK, rfbi_dma_callback,
       ((void*)0));
 if (r < 0) {
  dev_err(fbdev->dev, "can't get DISPC irq\n");
  rfbi_enable_clocks(0);
  return r;
 }

 l = rfbi_read_reg(RFBI_REVISION);
 pr_info("omapfb: RFBI version %d.%d initialized\n",
  (l >> 4) & 0x0f, l & 0x0f);

 rfbi_enable_clocks(0);

 return 0;
}
