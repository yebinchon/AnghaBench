
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uea_softc {int reset; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int ENODEV ;
 struct uea_softc* dev_to_uea (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int uea_mutex ;

__attribute__((used)) static ssize_t reboot(struct device *dev, struct device_attribute *attr,
  const char *buf, size_t count)
{
 int ret = -ENODEV;
 struct uea_softc *sc;

 mutex_lock(&uea_mutex);
 sc = dev_to_uea(dev);
 if (!sc)
  goto out;
 sc->reset = 1;
 ret = count;
out:
 mutex_unlock(&uea_mutex);
 return ret;
}
