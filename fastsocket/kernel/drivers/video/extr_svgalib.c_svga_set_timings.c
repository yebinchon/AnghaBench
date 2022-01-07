
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct svga_timing_regs {int v_sync_end_regs; int v_sync_start_regs; int v_blank_end_regs; int v_blank_start_regs; int v_display_regs; int v_total_regs; int h_sync_end_regs; int h_sync_start_regs; int h_blank_end_regs; int h_blank_start_regs; int h_display_regs; int h_total_regs; } ;
struct fb_var_screeninfo {int xres; int left_margin; int right_margin; int hsync_len; int yres; int upper_margin; int lower_margin; int vsync_len; int sync; } ;


 int FB_SYNC_HOR_HIGH_ACT ;
 int FB_SYNC_VERT_HIGH_ACT ;
 int VGA_MIS_R ;
 int VGA_MIS_W ;
 int pr_debug (char*,int,...) ;
 int svga_wcrt_multi (int ,int) ;
 int vga_r (int *,int ) ;
 int vga_w (int *,int ,int) ;

void svga_set_timings(const struct svga_timing_regs *tm, struct fb_var_screeninfo *var,
   u32 hmul, u32 hdiv, u32 vmul, u32 vdiv, u32 hborder, int node)
{
 u8 regval;
 u32 value;

 value = var->xres + var->left_margin + var->right_margin + var->hsync_len;
 value = (value * hmul) / hdiv;
 pr_debug("fb%d: horizontal total      : %d\n", node, value);
 svga_wcrt_multi(tm->h_total_regs, (value / 8) - 5);

 value = var->xres;
 value = (value * hmul) / hdiv;
 pr_debug("fb%d: horizontal display    : %d\n", node, value);
 svga_wcrt_multi(tm->h_display_regs, (value / 8) - 1);

 value = var->xres;
 value = (value * hmul) / hdiv;
 pr_debug("fb%d: horizontal blank start: %d\n", node, value);
 svga_wcrt_multi(tm->h_blank_start_regs, (value / 8) - 1 + hborder);

 value = var->xres + var->left_margin + var->right_margin + var->hsync_len;
 value = (value * hmul) / hdiv;
 pr_debug("fb%d: horizontal blank end  : %d\n", node, value);
 svga_wcrt_multi(tm->h_blank_end_regs, (value / 8) - 1 - hborder);

 value = var->xres + var->right_margin;
 value = (value * hmul) / hdiv;
 pr_debug("fb%d: horizontal sync start : %d\n", node, value);
 svga_wcrt_multi(tm->h_sync_start_regs, (value / 8));

 value = var->xres + var->right_margin + var->hsync_len;
 value = (value * hmul) / hdiv;
 pr_debug("fb%d: horizontal sync end   : %d\n", node, value);
 svga_wcrt_multi(tm->h_sync_end_regs, (value / 8));

 value = var->yres + var->upper_margin + var->lower_margin + var->vsync_len;
 value = (value * vmul) / vdiv;
 pr_debug("fb%d: vertical total        : %d\n", node, value);
 svga_wcrt_multi(tm->v_total_regs, value - 2);

 value = var->yres;
 value = (value * vmul) / vdiv;
 pr_debug("fb%d: vertical display      : %d\n", node, value);
 svga_wcrt_multi(tm->v_display_regs, value - 1);

 value = var->yres;
 value = (value * vmul) / vdiv;
 pr_debug("fb%d: vertical blank start  : %d\n", node, value);
 svga_wcrt_multi(tm->v_blank_start_regs, value);

 value = var->yres + var->upper_margin + var->lower_margin + var->vsync_len;
 value = (value * vmul) / vdiv;
 pr_debug("fb%d: vertical blank end    : %d\n", node, value);
 svga_wcrt_multi(tm->v_blank_end_regs, value - 2);

 value = var->yres + var->lower_margin;
 value = (value * vmul) / vdiv;
 pr_debug("fb%d: vertical sync start   : %d\n", node, value);
 svga_wcrt_multi(tm->v_sync_start_regs, value);

 value = var->yres + var->lower_margin + var->vsync_len;
 value = (value * vmul) / vdiv;
 pr_debug("fb%d: vertical sync end     : %d\n", node, value);
 svga_wcrt_multi(tm->v_sync_end_regs, value);



 regval = vga_r(((void*)0), VGA_MIS_R);
 if (var->sync & FB_SYNC_HOR_HIGH_ACT) {
  pr_debug("fb%d: positive horizontal sync\n", node);
  regval = regval & ~0x80;
 } else {
  pr_debug("fb%d: negative horizontal sync\n", node);
  regval = regval | 0x80;
 }
 if (var->sync & FB_SYNC_VERT_HIGH_ACT) {
  pr_debug("fb%d: positive vertical sync\n", node);
  regval = regval & ~0x40;
 } else {
  pr_debug("fb%d: negative vertical sync\n\n", node);
  regval = regval | 0x40;
 }
 vga_w(((void*)0), VGA_MIS_W, regval);
}
