
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvidia_par {int dummy; } ;
struct fb_info {struct nvidia_par* par; } ;


 int NVDmaNext (struct nvidia_par*,int ) ;
 int NVDmaStart (struct fb_info*,struct nvidia_par*,int ,int) ;
 int PATTERN_COLOR_0 ;

__attribute__((used)) static void NVSetPattern(struct fb_info *info, u32 clr0, u32 clr1,
    u32 pat0, u32 pat1)
{
 struct nvidia_par *par = info->par;

 NVDmaStart(info, par, PATTERN_COLOR_0, 4);
 NVDmaNext(par, clr0);
 NVDmaNext(par, clr1);
 NVDmaNext(par, pat0);
 NVDmaNext(par, pat1);
}
