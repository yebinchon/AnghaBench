
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {TYPE_1__* driver; } ;
struct TYPE_2__ {char const* driver_name; } ;



const char *comedi_get_driver_name(void *d)
{
 struct comedi_device *dev = (struct comedi_device *)d;

 return dev->driver->driver_name;
}
