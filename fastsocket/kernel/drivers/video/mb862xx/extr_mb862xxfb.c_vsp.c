
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_var_screeninfo {int yres; int lower_margin; } ;



__attribute__((used)) static inline int vsp(struct fb_var_screeninfo *var)
{
 return var->yres + var->lower_margin - 1;
}
