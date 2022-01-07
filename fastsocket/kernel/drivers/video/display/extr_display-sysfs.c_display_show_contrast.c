
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct display_device {int lock; TYPE_1__* driver; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int (* get_contrast ) (struct display_device*) ;} ;


 int ENXIO ;
 struct display_device* dev_get_drvdata (struct device*) ;
 scalar_t__ likely (TYPE_1__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sprintf (char*,char*,int) ;
 int stub1 (struct display_device*) ;
 int stub2 (struct display_device*) ;

__attribute__((used)) static ssize_t display_show_contrast(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 struct display_device *dsp = dev_get_drvdata(dev);
 ssize_t rc = -ENXIO;

 mutex_lock(&dsp->lock);
 if (likely(dsp->driver) && dsp->driver->get_contrast)
  rc = sprintf(buf, "%d\n", dsp->driver->get_contrast(dsp));
 mutex_unlock(&dsp->lock);
 return rc;
}
