
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct display_device {int lock; TYPE_1__* driver; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int (* set_contrast ) (struct display_device*,int) ;} ;


 size_t EINVAL ;
 struct display_device* dev_get_drvdata (struct device*) ;
 scalar_t__ isspace (char) ;
 scalar_t__ likely (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*,int) ;
 int simple_strtoul (char const*,char**,int ) ;
 int stub1 (struct display_device*,int) ;

__attribute__((used)) static ssize_t display_store_contrast(struct device *dev,
     struct device_attribute *attr,
     const char *buf, size_t count)
{
 struct display_device *dsp = dev_get_drvdata(dev);
 ssize_t ret = -EINVAL, size;
 int contrast;
 char *endp;

 contrast = simple_strtoul(buf, &endp, 0);
 size = endp - buf;

 if (isspace(*endp))
  size++;

 if (size != count)
  return ret;

 mutex_lock(&dsp->lock);
 if (likely(dsp->driver && dsp->driver->set_contrast)) {
  pr_debug("display: set contrast to %d\n", contrast);
  dsp->driver->set_contrast(dsp, contrast);
  ret = count;
 }
 mutex_unlock(&dsp->lock);
 return ret;
}
