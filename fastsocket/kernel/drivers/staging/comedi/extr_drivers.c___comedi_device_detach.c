
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {TYPE_1__* driver; scalar_t__ attached; } ;
struct TYPE_2__ {int (* detach ) (struct comedi_device*) ;} ;


 int cleanup_device (struct comedi_device*) ;
 int printk (char*) ;
 int stub1 (struct comedi_device*) ;

__attribute__((used)) static void __comedi_device_detach(struct comedi_device *dev)
{
 dev->attached = 0;
 if (dev->driver) {
  dev->driver->detach(dev);
 } else {
  printk("BUG: dev->driver=NULL in comedi_device_detach()\n");
 }
 cleanup_device(dev);
}
