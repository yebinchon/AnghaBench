
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct display_device {int lock; TYPE_1__* driver; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int max_contrast; } ;


 int ENXIO ;
 struct display_device* dev_get_drvdata (struct device*) ;
 scalar_t__ likely (TYPE_1__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t display_show_max_contrast(struct device *dev,
     struct device_attribute *attr,
     char *buf)
{
 struct display_device *dsp = dev_get_drvdata(dev);
 ssize_t rc = -ENXIO;

 mutex_lock(&dsp->lock);
 if (likely(dsp->driver))
  rc = sprintf(buf, "%d\n", dsp->driver->max_contrast);
 mutex_unlock(&dsp->lock);
 return rc;
}
