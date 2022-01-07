
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * bus; int name; } ;
struct vlynq_driver {TYPE_1__ driver; int name; } ;
struct module {int dummy; } ;


 int driver_register (TYPE_1__*) ;
 int vlynq_bus_type ;

int __vlynq_register_driver(struct vlynq_driver *driver, struct module *owner)
{
 driver->driver.name = driver->name;
 driver->driver.bus = &vlynq_bus_type;
 return driver_register(&driver->driver);
}
