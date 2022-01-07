
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {scalar_t__ state; int device; struct cirrusfb_info* par; } ;
struct cirrusfb_info {int blank_mode; int regbase; } ;


 int CL_GRE ;
 scalar_t__ FBINFO_STATE_RUNNING ;





 int VGA_SEQ_CLOCK_MODE ;
 int dev_dbg (int ,char*,...) ;
 int vga_rseq (int ,int ) ;
 int vga_wgfx (int ,int ,unsigned char) ;
 int vga_wseq (int ,int ,unsigned char) ;

__attribute__((used)) static int cirrusfb_blank(int blank_mode, struct fb_info *info)
{
 unsigned char val;
 struct cirrusfb_info *cinfo = info->par;
 int current_mode = cinfo->blank_mode;

 dev_dbg(info->device, "ENTER, blank mode = %d\n", blank_mode);

 if (info->state != FBINFO_STATE_RUNNING ||
     current_mode == blank_mode) {
  dev_dbg(info->device, "EXIT, returning 0\n");
  return 0;
 }


 if (current_mode == 131 ||
     current_mode == 129)

  val = 0;
 else

  val = 0x20;

 val |= vga_rseq(cinfo->regbase, VGA_SEQ_CLOCK_MODE) & 0xdf;
 vga_wseq(cinfo->regbase, VGA_SEQ_CLOCK_MODE, val);

 switch (blank_mode) {
 case 129:
 case 131:
  val = 0x00;
  break;
 case 128:
  val = 0x04;
  break;
 case 132:
  val = 0x02;
  break;
 case 130:
  val = 0x06;
  break;
 default:
  dev_dbg(info->device, "EXIT, returning 1\n");
  return 1;
 }

 vga_wgfx(cinfo->regbase, CL_GRE, val);

 cinfo->blank_mode = blank_mode;
 dev_dbg(info->device, "EXIT, returning 0\n");


 return (blank_mode == 131) ? 1 : 0;
}
