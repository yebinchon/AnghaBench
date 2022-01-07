
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache {int dummy; } ;
struct array_cache {size_t avail; int touched; void** entry; } ;
typedef int gfp_t ;


 int STATS_INC_ALLOCHIT (struct kmem_cache*) ;
 int STATS_INC_ALLOCMISS (struct kmem_cache*) ;
 void* cache_alloc_refill (struct kmem_cache*,int ) ;
 int check_irq_off () ;
 struct array_cache* cpu_cache_get (struct kmem_cache*) ;
 int kmemleak_erase (void**) ;
 scalar_t__ likely (size_t) ;

__attribute__((used)) static inline void *____cache_alloc(struct kmem_cache *cachep, gfp_t flags)
{
 void *objp;
 struct array_cache *ac;

 check_irq_off();

 ac = cpu_cache_get(cachep);
 if (likely(ac->avail)) {
  STATS_INC_ALLOCHIT(cachep);
  ac->touched = 1;
  objp = ac->entry[--ac->avail];
 } else {
  STATS_INC_ALLOCMISS(cachep);
  objp = cache_alloc_refill(cachep, flags);




  ac = cpu_cache_get(cachep);
 }





 kmemleak_erase(&ac->entry[ac->avail]);
 return objp;
}
