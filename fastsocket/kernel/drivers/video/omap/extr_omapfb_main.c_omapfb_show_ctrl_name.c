
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omapfb_device {TYPE_1__* ctrl; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {char* name; } ;


 int PAGE_SIZE ;
 struct omapfb_device* dev_get_drvdata (struct device*) ;
 int snprintf (char*,int ,char*,char*) ;

__attribute__((used)) static ssize_t omapfb_show_ctrl_name(struct device *dev,
         struct device_attribute *attr, char *buf)
{
 struct omapfb_device *fbdev = dev_get_drvdata(dev);

 return snprintf(buf, PAGE_SIZE, "%s\n", fbdev->ctrl->name);
}
