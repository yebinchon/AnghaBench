
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* free_func ) (unsigned long,void*) ;} ;
typedef TYPE_1__ xfs_mru_cache_t ;


 int stub1 (unsigned long,void*) ;
 void* xfs_mru_cache_remove (TYPE_1__*,unsigned long) ;

void
xfs_mru_cache_delete(
 xfs_mru_cache_t *mru,
 unsigned long key)
{
 void *value = xfs_mru_cache_remove(mru, key);

 if (value)
  mru->free_func(key, value);
}
