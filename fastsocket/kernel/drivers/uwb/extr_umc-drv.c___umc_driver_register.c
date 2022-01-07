
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* mod_name; int * bus; struct module* owner; int name; } ;
struct umc_driver {TYPE_1__ driver; int name; } ;
struct module {int dummy; } ;


 int driver_register (TYPE_1__*) ;
 int umc_bus_type ;

int __umc_driver_register(struct umc_driver *umc_drv, struct module *module,
     const char *mod_name)
{
 umc_drv->driver.name = umc_drv->name;
 umc_drv->driver.owner = module;
 umc_drv->driver.mod_name = mod_name;
 umc_drv->driver.bus = &umc_bus_type;

 return driver_register(&umc_drv->driver);
}
