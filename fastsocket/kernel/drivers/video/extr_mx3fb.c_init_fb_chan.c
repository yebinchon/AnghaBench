
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mx3fb_platform_data {char* name; int num_modes; struct fb_videomode* mode; } ;
struct mx3fb_info {scalar_t__ ipu_ch; int flip_cmpl; int blank; struct mx3fb_data* mx3fb; struct idmac_channel* idmac_channel; } ;
struct mx3fb_data {struct device* dev; struct fb_info* fbi; } ;
struct TYPE_3__ {scalar_t__ chan_id; } ;
struct idmac_channel {unsigned int eof_irq; TYPE_1__ dma_chan; struct mx3fb_data* client; } ;
struct fb_videomode {int dummy; } ;
struct TYPE_4__ {int yres_virtual; int yres; } ;
struct fb_info {int cmap; struct mx3fb_info* par; TYPE_2__ var; int modelist; } ;
struct device {struct mx3fb_platform_data* platform_data; } ;


 int ARRAY_SIZE (struct fb_videomode*) ;
 int DI_HSP_CLK_PER ;
 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 int FB_BLANK_NORMAL ;
 int FB_BLANK_UNBLANK ;
 scalar_t__ IDMAC_SDC_0 ;
 int __blank (int ,struct fb_info*) ;
 int __set_par (struct fb_info*,int) ;
 int default_bpp ;
 int dev_dbg (struct device*,char*,unsigned int) ;
 int dev_info (struct device*,char*,char const*) ;
 int disable_irq (unsigned int) ;
 int fb_dealloc_cmap (int *) ;
 int fb_find_mode (TYPE_2__*,struct fb_info*,char const*,struct fb_videomode const*,int,int *,int ) ;
 char const* fb_mode ;
 int fb_videomode_to_modelist (struct fb_videomode const*,int,int *) ;
 int framebuffer_release (struct fb_info*) ;
 int init_completion (int *) ;
 struct fb_info* mx3fb_init_fbinfo (struct device*,int *) ;
 struct fb_videomode* mx3fb_modedb ;
 int mx3fb_ops ;
 int mx3fb_write_reg (struct mx3fb_data*,int,int ) ;
 int register_framebuffer (struct fb_info*) ;
 int sdc_set_brightness (struct mx3fb_data*,int) ;
 int sdc_set_color_key (struct mx3fb_data*,scalar_t__,int,int ) ;
 int sdc_set_global_alpha (struct mx3fb_data*,int,int) ;

__attribute__((used)) static int init_fb_chan(struct mx3fb_data *mx3fb, struct idmac_channel *ichan)
{
 struct device *dev = mx3fb->dev;
 struct mx3fb_platform_data *mx3fb_pdata = dev->platform_data;
 const char *name = mx3fb_pdata->name;
 unsigned int irq;
 struct fb_info *fbi;
 struct mx3fb_info *mx3fbi;
 const struct fb_videomode *mode;
 int ret, num_modes;

 ichan->client = mx3fb;
 irq = ichan->eof_irq;

 if (ichan->dma_chan.chan_id != IDMAC_SDC_0)
  return -EINVAL;

 fbi = mx3fb_init_fbinfo(dev, &mx3fb_ops);
 if (!fbi)
  return -ENOMEM;

 if (!fb_mode)
  fb_mode = name;

 if (!fb_mode) {
  ret = -EINVAL;
  goto emode;
 }

 if (mx3fb_pdata->mode && mx3fb_pdata->num_modes) {
  mode = mx3fb_pdata->mode;
  num_modes = mx3fb_pdata->num_modes;
 } else {
  mode = mx3fb_modedb;
  num_modes = ARRAY_SIZE(mx3fb_modedb);
 }

 if (!fb_find_mode(&fbi->var, fbi, fb_mode, mode,
     num_modes, ((void*)0), default_bpp)) {
  ret = -EBUSY;
  goto emode;
 }

 fb_videomode_to_modelist(mode, num_modes, &fbi->modelist);


 fbi->var.yres_virtual = fbi->var.yres * 2;

 mx3fb->fbi = fbi;


 mx3fb_write_reg(mx3fb, 0x00100010L, DI_HSP_CLK_PER);


 sdc_set_brightness(mx3fb, 255);
 sdc_set_global_alpha(mx3fb, 1, 0xFF);
 sdc_set_color_key(mx3fb, IDMAC_SDC_0, 0, 0);

 mx3fbi = fbi->par;
 mx3fbi->idmac_channel = ichan;
 mx3fbi->ipu_ch = ichan->dma_chan.chan_id;
 mx3fbi->mx3fb = mx3fb;
 mx3fbi->blank = FB_BLANK_NORMAL;

 init_completion(&mx3fbi->flip_cmpl);
 disable_irq(ichan->eof_irq);
 dev_dbg(mx3fb->dev, "disabling irq %d\n", ichan->eof_irq);
 ret = __set_par(fbi, 0);
 if (ret < 0)
  goto esetpar;

 __blank(FB_BLANK_UNBLANK, fbi);

 dev_info(dev, "registered, using mode %s\n", fb_mode);

 ret = register_framebuffer(fbi);
 if (ret < 0)
  goto erfb;

 return 0;

erfb:
esetpar:
emode:
 fb_dealloc_cmap(&fbi->cmap);
 framebuffer_release(fbi);

 return ret;
}
