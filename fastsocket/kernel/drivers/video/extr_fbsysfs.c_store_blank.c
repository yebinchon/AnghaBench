
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int flags; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int FBINFO_MISC_USEREVENT ;
 int acquire_console_sem () ;
 struct fb_info* dev_get_drvdata (struct device*) ;
 int fb_blank (struct fb_info*,int ) ;
 int release_console_sem () ;
 int simple_strtoul (char const*,char**,int ) ;

__attribute__((used)) static ssize_t store_blank(struct device *device,
      struct device_attribute *attr,
      const char *buf, size_t count)
{
 struct fb_info *fb_info = dev_get_drvdata(device);
 char *last = ((void*)0);
 int err;

 acquire_console_sem();
 fb_info->flags |= FBINFO_MISC_USEREVENT;
 err = fb_blank(fb_info, simple_strtoul(buf, &last, 0));
 fb_info->flags &= ~FBINFO_MISC_USEREVENT;
 release_console_sem();
 if (err < 0)
  return err;
 return count;
}
