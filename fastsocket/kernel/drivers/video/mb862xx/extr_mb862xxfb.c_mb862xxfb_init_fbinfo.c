
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct mb862xxfb_par {unsigned long refclk; int dev; int mmio_len; scalar_t__ mmio_base_phys; int mapped_vram; scalar_t__ fb_base_phys; int fb_base; int pseudo_palette; struct mb862xx_gc_mode* gc_mode; } ;
struct mb862xx_gc_mode {int def_bpp; } ;
struct fb_videomode {int dummy; } ;
struct TYPE_7__ {unsigned long pixclock; int xres; unsigned long yres; int xres_virtual; unsigned long yres_virtual; int bits_per_pixel; unsigned long hsync_len; unsigned long vsync_len; int right_margin; unsigned long left_margin; unsigned long lower_margin; unsigned long upper_margin; int height; int width; int activate; int vmode; scalar_t__ accel_flags; scalar_t__ nonstd; scalar_t__ grayscale; scalar_t__ yoffset; scalar_t__ xoffset; } ;
struct TYPE_6__ {unsigned long smem_start; unsigned long mmio_start; int xpanstep; int ypanstep; int line_length; int visual; scalar_t__ ywrapstep; scalar_t__ type_aux; int type; int accel; int mmio_len; int smem_len; int id; } ;
struct fb_info {int flags; TYPE_2__ var; TYPE_1__ fix; TYPE_3__* fbops; int screen_size; int screen_base; int pseudo_palette; struct mb862xxfb_par* par; } ;
struct TYPE_8__ {scalar_t__ (* fb_check_var ) (TYPE_2__*,struct fb_info*) ;} ;


 int DRV_NAME ;
 int EINVAL ;
 int FBINFO_DEFAULT ;
 int FBINFO_FOREIGN_ENDIAN ;
 int FBINFO_HWACCEL_XPAN ;
 int FBINFO_HWACCEL_YPAN ;
 int FB_ACCEL_NONE ;
 int FB_ACTIVATE_NOW ;
 int FB_TYPE_PACKED_PIXELS ;
 int FB_VISUAL_PSEUDOCOLOR ;
 int FB_VISUAL_TRUECOLOR ;
 int FB_VMODE_NONINTERLACED ;
 unsigned long GC_DCM01_DEN ;
 unsigned long GC_DCM01_L0E ;
 unsigned long GC_DCM01_SC ;
 int GC_DCM1 ;
 int GC_HDB_HDP ;
 int GC_HTP ;
 int GC_L0EM ;
 unsigned long GC_L0EM_L0EC_24 ;
 int GC_L0M ;
 unsigned long GC_L0M_L0C_16 ;
 int GC_VDP_VSP ;
 int GC_VSW_HSW_HSP ;
 int GC_VTR ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*) ;
 int disp ;
 int fb_find_mode (TYPE_2__*,struct fb_info*,char*,int *,int ,int *,int) ;
 int fb_videomode_to_var (TYPE_2__*,struct fb_videomode*) ;
 int inreg (int ,int ) ;
 TYPE_3__ mb862xxfb_ops ;
 int strcpy (int ,int ) ;
 scalar_t__ stub1 (TYPE_2__*,struct fb_info*) ;

__attribute__((used)) static int mb862xxfb_init_fbinfo(struct fb_info *fbi)
{
 struct mb862xxfb_par *par = fbi->par;
 struct mb862xx_gc_mode *mode = par->gc_mode;
 unsigned long reg;

 fbi->fbops = &mb862xxfb_ops;
 fbi->pseudo_palette = par->pseudo_palette;
 fbi->screen_base = par->fb_base;
 fbi->screen_size = par->mapped_vram;

 strcpy(fbi->fix.id, DRV_NAME);
 fbi->fix.smem_start = (unsigned long)par->fb_base_phys;
 fbi->fix.smem_len = par->mapped_vram;
 fbi->fix.mmio_start = (unsigned long)par->mmio_base_phys;
 fbi->fix.mmio_len = par->mmio_len;
 fbi->fix.accel = FB_ACCEL_NONE;
 fbi->fix.type = FB_TYPE_PACKED_PIXELS;
 fbi->fix.type_aux = 0;
 fbi->fix.xpanstep = 1;
 fbi->fix.ypanstep = 1;
 fbi->fix.ywrapstep = 0;

 reg = inreg(disp, GC_DCM1);
 if (reg & GC_DCM01_DEN && reg & GC_DCM01_L0E) {

  unsigned long sc = ((reg & GC_DCM01_SC) >> 8) + 1;
  unsigned long hsp, vsp, ht, vt;

  dev_dbg(par->dev, "using bootloader's disp. mode\n");
  fbi->var.pixclock = (sc * 1000000) / par->refclk;
  fbi->var.xres = (inreg(disp, GC_HDB_HDP) & 0x0fff) + 1;
  reg = inreg(disp, GC_VDP_VSP);
  fbi->var.yres = ((reg >> 16) & 0x0fff) + 1;
  vsp = (reg & 0x0fff) + 1;
  fbi->var.xres_virtual = fbi->var.xres;
  fbi->var.yres_virtual = fbi->var.yres;
  reg = inreg(disp, GC_L0EM);
  if (reg & GC_L0EM_L0EC_24) {
   fbi->var.bits_per_pixel = 32;
  } else {
   reg = inreg(disp, GC_L0M);
   if (reg & GC_L0M_L0C_16)
    fbi->var.bits_per_pixel = 16;
   else
    fbi->var.bits_per_pixel = 8;
  }
  reg = inreg(disp, GC_VSW_HSW_HSP);
  fbi->var.hsync_len = ((reg & 0xff0000) >> 16) + 1;
  fbi->var.vsync_len = ((reg & 0x3f000000) >> 24) + 1;
  hsp = (reg & 0xffff) + 1;
  ht = ((inreg(disp, GC_HTP) & 0xfff0000) >> 16) + 1;
  fbi->var.right_margin = hsp - fbi->var.xres;
  fbi->var.left_margin = ht - hsp - fbi->var.hsync_len;
  vt = ((inreg(disp, GC_VTR) & 0xfff0000) >> 16) + 1;
  fbi->var.lower_margin = vsp - fbi->var.yres;
  fbi->var.upper_margin = vt - vsp - fbi->var.vsync_len;
 } else if (mode) {
  dev_dbg(par->dev, "using supplied mode\n");
  fb_videomode_to_var(&fbi->var, (struct fb_videomode *)mode);
  fbi->var.bits_per_pixel = mode->def_bpp ? mode->def_bpp : 8;
 } else {
  int ret;

  ret = fb_find_mode(&fbi->var, fbi, "640x480-16@60",
       ((void*)0), 0, ((void*)0), 16);
  if (ret == 0 || ret == 4) {
   dev_err(par->dev,
    "failed to get initial mode\n");
   return -EINVAL;
  }
 }

 fbi->var.xoffset = 0;
 fbi->var.yoffset = 0;
 fbi->var.grayscale = 0;
 fbi->var.nonstd = 0;
 fbi->var.height = -1;
 fbi->var.width = -1;
 fbi->var.accel_flags = 0;
 fbi->var.vmode = FB_VMODE_NONINTERLACED;
 fbi->var.activate = FB_ACTIVATE_NOW;
 fbi->flags = FBINFO_DEFAULT |



       FBINFO_HWACCEL_XPAN |
       FBINFO_HWACCEL_YPAN;


 if ((fbi->fbops->fb_check_var)(&fbi->var, fbi))
  dev_err(par->dev, "check_var() failed on initial setup?\n");

 fbi->fix.visual = fbi->var.bits_per_pixel == 8 ?
    FB_VISUAL_PSEUDOCOLOR : FB_VISUAL_TRUECOLOR;
 fbi->fix.line_length = (fbi->var.xres_virtual *
    fbi->var.bits_per_pixel) / 8;
 return 0;
}
