
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vme_bus_num_mtx ;
 int vme_bus_numbers ;

__attribute__((used)) static void vme_free_bus_num(int bus)
{
 mutex_lock(&vme_bus_num_mtx);
 vme_bus_numbers |= ~(0x1 << bus);
 mutex_unlock(&vme_bus_num_mtx);
}
