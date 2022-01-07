
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int lock; int store; scalar_t__ lists; } ;
typedef TYPE_1__ xfs_mru_cache_t ;
struct TYPE_8__ {void* value; int list_node; } ;
typedef TYPE_2__ xfs_mru_cache_elem_t ;


 int ASSERT (int) ;
 int __release (int ) ;
 int _xfs_mru_cache_list_insert (TYPE_1__*,TYPE_2__*) ;
 int list_del (int *) ;
 int mru_lock ;
 TYPE_2__* radix_tree_lookup (int *,unsigned long) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void *
xfs_mru_cache_lookup(
 xfs_mru_cache_t *mru,
 unsigned long key)
{
 xfs_mru_cache_elem_t *elem;

 ASSERT(mru && mru->lists);
 if (!mru || !mru->lists)
  return ((void*)0);

 spin_lock(&mru->lock);
 elem = radix_tree_lookup(&mru->store, key);
 if (elem) {
  list_del(&elem->list_node);
  _xfs_mru_cache_list_insert(mru, elem);
  __release(mru_lock);
 } else
  spin_unlock(&mru->lock);

 return elem ? elem->value : ((void*)0);
}
