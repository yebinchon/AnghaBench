
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_dev {struct uwb_beca_e* bce; } ;
struct uwb_beca_e {int mutex; int rssi_stats; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stats_store (int *,char const*,size_t) ;
 struct uwb_dev* to_uwb_dev (struct device*) ;

__attribute__((used)) static ssize_t uwb_dev_RSSI_store(struct device *dev,
      struct device_attribute *attr,
      const char *buf, size_t size)
{
 struct uwb_dev *uwb_dev = to_uwb_dev(dev);
 struct uwb_beca_e *bce = uwb_dev->bce;
 ssize_t result;

 mutex_lock(&bce->mutex);
 result = stats_store(&uwb_dev->bce->rssi_stats, buf, size);
 mutex_unlock(&bce->mutex);
 return result;
}
