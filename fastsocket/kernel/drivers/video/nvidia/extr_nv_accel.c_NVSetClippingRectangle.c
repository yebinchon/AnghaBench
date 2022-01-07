
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvidia_par {int dummy; } ;
struct fb_info {struct nvidia_par* par; } ;


 int CLIP_POINT ;
 int NVDmaNext (struct nvidia_par*,int) ;
 int NVDmaStart (struct fb_info*,struct nvidia_par*,int ,int) ;

__attribute__((used)) static void NVSetClippingRectangle(struct fb_info *info, int x1, int y1,
       int x2, int y2)
{
 struct nvidia_par *par = info->par;
 int h = y2 - y1 + 1;
 int w = x2 - x1 + 1;

 NVDmaStart(info, par, CLIP_POINT, 2);
 NVDmaNext(par, (y1 << 16) | x1);
 NVDmaNext(par, (h << 16) | w);
}
