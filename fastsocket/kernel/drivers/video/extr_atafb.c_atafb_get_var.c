
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fb_var_screeninfo {int dummy; } ;
struct fb_info {int dummy; } ;
struct atafb_par {int dummy; } ;
struct TYPE_2__ {int (* encode_var ) (struct fb_var_screeninfo*,struct atafb_par*) ;} ;


 int ata_get_par (struct atafb_par*) ;
 TYPE_1__* fbhw ;
 int stub1 (struct fb_var_screeninfo*,struct atafb_par*) ;

__attribute__((used)) static int atafb_get_var(struct fb_var_screeninfo *var, struct fb_info *info)
{
 struct atafb_par par;

 ata_get_par(&par);
 fbhw->encode_var(var, &par);

 return 0;
}
