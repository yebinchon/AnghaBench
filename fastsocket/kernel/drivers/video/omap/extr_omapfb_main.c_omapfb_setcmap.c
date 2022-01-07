
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct fb_info {int dummy; } ;
struct fb_cmap {int* red; int* green; int* blue; int* transp; int start; int len; } ;


 int _setcolreg (struct fb_info*,int ,int ,int ,int ,int,int) ;

__attribute__((used)) static int omapfb_setcmap(struct fb_cmap *cmap, struct fb_info *info)
{
 int count, index, r;
 u16 *red, *green, *blue, *transp;
 u16 trans = 0xffff;

 red = cmap->red;
 green = cmap->green;
 blue = cmap->blue;
 transp = cmap->transp;
 index = cmap->start;

 for (count = 0; count < cmap->len; count++) {
  if (transp)
   trans = *transp++;
  r = _setcolreg(info, index++, *red++, *green++, *blue++, trans,
    count == cmap->len - 1);
  if (r != 0)
   return r;
 }

 return 0;
}
