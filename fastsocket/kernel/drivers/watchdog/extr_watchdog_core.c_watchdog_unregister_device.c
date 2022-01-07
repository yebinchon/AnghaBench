
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct watchdog_device {int * dev; int id; TYPE_1__ cdev; } ;


 int device_destroy (int ,int) ;
 int ida_simple_remove (int *,int ) ;
 int pr_err (char*,int) ;
 int watchdog_class ;
 int watchdog_dev_unregister (struct watchdog_device*) ;
 int watchdog_ida ;

void watchdog_unregister_device(struct watchdog_device *wdd)
{
 int ret;
 int devno;

 if (wdd == ((void*)0))
  return;

 devno = wdd->cdev.dev;
 ret = watchdog_dev_unregister(wdd);
 if (ret)
  pr_err("error unregistering /dev/watchdog (err=%d)\n", ret);
 device_destroy(watchdog_class, devno);
 ida_simple_remove(&watchdog_ida, wdd->id);
 wdd->dev = ((void*)0);
}
