
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fb_info {int dummy; } ;
struct fb_cmap {unsigned short* red; unsigned short* green; unsigned short* blue; int len; scalar_t__ start; int * transp; } ;
struct TYPE_2__ {int (* blank ) (int) ;} ;


 int do_install_cmap (struct fb_info*) ;
 int fb_set_cmap (struct fb_cmap*,struct fb_info*) ;
 TYPE_1__* fbhw ;
 int memset (unsigned short*,int ,int) ;
 int stub1 (int) ;

__attribute__((used)) static int atafb_blank(int blank, struct fb_info *info)
{
 unsigned short black[16];
 struct fb_cmap cmap;
 if (fbhw->blank && !fbhw->blank(blank))
  return 1;
 if (blank) {
  memset(black, 0, 16 * sizeof(unsigned short));
  cmap.red = black;
  cmap.green = black;
  cmap.blue = black;
  cmap.transp = ((void*)0);
  cmap.start = 0;
  cmap.len = 16;
  fb_set_cmap(&cmap, info);
 }




 return 0;
}
