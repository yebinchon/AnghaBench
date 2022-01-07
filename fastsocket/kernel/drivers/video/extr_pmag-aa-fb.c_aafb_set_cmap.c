
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct fb_info {int dummy; } ;
struct fb_cmap {scalar_t__ start; int len; int * transp; int blue; int green; int red; } ;
typedef int color ;


 int EINVAL ;
 scalar_t__ memcmp (int ,int*,int) ;

__attribute__((used)) static int aafb_set_cmap(struct fb_cmap *cmap, int kspc, int con,
    struct fb_info *info)
{
 u16 color[2] = {0x0000, 0x000f};

 if (cmap->start == 0
     && cmap->len == 2
     && memcmp(cmap->red, color, sizeof(color)) == 0
     && memcmp(cmap->green, color, sizeof(color)) == 0
     && memcmp(cmap->blue, color, sizeof(color)) == 0
     && cmap->transp == ((void*)0))
  return 0;
 else
  return -EINVAL;
}
