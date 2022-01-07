
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct fb_info {TYPE_1__* fbops; } ;
struct TYPE_2__ {int (* fb_setcolreg ) (int,int,int,int,int,struct fb_info*) ;} ;


 int stub1 (int,int,int,int,int,struct fb_info*) ;

__attribute__((used)) static int atafb_setcolreg(u_int regno, u_int red, u_int green, u_int blue,
      u_int transp, struct fb_info *info)
{
 red >>= 8;
 green >>= 8;
 blue >>= 8;

 return info->fbops->fb_setcolreg(regno, red, green, blue, transp, info);
}
