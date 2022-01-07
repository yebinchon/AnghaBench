
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {TYPE_1__* driver; } ;
struct TYPE_2__ {int module; } ;


 int module_put (int ) ;

int comedi_close(void *d)
{
 struct comedi_device *dev = (struct comedi_device *)d;

 module_put(dev->driver->module);

 return 0;
}
