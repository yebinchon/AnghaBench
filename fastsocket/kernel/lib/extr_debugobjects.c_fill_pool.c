
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct debug_obj {int node; } ;
typedef int gfp_t ;


 int GFP_ATOMIC ;
 scalar_t__ ODEBUG_POOL_MIN_LEVEL ;
 int __GFP_NORETRY ;
 int __GFP_NOWARN ;
 int hlist_add_head (int *,int *) ;
 struct debug_obj* kmem_cache_zalloc (int ,int) ;
 scalar_t__ likely (int) ;
 int obj_cache ;
 int obj_pool ;
 scalar_t__ obj_pool_free ;
 int pool_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int fill_pool(void)
{
 gfp_t gfp = GFP_ATOMIC | __GFP_NORETRY | __GFP_NOWARN;
 struct debug_obj *new;
 unsigned long flags;

 if (likely(obj_pool_free >= ODEBUG_POOL_MIN_LEVEL))
  return obj_pool_free;

 if (unlikely(!obj_cache))
  return obj_pool_free;

 while (obj_pool_free < ODEBUG_POOL_MIN_LEVEL) {

  new = kmem_cache_zalloc(obj_cache, gfp);
  if (!new)
   return obj_pool_free;

  spin_lock_irqsave(&pool_lock, flags);
  hlist_add_head(&new->node, &obj_pool);
  obj_pool_free++;
  spin_unlock_irqrestore(&pool_lock, flags);
 }
 return obj_pool_free;
}
