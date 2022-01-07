
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct umc_driver {int driver; } ;


 int driver_unregister (int *) ;

void umc_driver_unregister(struct umc_driver *umc_drv)
{
 driver_unregister(&umc_drv->driver);
}
