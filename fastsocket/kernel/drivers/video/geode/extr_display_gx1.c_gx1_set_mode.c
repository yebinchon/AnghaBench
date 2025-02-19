
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct geodefb_par {scalar_t__ dc_regs; TYPE_3__* vid_ops; } ;
struct TYPE_5__ {int xres; int bits_per_pixel; int right_margin; int hsync_len; int left_margin; int yres; int lower_margin; int vsync_len; int upper_margin; } ;
struct TYPE_4__ {int line_length; } ;
struct fb_info {TYPE_2__ var; TYPE_1__ fix; struct geodefb_par* par; } ;
struct TYPE_6__ {int (* configure_display ) (struct fb_info*) ;int (* set_dclk ) (struct fb_info*) ;} ;


 scalar_t__ DC_BUF_SIZE ;
 scalar_t__ DC_FB_ST_OFFSET ;
 scalar_t__ DC_FP_H_TIMING ;
 scalar_t__ DC_FP_V_TIMING ;
 int DC_GCFG_CMPE ;
 int DC_GCFG_DCLK_DIV_1 ;
 int DC_GCFG_DCLK_MASK ;
 int DC_GCFG_DECE ;
 int DC_GCFG_DFHPEL_POS ;
 int DC_GCFG_DFHPSL_POS ;
 int DC_GCFG_DFLE ;
 int DC_GCFG_VRDY ;
 scalar_t__ DC_GENERAL_CFG ;
 scalar_t__ DC_H_TIMING_1 ;
 scalar_t__ DC_H_TIMING_2 ;
 scalar_t__ DC_H_TIMING_3 ;
 scalar_t__ DC_LINE_DELTA ;
 int DC_OCFG_8BPP ;
 int DC_OCFG_PCKE ;
 int DC_OCFG_PDEH ;
 int DC_OCFG_PDEL ;
 scalar_t__ DC_OUTPUT_CFG ;
 int DC_TCFG_BLKE ;
 int DC_TCFG_FPPE ;
 int DC_TCFG_HSYE ;
 int DC_TCFG_TGEN ;
 int DC_TCFG_VSYE ;
 scalar_t__ DC_TIMING_CFG ;
 scalar_t__ DC_UNLOCK ;
 int DC_UNLOCK_CODE ;
 scalar_t__ DC_V_TIMING_1 ;
 scalar_t__ DC_V_TIMING_2 ;
 scalar_t__ DC_V_TIMING_3 ;
 int readl (scalar_t__) ;
 int stub1 (struct fb_info*) ;
 int stub2 (struct fb_info*) ;
 int udelay (int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void gx1_set_mode(struct fb_info *info)
{
 struct geodefb_par *par = info->par;
 u32 gcfg, tcfg, ocfg, dclk_div, val;
 int hactive, hblankstart, hsyncstart, hsyncend, hblankend, htotal;
 int vactive, vblankstart, vsyncstart, vsyncend, vblankend, vtotal;


 readl(par->dc_regs + DC_UNLOCK);
 writel(DC_UNLOCK_CODE, par->dc_regs + DC_UNLOCK);

 gcfg = readl(par->dc_regs + DC_GENERAL_CFG);
 tcfg = readl(par->dc_regs + DC_TIMING_CFG);


 tcfg &= ~(DC_TCFG_BLKE | DC_TCFG_TGEN);
 writel(tcfg, par->dc_regs + DC_TIMING_CFG);


 udelay(100);


 gcfg &= ~(DC_GCFG_DFLE | DC_GCFG_CMPE | DC_GCFG_DECE);
 writel(gcfg, par->dc_regs + DC_GENERAL_CFG);


 gcfg &= ~DC_GCFG_DCLK_MASK;
 writel(gcfg, par->dc_regs + DC_GENERAL_CFG);

 par->vid_ops->set_dclk(info);

 dclk_div = DC_GCFG_DCLK_DIV_1;
 gcfg |= dclk_div;
 writel(gcfg, par->dc_regs + DC_GENERAL_CFG);




 udelay(1000);






 gcfg = DC_GCFG_VRDY | dclk_div;



 gcfg |= (6 << DC_GCFG_DFHPEL_POS) | (5 << DC_GCFG_DFHPSL_POS) | DC_GCFG_DFLE;




 writel(0, par->dc_regs + DC_FB_ST_OFFSET);


 writel(info->fix.line_length >> 2, par->dc_regs + DC_LINE_DELTA);
 writel(((info->var.xres * info->var.bits_per_pixel/8) >> 3) + 2,
        par->dc_regs + DC_BUF_SIZE);


 ocfg = DC_OCFG_PCKE | DC_OCFG_PDEL | DC_OCFG_PDEH;
 if (info->var.bits_per_pixel == 8) ocfg |= DC_OCFG_8BPP;


 tcfg = DC_TCFG_FPPE | DC_TCFG_HSYE | DC_TCFG_VSYE | DC_TCFG_BLKE
  | DC_TCFG_TGEN;


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

 val = (hactive - 1) | ((htotal - 1) << 16);
 writel(val, par->dc_regs + DC_H_TIMING_1);
 val = (hblankstart - 1) | ((hblankend - 1) << 16);
 writel(val, par->dc_regs + DC_H_TIMING_2);
 val = (hsyncstart - 1) | ((hsyncend - 1) << 16);
 writel(val, par->dc_regs + DC_H_TIMING_3);
 writel(val, par->dc_regs + DC_FP_H_TIMING);
 val = (vactive - 1) | ((vtotal - 1) << 16);
 writel(val, par->dc_regs + DC_V_TIMING_1);
 val = (vblankstart - 1) | ((vblankend - 1) << 16);
 writel(val, par->dc_regs + DC_V_TIMING_2);
 val = (vsyncstart - 1) | ((vsyncend - 1) << 16);
 writel(val, par->dc_regs + DC_V_TIMING_3);
 val = (vsyncstart - 2) | ((vsyncend - 2) << 16);
 writel(val, par->dc_regs + DC_FP_V_TIMING);


 writel(ocfg, par->dc_regs + DC_OUTPUT_CFG);
 writel(tcfg, par->dc_regs + DC_TIMING_CFG);
 udelay(1000);
 writel(gcfg, par->dc_regs + DC_GENERAL_CFG);

 par->vid_ops->configure_display(info);


 writel(0, par->dc_regs + DC_UNLOCK);



}
