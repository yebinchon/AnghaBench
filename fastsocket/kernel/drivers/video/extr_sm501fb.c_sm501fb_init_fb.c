
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int (* fb_check_var ) (TYPE_3__*,struct fb_info*) ;int * fb_cursor; } ;
struct sm501fb_par {TYPE_4__ ops; struct sm501fb_info* info; } ;
struct sm501fb_info {int dev; scalar_t__ regs; TYPE_1__* pdata; } ;
struct sm501_platdata_fbsub {int flags; int def_bpp; scalar_t__ def_mode; } ;
struct fb_ops {int dummy; } ;
struct TYPE_9__ {int bits_per_pixel; int yres; int yres_virtual; int xres; int xres_virtual; int vmode; scalar_t__ accel_flags; int activate; scalar_t__ nonstd; } ;
struct TYPE_8__ {int xpanstep; int ypanstep; int accel; scalar_t__ ywrapstep; scalar_t__ type_aux; int type; int id; } ;
struct fb_info {int flags; TYPE_3__ var; TYPE_4__* fbops; int cmap; TYPE_2__ fix; struct sm501fb_par* par; } ;
typedef enum sm501_controller { ____Placeholder_sm501_controller } sm501_controller ;
struct TYPE_7__ {scalar_t__ fb_route; struct sm501_platdata_fbsub* fb_pnl; struct sm501_platdata_fbsub* fb_crt; } ;


 int BUG () ;
 int EINVAL ;
 int ENOMEM ;
 int FBINFO_FLAG_DEFAULT ;
 int FBINFO_HWACCEL_XPAN ;
 int FBINFO_HWACCEL_YPAN ;
 int FB_ACCEL_NONE ;
 int FB_ACTIVATE_NOW ;
 int FB_TYPE_PACKED_PIXELS ;
 int FB_VMODE_NONINTERLACED ;


 int NR_PALETTE ;
 int SM501FB_FLAG_USE_HWCURSOR ;
 int SM501FB_FLAG_USE_INIT_MODE ;
 scalar_t__ SM501_DC_CRT_CONTROL ;
 unsigned long SM501_DC_CRT_CONTROL_ENABLE ;
 unsigned long SM501_DC_CRT_CONTROL_SEL ;
 scalar_t__ SM501_DC_PANEL_CONTROL ;
 unsigned long SM501_DC_PANEL_CONTROL_EN ;
 scalar_t__ SM501_FB_CRT_PANEL ;
 int dev_err (int ,char*) ;
 int dev_info (int ,char*,...) ;
 scalar_t__ fb_alloc_cmap (int *,int ,int ) ;
 int fb_find_mode (TYPE_3__*,struct fb_info*,int *,int *,int ,int *,int) ;
 int fb_set_cmap (int *,struct fb_info*) ;
 int fb_videomode_to_var (TYPE_3__*,scalar_t__) ;
 int memcpy (TYPE_4__*,int *,int) ;
 unsigned long readl (scalar_t__) ;
 int sm501fb_ops_crt ;
 int sm501fb_ops_pnl ;
 int strlcpy (int ,char const*,int) ;
 int stub1 (TYPE_3__*,struct fb_info*) ;
 int writel (unsigned long,scalar_t__) ;

__attribute__((used)) static int sm501fb_init_fb(struct fb_info *fb,
      enum sm501_controller head,
      const char *fbname)
{
 struct sm501_platdata_fbsub *pd;
 struct sm501fb_par *par = fb->par;
 struct sm501fb_info *info = par->info;
 unsigned long ctrl;
 unsigned int enable;
 int ret;

 switch (head) {
 case 129:
  pd = info->pdata->fb_crt;
  ctrl = readl(info->regs + SM501_DC_CRT_CONTROL);
  enable = (ctrl & SM501_DC_CRT_CONTROL_ENABLE) ? 1 : 0;


  if (info->pdata->fb_route != SM501_FB_CRT_PANEL) {
   ctrl |= SM501_DC_CRT_CONTROL_SEL;
   writel(ctrl, info->regs + SM501_DC_CRT_CONTROL);
  }

  break;

 case 128:
  pd = info->pdata->fb_pnl;
  ctrl = readl(info->regs + SM501_DC_PANEL_CONTROL);
  enable = (ctrl & SM501_DC_PANEL_CONTROL_EN) ? 1 : 0;
  break;

 default:
  pd = ((void*)0);
  ctrl = 0;
  enable = 0;
  BUG();
 }

 dev_info(info->dev, "fb %s %sabled at start\n",
   fbname, enable ? "en" : "dis");



 if (head == 129 && info->pdata->fb_route == SM501_FB_CRT_PANEL) {
  ctrl &= ~SM501_DC_CRT_CONTROL_SEL;
  writel(ctrl, info->regs + SM501_DC_CRT_CONTROL);
  enable = 0;
 }

 strlcpy(fb->fix.id, fbname, sizeof(fb->fix.id));

 memcpy(&par->ops,
        (head == 129) ? &sm501fb_ops_crt : &sm501fb_ops_pnl,
        sizeof(struct fb_ops));



 if ((pd->flags & SM501FB_FLAG_USE_HWCURSOR) == 0)
  par->ops.fb_cursor = ((void*)0);

 fb->fbops = &par->ops;
 fb->flags = FBINFO_FLAG_DEFAULT |
  FBINFO_HWACCEL_XPAN | FBINFO_HWACCEL_YPAN;



 fb->fix.type = FB_TYPE_PACKED_PIXELS;
 fb->fix.type_aux = 0;
 fb->fix.xpanstep = 1;
 fb->fix.ypanstep = 1;
 fb->fix.ywrapstep = 0;
 fb->fix.accel = FB_ACCEL_NONE;



 fb->var.nonstd = 0;
 fb->var.activate = FB_ACTIVATE_NOW;
 fb->var.accel_flags = 0;
 fb->var.vmode = FB_VMODE_NONINTERLACED;
 fb->var.bits_per_pixel = 16;

 if (enable && (pd->flags & SM501FB_FLAG_USE_INIT_MODE) && 0) {


 } else {
  if (pd->def_mode) {
   dev_info(info->dev, "using supplied mode\n");
   fb_videomode_to_var(&fb->var, pd->def_mode);

   fb->var.bits_per_pixel = pd->def_bpp ? pd->def_bpp : 8;
   fb->var.xres_virtual = fb->var.xres;
   fb->var.yres_virtual = fb->var.yres;
  } else {
   ret = fb_find_mode(&fb->var, fb,
        ((void*)0), ((void*)0), 0, ((void*)0), 8);

   if (ret == 0 || ret == 4) {
    dev_err(info->dev,
     "failed to get initial mode\n");
    return -EINVAL;
   }
  }
 }


 if (fb_alloc_cmap(&fb->cmap, NR_PALETTE, 0)) {
  dev_err(info->dev, "failed to allocate cmap memory\n");
  return -ENOMEM;
 }
 fb_set_cmap(&fb->cmap, fb);

 ret = (fb->fbops->fb_check_var)(&fb->var, fb);
 if (ret)
  dev_err(info->dev, "check_var() failed on initial setup?\n");

 return 0;
}
