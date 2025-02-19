
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_var_screeninfo {void* yoffset; void* xoffset; } ;
struct fb_info {struct fb_var_screeninfo var; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int acquire_console_sem () ;
 struct fb_info* dev_get_drvdata (struct device*) ;
 int fb_pan_display (struct fb_info*,struct fb_var_screeninfo*) ;
 int release_console_sem () ;
 void* simple_strtoul (char const*,char**,int ) ;

__attribute__((used)) static ssize_t store_pan(struct device *device,
    struct device_attribute *attr,
    const char *buf, size_t count)
{
 struct fb_info *fb_info = dev_get_drvdata(device);
 struct fb_var_screeninfo var;
 char *last = ((void*)0);
 int err;

 var = fb_info->var;
 var.xoffset = simple_strtoul(buf, &last, 0);
 last++;
 if (last - buf >= count)
  return -EINVAL;
 var.yoffset = simple_strtoul(last, &last, 0);

 acquire_console_sem();
 err = fb_pan_display(fb_info, &var);
 release_console_sem();

 if (err < 0)
  return err;
 return count;
}
