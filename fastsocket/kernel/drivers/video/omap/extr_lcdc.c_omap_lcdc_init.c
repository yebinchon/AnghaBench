
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct omapfb_mem_desc {int dummy; } ;
struct omapfb_device {int dev; } ;
struct clk {int dummy; } ;
struct TYPE_2__ {int ext_mode; struct clk* lcd_ck; struct omapfb_device* fbdev; scalar_t__ irq_mask; } ;


 scalar_t__ IS_ERR (struct clk*) ;
 int MODULE_NAME ;
 int OMAP_LCDC_CONTROL ;
 int OMAP_LCDC_IRQ ;
 int PTR_ERR (struct clk*) ;
 int alloc_palette_ram () ;
 int clk_disable (struct clk*) ;
 int clk_enable (struct clk*) ;
 void* clk_get (int ,char*) ;
 int clk_get_rate (struct clk*) ;
 int clk_put (struct clk*) ;
 int clk_set_rate (struct clk*,int) ;
 int dev_err (int ,char*) ;
 int free_irq (int ,struct omapfb_device*) ;
 int free_palette_ram () ;
 TYPE_1__ lcdc ;
 int lcdc_dma_handler ;
 int lcdc_irq_handler ;
 scalar_t__ machine_is_ams_delta () ;
 scalar_t__ machine_is_omap_h3 () ;
 int omap_free_lcd_dma () ;
 int omap_request_lcd_dma (int ,int *) ;
 int omap_set_lcd_dma_ext_controller (int) ;
 int omap_set_lcd_dma_single_transfer (int) ;
 int omap_writel (scalar_t__,int ) ;
 int pr_info (char*) ;
 int request_irq (int ,int ,int ,int ,struct omapfb_device*) ;
 int setup_fbmem (struct omapfb_mem_desc*) ;

__attribute__((used)) static int omap_lcdc_init(struct omapfb_device *fbdev, int ext_mode,
     struct omapfb_mem_desc *req_vram)
{
 int r;
 u32 l;
 int rate;
 struct clk *tc_ck;

 lcdc.irq_mask = 0;

 lcdc.fbdev = fbdev;
 lcdc.ext_mode = ext_mode;

 l = 0;
 omap_writel(l, OMAP_LCDC_CONTROL);




 lcdc.lcd_ck = clk_get(fbdev->dev, "lcd_ck");
 if (IS_ERR(lcdc.lcd_ck)) {
  dev_err(fbdev->dev, "unable to access LCD clock\n");
  r = PTR_ERR(lcdc.lcd_ck);
  goto fail0;
 }

 tc_ck = clk_get(fbdev->dev, "tc_ck");
 if (IS_ERR(tc_ck)) {
  dev_err(fbdev->dev, "unable to access TC clock\n");
  r = PTR_ERR(tc_ck);
  goto fail1;
 }

 rate = clk_get_rate(tc_ck);
 clk_put(tc_ck);

 if (machine_is_ams_delta())
  rate /= 4;
 if (machine_is_omap_h3())
  rate /= 3;
 r = clk_set_rate(lcdc.lcd_ck, rate);
 if (r) {
  dev_err(fbdev->dev, "failed to adjust LCD rate\n");
  goto fail1;
 }
 clk_enable(lcdc.lcd_ck);

 r = request_irq(OMAP_LCDC_IRQ, lcdc_irq_handler, 0, MODULE_NAME, fbdev);
 if (r) {
  dev_err(fbdev->dev, "unable to get IRQ\n");
  goto fail2;
 }

 r = omap_request_lcd_dma(lcdc_dma_handler, ((void*)0));
 if (r) {
  dev_err(fbdev->dev, "unable to get LCD DMA\n");
  goto fail3;
 }

 omap_set_lcd_dma_single_transfer(ext_mode);
 omap_set_lcd_dma_ext_controller(ext_mode);

 if (!ext_mode)
  if ((r = alloc_palette_ram()) < 0)
   goto fail4;

 if ((r = setup_fbmem(req_vram)) < 0)
  goto fail5;

 pr_info("omapfb: LCDC initialized\n");

 return 0;
fail5:
 if (!ext_mode)
  free_palette_ram();
fail4:
 omap_free_lcd_dma();
fail3:
 free_irq(OMAP_LCDC_IRQ, lcdc.fbdev);
fail2:
 clk_disable(lcdc.lcd_ck);
fail1:
 clk_put(lcdc.lcd_ck);
fail0:
 return r;
}
