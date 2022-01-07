
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mb_cache_entry {int e_lru_list; scalar_t__ e_queued; scalar_t__ e_used; struct mb_cache* e_cache; } ;
struct TYPE_2__ {scalar_t__ (* free ) (struct mb_cache_entry*,int ) ;} ;
struct mb_cache {int c_entry_count; int c_entry_cache; TYPE_1__ c_op; } ;
typedef int gfp_t ;


 int atomic_dec (int *) ;
 int kmem_cache_free (int ,struct mb_cache_entry*) ;
 int list_add (int *,int *) ;
 int mb_assert (int) ;
 int mb_cache_lru_list ;
 int mb_cache_spinlock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ stub1 (struct mb_cache_entry*,int ) ;

__attribute__((used)) static void
__mb_cache_entry_forget(struct mb_cache_entry *ce, gfp_t gfp_mask)
{
 struct mb_cache *cache = ce->e_cache;

 mb_assert(!(ce->e_used || ce->e_queued));
 if (cache->c_op.free && cache->c_op.free(ce, gfp_mask)) {


  spin_lock(&mb_cache_spinlock);
  list_add(&ce->e_lru_list, &mb_cache_lru_list);
  spin_unlock(&mb_cache_spinlock);
 } else {
  kmem_cache_free(cache->c_entry_cache, ce);
  atomic_dec(&cache->c_entry_count);
 }
}
