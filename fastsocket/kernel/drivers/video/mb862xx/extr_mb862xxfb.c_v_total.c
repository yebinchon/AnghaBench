
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_var_screeninfo {int yres; int upper_margin; int lower_margin; int vsync_len; } ;



__attribute__((used)) static inline int v_total(struct fb_var_screeninfo *var)
{
 return var->yres + var->upper_margin +
  var->lower_margin + var->vsync_len;
}
