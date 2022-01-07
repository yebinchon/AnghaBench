
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef unsigned int u32 ;
struct TYPE_8__ {unsigned int offset; } ;
struct TYPE_7__ {unsigned int offset; } ;
struct TYPE_6__ {unsigned int offset; } ;
struct TYPE_9__ {TYPE_3__ blue; TYPE_2__ green; TYPE_1__ red; } ;
struct TYPE_10__ {unsigned int len; } ;
struct fb_info {TYPE_4__ var; scalar_t__ pseudo_palette; TYPE_5__ cmap; } ;



__attribute__((used)) static int efifb_setcolreg(unsigned regno, unsigned red, unsigned green,
      unsigned blue, unsigned transp,
      struct fb_info *info)
{







 if (regno >= info->cmap.len)
  return 1;

 if (regno < 16) {
  red >>= 8;
  green >>= 8;
  blue >>= 8;
  ((u32 *)(info->pseudo_palette))[regno] =
   (red << info->var.red.offset) |
   (green << info->var.green.offset) |
   (blue << info->var.blue.offset);
 }
 return 0;
}
