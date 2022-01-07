
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soundbus_driver {int driver; } ;


 int driver_unregister (int *) ;

void soundbus_unregister_driver(struct soundbus_driver *drv)
{
 driver_unregister(&drv->driver);
}
