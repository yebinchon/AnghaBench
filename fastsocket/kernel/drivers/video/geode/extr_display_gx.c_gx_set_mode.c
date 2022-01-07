
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct gxfb_par {int dummy; } ;
struct TYPE_4__ {int xres; int bits_per_pixel; int right_margin; int hsync_len; int left_margin; int yres; int lower_margin; int vsync_len; int upper_margin; } ;
struct TYPE_3__ {int line_length; } ;
struct fb_info {TYPE_2__ var; TYPE_1__ fix; struct gxfb_par* par; } ;


 int DC_DISPLAY_CFG ;
 int DC_DISPLAY_CFG_A18M ;
 int DC_DISPLAY_CFG_A20M ;
 int DC_DISPLAY_CFG_DISP_MODE_16BPP ;
 int DC_DISPLAY_CFG_DISP_MODE_24BPP ;
 int DC_DISPLAY_CFG_DISP_MODE_8BPP ;
 int DC_DISPLAY_CFG_GDEN ;
 int DC_DISPLAY_CFG_PALB ;
 int DC_DISPLAY_CFG_TGEN ;
 int DC_DISPLAY_CFG_VDEN ;
 int DC_FB_ST_OFFSET ;
 int DC_GENERAL_CFG ;
 int DC_GENERAL_CFG_CMPE ;
 int DC_GENERAL_CFG_DECE ;
 int DC_GENERAL_CFG_DFHPEL_SHIFT ;
 int DC_GENERAL_CFG_DFHPSL_SHIFT ;
 int DC_GENERAL_CFG_DFLE ;
 int DC_GENERAL_CFG_VDSE ;
 int DC_GENERAL_CFG_YUVM ;
 int DC_GFX_PITCH ;
 int DC_H_ACTIVE_TIMING ;
 int DC_H_BLANK_TIMING ;
 int DC_H_SYNC_TIMING ;
 int DC_LINE_SIZE ;
 int DC_UNLOCK ;
 int DC_UNLOCK_LOCK ;
 int DC_UNLOCK_UNLOCK ;
 int DC_V_ACTIVE_TIMING ;
 int DC_V_BLANK_TIMING ;
 int DC_V_SYNC_TIMING ;
 int gx_configure_display (struct fb_info*) ;
 int gx_set_dclk_frequency (struct fb_info*) ;
 int read_dc (struct gxfb_par*,int ) ;
 int udelay (int) ;
 int write_dc (struct gxfb_par*,int ,int) ;

void gx_set_mode(struct fb_info *info)
{
 struct gxfb_par *par = info->par;
 u32 gcfg, dcfg;
 int hactive, hblankstart, hsyncstart, hsyncend, hblankend, htotal;
 int vactive, vblankstart, vsyncstart, vsyncend, vblankend, vtotal;


 write_dc(par, DC_UNLOCK, DC_UNLOCK_UNLOCK);

 gcfg = read_dc(par, DC_GENERAL_CFG);
 dcfg = read_dc(par, DC_DISPLAY_CFG);


 dcfg &= ~DC_DISPLAY_CFG_TGEN;
 write_dc(par, DC_DISPLAY_CFG, dcfg);


 udelay(100);


 gcfg &= ~(DC_GENERAL_CFG_DFLE | DC_GENERAL_CFG_CMPE |
   DC_GENERAL_CFG_DECE);
 write_dc(par, DC_GENERAL_CFG, gcfg);


 gx_set_dclk_frequency(info);






 gcfg &= DC_GENERAL_CFG_YUVM | DC_GENERAL_CFG_VDSE;
 dcfg = 0;



 gcfg |= (6 << DC_GENERAL_CFG_DFHPEL_SHIFT) |
  (5 << DC_GENERAL_CFG_DFHPSL_SHIFT) | DC_GENERAL_CFG_DFLE;


 write_dc(par, DC_FB_ST_OFFSET, 0);


 write_dc(par, DC_GFX_PITCH, info->fix.line_length >> 3);
 write_dc(par, DC_LINE_SIZE,
  ((info->var.xres * info->var.bits_per_pixel/8) >> 3) + 2);



 dcfg |= DC_DISPLAY_CFG_GDEN | DC_DISPLAY_CFG_VDEN |
  DC_DISPLAY_CFG_A20M | DC_DISPLAY_CFG_A18M;


 switch (info->var.bits_per_pixel) {
 case 8:
  dcfg |= DC_DISPLAY_CFG_DISP_MODE_8BPP;
  break;
 case 16:
  dcfg |= DC_DISPLAY_CFG_DISP_MODE_16BPP;
  break;
 case 32:
  dcfg |= DC_DISPLAY_CFG_DISP_MODE_24BPP;
  dcfg |= DC_DISPLAY_CFG_PALB;
  break;
 }


 dcfg |= DC_DISPLAY_CFG_TGEN;


 hactive = info->var.xres;
 hblankstart = hactive;
 hsyncstart = hblankstart + info->var.right_margin;
 hsyncend = hsyncstart + info->var.hsync_len;
 hblankend = hsyncend + info->var.left_margin;
 htotal = hblankend;

 vactive = info->var.yres;
 vblankstart = vactive;
 vsyncstart = vblankstart + info->var.lower_margin;
 vsyncend = vsyncstart + info->var.vsync_len;
 vblankend = vsyncend + info->var.upper_margin;
 vtotal = vblankend;

 write_dc(par, DC_H_ACTIVE_TIMING, (hactive - 1) |
   ((htotal - 1) << 16));
 write_dc(par, DC_H_BLANK_TIMING, (hblankstart - 1) |
   ((hblankend - 1) << 16));
 write_dc(par, DC_H_SYNC_TIMING, (hsyncstart - 1) |
   ((hsyncend - 1) << 16));

 write_dc(par, DC_V_ACTIVE_TIMING, (vactive - 1) |
   ((vtotal - 1) << 16));
 write_dc(par, DC_V_BLANK_TIMING, (vblankstart - 1) |
   ((vblankend - 1) << 16));
 write_dc(par, DC_V_SYNC_TIMING, (vsyncstart - 1) |
   ((vsyncend - 1) << 16));


 write_dc(par, DC_DISPLAY_CFG, dcfg);
 write_dc(par, DC_GENERAL_CFG, gcfg);

 gx_configure_display(info);


 write_dc(par, DC_UNLOCK, DC_UNLOCK_LOCK);
}
