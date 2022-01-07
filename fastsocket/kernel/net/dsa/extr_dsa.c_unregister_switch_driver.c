
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsa_switch_driver {int list; } ;


 int dsa_switch_drivers_mutex ;
 int list_del_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void unregister_switch_driver(struct dsa_switch_driver *drv)
{
 mutex_lock(&dsa_switch_drivers_mutex);
 list_del_init(&drv->list);
 mutex_unlock(&dsa_switch_drivers_mutex);
}
