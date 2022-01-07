
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_var_screeninfo {int xres; int left_margin; int right_margin; int hsync_len; } ;



__attribute__((used)) static inline int h_total(struct fb_var_screeninfo *var)
{
 return var->xres + var->left_margin +
  var->right_margin + var->hsync_len;
}
