
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_driver {int dummy; } ;
struct TYPE_2__ {int bus; } ;


 int bus_for_each_dev (int *,int *,struct device_driver*,int ) ;
 int is_device_connecting ;
 TYPE_1__ xenbus_frontend ;

__attribute__((used)) static int exists_connecting_device(struct device_driver *drv)
{
 return bus_for_each_dev(&xenbus_frontend.bus, ((void*)0), drv,
    is_device_connecting);
}
