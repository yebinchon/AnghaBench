
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_int ;
typedef int u32 ;
struct TYPE_9__ {int length; int offset; } ;
struct TYPE_8__ {int length; int offset; } ;
struct TYPE_7__ {int length; int offset; } ;
struct TYPE_6__ {int length; int offset; } ;
struct TYPE_10__ {TYPE_4__ transp; TYPE_3__ blue; TYPE_2__ green; TYPE_1__ red; } ;
struct fb_info {int* pseudo_palette; TYPE_5__ var; } ;


 int EINVAL ;

__attribute__((used)) static int sh7760_setcolreg (u_int regno,
 u_int red, u_int green, u_int blue,
 u_int transp, struct fb_info *info)
{
 u32 *palette = info->pseudo_palette;

 if (regno >= 16)
  return -EINVAL;



 red >>= 16 - info->var.red.length;
 green >>= 16 - info->var.green.length;
 blue >>= 16 - info->var.blue.length;
 transp >>= 16 - info->var.transp.length;

 palette[regno] = (red << info->var.red.offset) |
  (green << info->var.green.offset) |
  (blue << info->var.blue.offset) |
  (transp << info->var.transp.offset);

 return 0;
}
