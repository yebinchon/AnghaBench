
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache {int dummy; } ;
typedef int gfp_t ;


 int __GFP_WAIT ;
 int kmem_flagcheck (struct kmem_cache*,int) ;
 int might_sleep_if (int) ;

__attribute__((used)) static inline void cache_alloc_debugcheck_before(struct kmem_cache *cachep,
      gfp_t flags)
{
 might_sleep_if(flags & __GFP_WAIT);



}
