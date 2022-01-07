
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {TYPE_1__* driver; int minor; } ;
struct TYPE_2__ {int driver_name; } ;


 int printk (char*,int ,int ,char const*) ;

void comedi_error(const struct comedi_device *dev, const char *s)
{
 printk("comedi%d: %s: %s\n", dev->minor, dev->driver->driver_name, s);
}
