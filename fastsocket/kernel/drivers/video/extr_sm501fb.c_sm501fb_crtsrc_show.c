
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sm501fb_info {scalar_t__ regs; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 scalar_t__ SM501_DC_CRT_CONTROL ;
 unsigned long SM501_DC_CRT_CONTROL_SEL ;
 struct sm501fb_info* dev_get_drvdata (struct device*) ;
 unsigned long readl (scalar_t__) ;
 int snprintf (char*,int ,char*,char*) ;

__attribute__((used)) static ssize_t sm501fb_crtsrc_show(struct device *dev,
          struct device_attribute *attr, char *buf)
{
 struct sm501fb_info *info = dev_get_drvdata(dev);
 unsigned long ctrl;

 ctrl = readl(info->regs + SM501_DC_CRT_CONTROL);
 ctrl &= SM501_DC_CRT_CONTROL_SEL;

 return snprintf(buf, PAGE_SIZE, "%s\n", ctrl ? "crt" : "panel");
}
