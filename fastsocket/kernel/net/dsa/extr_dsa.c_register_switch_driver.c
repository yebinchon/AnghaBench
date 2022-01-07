
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsa_switch_driver {int list; } ;


 int dsa_switch_drivers ;
 int dsa_switch_drivers_mutex ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void register_switch_driver(struct dsa_switch_driver *drv)
{
 mutex_lock(&dsa_switch_drivers_mutex);
 list_add_tail(&drv->list, &dsa_switch_drivers);
 mutex_unlock(&dsa_switch_drivers_mutex);
}
