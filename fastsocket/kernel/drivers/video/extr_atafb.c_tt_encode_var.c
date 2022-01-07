
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ msb_right; scalar_t__ length; scalar_t__ offset; } ;
struct TYPE_7__ {int length; scalar_t__ msb_right; scalar_t__ offset; } ;
struct fb_var_screeninfo {int pixclock; int left_margin; int right_margin; int upper_margin; int lower_margin; int hsync_len; int vsync_len; int height; int width; int xres; int xres_virtual; int yres; int bits_per_pixel; int yres_virtual; int yoffset; int vmode; scalar_t__ activate; scalar_t__ nonstd; scalar_t__ xoffset; TYPE_4__ transp; TYPE_3__ red; TYPE_3__ green; TYPE_3__ blue; scalar_t__ sync; scalar_t__ grayscale; } ;
struct TYPE_5__ {int sync; int mode; } ;
struct TYPE_6__ {TYPE_1__ tt; } ;
struct atafb_par {int yres_virtual; int screen_base; TYPE_2__ hw; } ;


 scalar_t__ FB_SYNC_EXT ;
 int FB_VMODE_NONINTERLACED ;
 int TT_SHIFTER_MODEMASK ;






 int hwscroll ;
 int memset (struct fb_var_screeninfo*,int ,int) ;
 int screen_base ;
 int screen_len ;
 int st_yres ;
 int sttt_xres ;
 int sttt_xres_virtual ;
 int tt_yres ;
 int use_hwscroll ;

__attribute__((used)) static int tt_encode_var(struct fb_var_screeninfo *var, struct atafb_par *par)
{
 int linelen;
 memset(var, 0, sizeof(struct fb_var_screeninfo));
 var->red.offset = 0;
 var->red.length = 4;
 var->red.msb_right = 0;
 var->grayscale = 0;

 var->pixclock = 31041;
 var->left_margin = 120;
 var->right_margin = 100;
 var->upper_margin = 8;
 var->lower_margin = 16;
 var->hsync_len = 140;
 var->vsync_len = 30;

 var->height = -1;
 var->width = -1;

 if (par->hw.tt.sync & 1)
  var->sync = 0;
 else
  var->sync = FB_SYNC_EXT;

 switch (par->hw.tt.mode & TT_SHIFTER_MODEMASK) {
 case 132:
  var->xres = sttt_xres / 2;
  var->xres_virtual = sttt_xres_virtual / 2;
  var->yres = st_yres / 2;
  var->bits_per_pixel = 4;
  break;
 case 131:
  var->xres = sttt_xres;
  var->xres_virtual = sttt_xres_virtual;
  var->yres = st_yres / 2;
  var->bits_per_pixel = 2;
  break;
 case 133:
  var->xres = sttt_xres;
  var->xres_virtual = sttt_xres_virtual;
  var->yres = st_yres;
  var->bits_per_pixel = 1;
  break;
 case 129:
  var->xres = sttt_xres / 2;
  var->xres_virtual = sttt_xres_virtual / 2;
  var->yres = tt_yres;
  var->bits_per_pixel = 8;
  break;
 case 128:
  var->xres = sttt_xres;
  var->xres_virtual = sttt_xres_virtual;
  var->yres = tt_yres;
  var->bits_per_pixel = 4;
  break;
 case 130:
  var->red.length = 0;
  var->xres = sttt_xres * 2;
  var->xres_virtual = sttt_xres_virtual * 2;
  var->yres = tt_yres * 2;
  var->bits_per_pixel = 1;
  break;
 }
 var->blue = var->green = var->red;
 var->transp.offset = 0;
 var->transp.length = 0;
 var->transp.msb_right = 0;
 linelen = var->xres_virtual * var->bits_per_pixel / 8;
 if (!use_hwscroll)
  var->yres_virtual = var->yres;
 else if (screen_len) {
  if (par->yres_virtual)
   var->yres_virtual = par->yres_virtual;
  else

   var->yres_virtual = screen_len / linelen;
 } else {
  if (hwscroll < 0)
   var->yres_virtual = 2 * var->yres;
  else
   var->yres_virtual = var->yres + hwscroll * 16;
 }
 var->xoffset = 0;
 if (screen_base)
  var->yoffset = (par->screen_base - screen_base) / linelen;
 else
  var->yoffset = 0;
 var->nonstd = 0;
 var->activate = 0;
 var->vmode = FB_VMODE_NONINTERLACED;
 return 0;
}
