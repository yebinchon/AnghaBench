
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache {int cpu_slab; } ;
typedef int gfp_t ;


 int init_kmem_cache_cpu (struct kmem_cache*,int *) ;

__attribute__((used)) static inline int alloc_kmem_cache_cpus(struct kmem_cache *s, gfp_t flags)
{
 init_kmem_cache_cpu(s, &s->cpu_slab);
 return 1;
}
