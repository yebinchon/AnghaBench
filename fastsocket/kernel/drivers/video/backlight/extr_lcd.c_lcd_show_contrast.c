
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lcd_device {int ops_lock; TYPE_1__* ops; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int (* get_contrast ) (struct lcd_device*) ;} ;


 int ENXIO ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sprintf (char*,char*,int) ;
 int stub1 (struct lcd_device*) ;
 int stub2 (struct lcd_device*) ;
 struct lcd_device* to_lcd_device (struct device*) ;

__attribute__((used)) static ssize_t lcd_show_contrast(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 int rc = -ENXIO;
 struct lcd_device *ld = to_lcd_device(dev);

 mutex_lock(&ld->ops_lock);
 if (ld->ops && ld->ops->get_contrast)
  rc = sprintf(buf, "%d\n", ld->ops->get_contrast(ld));
 mutex_unlock(&ld->ops_lock);

 return rc;
}
