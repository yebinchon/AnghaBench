
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int state; } ;
struct TYPE_4__ {TYPE_1__ phy; } ;
struct uea_softc {TYPE_2__ stats; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int ENODEV ;
 struct uea_softc* dev_to_uea (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snprintf (char*,int,char*,int) ;
 int uea_mutex ;

__attribute__((used)) static ssize_t read_status(struct device *dev, struct device_attribute *attr,
  char *buf)
{
 int ret = -ENODEV;
 struct uea_softc *sc;

 mutex_lock(&uea_mutex);
 sc = dev_to_uea(dev);
 if (!sc)
  goto out;
 ret = snprintf(buf, 10, "%08x\n", sc->stats.phy.state);
out:
 mutex_unlock(&uea_mutex);
 return ret;
}
