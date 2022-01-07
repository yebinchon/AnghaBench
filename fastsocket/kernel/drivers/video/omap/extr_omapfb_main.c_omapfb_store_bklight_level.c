
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omapfb_device {TYPE_1__* panel; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int (* set_bklight_level ) (TYPE_1__*,unsigned int) ;} ;


 int EINVAL ;
 int ENODEV ;
 struct omapfb_device* dev_get_drvdata (struct device*) ;
 int sscanf (char const*,char*,unsigned int*) ;
 int stub1 (TYPE_1__*,unsigned int) ;

__attribute__((used)) static ssize_t omapfb_store_bklight_level(struct device *dev,
       struct device_attribute *attr,
       const char *buf, size_t size)
{
 struct omapfb_device *fbdev = dev_get_drvdata(dev);
 int r;

 if (fbdev->panel->set_bklight_level) {
  unsigned int level;

  if (sscanf(buf, "%10d", &level) == 1) {
   r = fbdev->panel->set_bklight_level(fbdev->panel,
           level);
  } else
   r = -EINVAL;
 } else
  r = -ENODEV;
 return r ? r : size;
}
