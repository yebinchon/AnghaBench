
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_var_screeninfo {int dummy; } ;
struct fb_info {struct fb_var_screeninfo var; } ;
struct aafb_par {int dummy; } ;


 int aafb_encode_var (struct fb_var_screeninfo*,struct aafb_par*) ;
 int aafb_get_par (struct aafb_par*) ;

__attribute__((used)) static int aafb_set_var(struct fb_var_screeninfo *var, int con,
   struct fb_info *info)
{
 struct aafb_par par;

 aafb_get_par(&par);
 aafb_encode_var(var, &par);
 info->var = *var;

 return 0;
}
