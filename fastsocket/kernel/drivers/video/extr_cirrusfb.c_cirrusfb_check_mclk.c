
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int device; struct cirrusfb_info* par; } ;
struct cirrusfb_info {int regbase; } ;


 int CL_SEQR1F ;
 int abs (long) ;
 int dev_dbg (int ,char*,...) ;
 int vga_rseq (int ,int ) ;

__attribute__((used)) static int cirrusfb_check_mclk(struct fb_info *info, long freq)
{
 struct cirrusfb_info *cinfo = info->par;
 long mclk = vga_rseq(cinfo->regbase, CL_SEQR1F) & 0x3f;


 mclk = (14318 * mclk) >> 3;
 dev_dbg(info->device, "Read MCLK of %ld kHz\n", mclk);





 if (abs(freq - mclk) < 250) {
  dev_dbg(info->device, "Using VCLK = MCLK\n");
  return 1;
 } else if (abs(freq - (mclk / 2)) < 250) {
  dev_dbg(info->device, "Using VCLK = MCLK/2\n");
  return 2;
 }

 return 0;
}
