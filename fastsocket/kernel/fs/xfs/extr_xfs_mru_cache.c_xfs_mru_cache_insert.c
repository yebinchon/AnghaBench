
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int lock; int store; scalar_t__ lists; } ;
typedef TYPE_1__ xfs_mru_cache_t ;
struct TYPE_10__ {unsigned long key; void* value; int list_node; } ;
typedef TYPE_2__ xfs_mru_cache_elem_t ;


 int ASSERT (int) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int KM_SLEEP ;
 int _xfs_mru_cache_list_insert (TYPE_1__*,TYPE_2__*) ;
 int kmem_zone_free (int ,TYPE_2__*) ;
 TYPE_2__* kmem_zone_zalloc (int ,int ) ;
 int radix_tree_insert (int *,unsigned long,TYPE_2__*) ;
 scalar_t__ radix_tree_preload (int ) ;
 int radix_tree_preload_end () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int xfs_mru_elem_zone ;

int
xfs_mru_cache_insert(
 xfs_mru_cache_t *mru,
 unsigned long key,
 void *value)
{
 xfs_mru_cache_elem_t *elem;

 ASSERT(mru && mru->lists);
 if (!mru || !mru->lists)
  return EINVAL;

 elem = kmem_zone_zalloc(xfs_mru_elem_zone, KM_SLEEP);
 if (!elem)
  return ENOMEM;

 if (radix_tree_preload(GFP_KERNEL)) {
  kmem_zone_free(xfs_mru_elem_zone, elem);
  return ENOMEM;
 }

 INIT_LIST_HEAD(&elem->list_node);
 elem->key = key;
 elem->value = value;

 spin_lock(&mru->lock);

 radix_tree_insert(&mru->store, key, elem);
 radix_tree_preload_end();
 _xfs_mru_cache_list_insert(mru, elem);

 spin_unlock(&mru->lock);

 return 0;
}
