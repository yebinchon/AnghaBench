
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uvesafb_par {int nocrtc; } ;
struct fb_info {struct uvesafb_par* par; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct fb_info* platform_get_drvdata (int ) ;
 int snprintf (char*,int ,char*,int) ;
 int to_platform_device (struct device*) ;

__attribute__((used)) static ssize_t uvesafb_show_nocrtc(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct fb_info *info = platform_get_drvdata(to_platform_device(dev));
 struct uvesafb_par *par = info->par;

 return snprintf(buf, PAGE_SIZE, "%d\n", par->nocrtc);
}
