
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svga_fb_format {int xpanstep; int visual; int type_aux; int type; int nonstd; int transp; int blue; int green; int red; int bits_per_pixel; } ;
struct fb_var_screeninfo {int nonstd; int transp; int blue; int green; int red; int bits_per_pixel; } ;
struct fb_fix_screeninfo {int xpanstep; int visual; int type_aux; int type; } ;


 int match_format (struct svga_fb_format const*,struct fb_var_screeninfo*) ;

int svga_match_format(const struct svga_fb_format *frm,
        struct fb_var_screeninfo *var,
        struct fb_fix_screeninfo *fix)
{
 int i = match_format(frm, var);

 if (i >= 0) {
  var->bits_per_pixel = frm[i].bits_per_pixel;
  var->red = frm[i].red;
  var->green = frm[i].green;
  var->blue = frm[i].blue;
  var->transp = frm[i].transp;
  var->nonstd = frm[i].nonstd;
  if (fix != ((void*)0)) {
   fix->type = frm[i].type;
   fix->type_aux = frm[i].type_aux;
   fix->visual = frm[i].visual;
   fix->xpanstep = frm[i].xpanstep;
  }
 }

 return i;
}
