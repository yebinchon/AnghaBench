
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct display_device {char* name; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct display_device* dev_get_drvdata (struct device*) ;
 int snprintf (char*,int ,char*,char*) ;

__attribute__((used)) static ssize_t display_show_name(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 struct display_device *dsp = dev_get_drvdata(dev);
 return snprintf(buf, PAGE_SIZE, "%s\n", dsp->name);
}
