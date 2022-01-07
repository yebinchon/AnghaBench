
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mutex; } ;
struct uwb_rc {int beaconing; TYPE_1__ uwb_dev; } ;
struct uwb_dev {struct uwb_rc* rc; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sprintf (char*,char*,int) ;
 struct uwb_dev* to_uwb_dev (struct device*) ;

__attribute__((used)) static ssize_t uwb_rc_beacon_show(struct device *dev,
      struct device_attribute *attr, char *buf)
{
 struct uwb_dev *uwb_dev = to_uwb_dev(dev);
 struct uwb_rc *rc = uwb_dev->rc;
 ssize_t result;

 mutex_lock(&rc->uwb_dev.mutex);
 result = sprintf(buf, "%d\n", rc->beaconing);
 mutex_unlock(&rc->uwb_dev.mutex);
 return result;
}
