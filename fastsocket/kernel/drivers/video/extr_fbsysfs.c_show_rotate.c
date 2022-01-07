
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rotate; } ;
struct fb_info {TYPE_1__ var; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct fb_info* dev_get_drvdata (struct device*) ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t show_rotate(struct device *device,
      struct device_attribute *attr, char *buf)
{
 struct fb_info *fb_info = dev_get_drvdata(device);

 return snprintf(buf, PAGE_SIZE, "%d\n", fb_info->var.rotate);
}
