
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_var_screeninfo {void* yres_virtual; void* xres_virtual; } ;
struct fb_info {struct fb_var_screeninfo var; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int activate (struct fb_info*,struct fb_var_screeninfo*) ;
 struct fb_info* dev_get_drvdata (struct device*) ;
 void* simple_strtoul (char const*,char**,int ) ;

__attribute__((used)) static ssize_t store_virtual(struct device *device,
        struct device_attribute *attr,
        const char *buf, size_t count)
{
 struct fb_info *fb_info = dev_get_drvdata(device);
 struct fb_var_screeninfo var;
 char *last = ((void*)0);
 int err;

 var = fb_info->var;
 var.xres_virtual = simple_strtoul(buf, &last, 0);
 last++;
 if (last - buf >= count)
  return -EINVAL;
 var.yres_virtual = simple_strtoul(last, &last, 0);

 if ((err = activate(fb_info, &var)))
  return err;
 return count;
}
