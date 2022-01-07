
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* lists; } ;
typedef TYPE_1__ xfs_mru_cache_t ;


 int kmem_free (TYPE_1__*) ;
 int xfs_mru_cache_flush (TYPE_1__*) ;

void
xfs_mru_cache_destroy(
 xfs_mru_cache_t *mru)
{
 if (!mru || !mru->lists)
  return;

 xfs_mru_cache_flush(mru);

 kmem_free(mru->lists);
 kmem_free(mru);
}
