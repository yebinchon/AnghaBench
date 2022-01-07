
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int lock; int store; scalar_t__ lists; } ;
typedef TYPE_1__ xfs_mru_cache_t ;
struct TYPE_7__ {int list_node; void* value; } ;
typedef TYPE_2__ xfs_mru_cache_elem_t ;


 int ASSERT (int) ;
 int kmem_zone_free (int ,TYPE_2__*) ;
 int list_del (int *) ;
 TYPE_2__* radix_tree_delete (int *,unsigned long) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int xfs_mru_elem_zone ;

void *
xfs_mru_cache_remove(
 xfs_mru_cache_t *mru,
 unsigned long key)
{
 xfs_mru_cache_elem_t *elem;
 void *value = ((void*)0);

 ASSERT(mru && mru->lists);
 if (!mru || !mru->lists)
  return ((void*)0);

 spin_lock(&mru->lock);
 elem = radix_tree_delete(&mru->store, key);
 if (elem) {
  value = elem->value;
  list_del(&elem->list_node);
 }

 spin_unlock(&mru->lock);

 if (elem)
  kmem_zone_free(xfs_mru_elem_zone, elem);

 return value;
}
