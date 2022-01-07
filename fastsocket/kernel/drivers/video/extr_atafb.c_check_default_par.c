
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_var_screeninfo {int xres_virtual; int yres_virtual; int bits_per_pixel; void* activate; } ;


 void* FB_ACTIVATE_TEST ;
 struct fb_var_screeninfo* atafb_predefined ;
 unsigned long default_mem_req ;
 int default_par ;
 scalar_t__ do_fb_set_var (struct fb_var_screeninfo*,int) ;
 int get_video_mode (char*) ;
 int panic (char*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static void check_default_par(int detected_mode)
{
 char default_name[10];
 int i;
 struct fb_var_screeninfo var;
 unsigned long min_mem;


 if (default_par) {
  var = atafb_predefined[default_par - 1];
  var.activate = FB_ACTIVATE_TEST;
  if (do_fb_set_var(&var, 1))
   default_par = 0;
 }

 if (!default_par) {
  var = atafb_predefined[detected_mode - 1];
  var.activate = FB_ACTIVATE_TEST;
  if (!do_fb_set_var(&var, 1))
   default_par = detected_mode;
 }

 if (!default_par) {

  for (i = 1; i < 10; i++) {
   sprintf(default_name,"default%d", i);
   default_par = get_video_mode(default_name);
   if (!default_par)
    panic("can't set default video mode");
   var = atafb_predefined[default_par - 1];
   var.activate = FB_ACTIVATE_TEST;
   if (!do_fb_set_var(&var,1))
    break;
  }
 }
 min_mem = var.xres_virtual * var.yres_virtual * var.bits_per_pixel / 8;
 if (default_mem_req < min_mem)
  default_mem_req = min_mem;
}
