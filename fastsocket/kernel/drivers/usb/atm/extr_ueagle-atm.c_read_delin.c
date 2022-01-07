
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; } ;
struct TYPE_4__ {TYPE_1__ phy; } ;
struct uea_softc {TYPE_2__ stats; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ EAGLE_IV ;
 int ENODEV ;
 scalar_t__ UEA_CHIP_VERSION (struct uea_softc*) ;
 struct uea_softc* dev_to_uea (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sprintf (char*,char*,char*) ;
 int uea_mutex ;

__attribute__((used)) static ssize_t read_delin(struct device *dev, struct device_attribute *attr,
  char *buf)
{
 int ret = -ENODEV;
 struct uea_softc *sc;
 char *delin = "GOOD";

 mutex_lock(&uea_mutex);
 sc = dev_to_uea(dev);
 if (!sc)
  goto out;

 if (UEA_CHIP_VERSION(sc) == EAGLE_IV) {
  if (sc->stats.phy.flags & 0x4000)
   delin = "RESET";
  else if (sc->stats.phy.flags & 0x0001)
   delin = "LOSS";
 } else {
  if (sc->stats.phy.flags & 0x0C00)
   delin = "ERROR";
  else if (sc->stats.phy.flags & 0x0030)
   delin = "LOSS";
 }

 ret = sprintf(buf, "%s\n", delin);
out:
 mutex_unlock(&uea_mutex);
 return ret;
}
