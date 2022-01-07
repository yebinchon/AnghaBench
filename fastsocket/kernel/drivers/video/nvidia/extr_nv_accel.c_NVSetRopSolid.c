
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvidia_par {int currentRop; } ;
struct fb_info {struct nvidia_par* par; } ;


 int * NVCopyROP ;
 int * NVCopyROP_PM ;
 int NVDmaNext (struct nvidia_par*,int ) ;
 int NVDmaStart (struct fb_info*,struct nvidia_par*,int ,int) ;
 int NVSetPattern (struct fb_info*,int ,int,int ,int ) ;
 int ROP_SET ;

__attribute__((used)) static void NVSetRopSolid(struct fb_info *info, u32 rop, u32 planemask)
{
 struct nvidia_par *par = info->par;

 if (planemask != ~0) {
  NVSetPattern(info, 0, planemask, ~0, ~0);
  if (par->currentRop != (rop + 32)) {
   NVDmaStart(info, par, ROP_SET, 1);
   NVDmaNext(par, NVCopyROP_PM[rop]);
   par->currentRop = rop + 32;
  }
 } else if (par->currentRop != rop) {
  if (par->currentRop >= 16)
   NVSetPattern(info, ~0, ~0, ~0, ~0);
  NVDmaStart(info, par, ROP_SET, 1);
  NVDmaNext(par, NVCopyROP[rop]);
  par->currentRop = rop;
 }
}
