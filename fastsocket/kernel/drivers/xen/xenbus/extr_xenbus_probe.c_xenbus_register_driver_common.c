
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* mod_name; struct module* owner; int * bus; int name; } ;
struct xenbus_driver {TYPE_1__ driver; int name; } ;
struct xen_bus_type {int bus; } ;
struct module {int dummy; } ;


 int driver_register (TYPE_1__*) ;

int xenbus_register_driver_common(struct xenbus_driver *drv,
      struct xen_bus_type *bus,
      struct module *owner,
      const char *mod_name)
{
 drv->driver.name = drv->name;
 drv->driver.bus = &bus->bus;
 drv->driver.owner = owner;
 drv->driver.mod_name = mod_name;

 return driver_register(&drv->driver);
}
