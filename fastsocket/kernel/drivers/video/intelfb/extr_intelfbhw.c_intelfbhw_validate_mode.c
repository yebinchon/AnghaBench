
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int size; } ;
struct intelfb_info {TYPE_1__ fb; } ;
struct fb_var_screeninfo {int bits_per_pixel; int yres_virtual; int xres_virtual; int xres; int yres; int vmode; int pixclock; } ;


 int BtoKB (int) ;
 int DBG_MSG (char*) ;
 int FB_VMODE_DOUBLE ;
 int FB_VMODE_INTERLACED ;
 int HACTIVE_MASK ;
 int MAX_CLOCK ;
 int MIN_CLOCK ;
 int VACTIVE_MASK ;
 int WRN_MSG (char*,...) ;

int intelfbhw_validate_mode(struct intelfb_info *dinfo,
       struct fb_var_screeninfo *var)
{
 int bytes_per_pixel;
 int tmp;





 bytes_per_pixel = var->bits_per_pixel / 8;
 if (bytes_per_pixel == 3)
  bytes_per_pixel = 4;


 tmp = var->yres_virtual * var->xres_virtual * bytes_per_pixel;
 if (tmp > dinfo->fb.size) {
  WRN_MSG("Not enough video ram for mode "
   "(%d KByte vs %d KByte).\n",
   BtoKB(tmp), BtoKB(dinfo->fb.size));
  return 1;
 }


 if (var->xres - 1 > HACTIVE_MASK) {
  WRN_MSG("X resolution too large (%d vs %d).\n",
   var->xres, HACTIVE_MASK + 1);
  return 1;
 }
 if (var->yres - 1 > VACTIVE_MASK) {
  WRN_MSG("Y resolution too large (%d vs %d).\n",
   var->yres, VACTIVE_MASK + 1);
  return 1;
 }
 if (var->xres < 4) {
  WRN_MSG("X resolution too small (%d vs 4).\n", var->xres);
  return 1;
 }
 if (var->yres < 4) {
  WRN_MSG("Y resolution too small (%d vs 4).\n", var->yres);
  return 1;
 }


 if (var->vmode & FB_VMODE_DOUBLE) {
  WRN_MSG("Mode is double-scan.\n");
  return 1;
 }

 if ((var->vmode & FB_VMODE_INTERLACED) && (var->yres & 1)) {
  WRN_MSG("Odd number of lines in interlaced mode\n");
  return 1;
 }


 tmp = 1000000000 / var->pixclock;
 if (tmp < MIN_CLOCK) {
  WRN_MSG("Pixel clock is too low (%d MHz vs %d MHz).\n",
   (tmp + 500) / 1000, MIN_CLOCK / 1000);
  return 1;
 }
 if (tmp > MAX_CLOCK) {
  WRN_MSG("Pixel clock is too high (%d MHz vs %d MHz).\n",
   (tmp + 500) / 1000, MAX_CLOCK / 1000);
  return 1;
 }

 return 0;
}
