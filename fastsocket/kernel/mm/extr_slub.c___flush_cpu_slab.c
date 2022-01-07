
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache_cpu {scalar_t__ page; } ;
struct kmem_cache {int dummy; } ;


 int flush_slab (struct kmem_cache*,struct kmem_cache_cpu*) ;
 struct kmem_cache_cpu* get_cpu_slab (struct kmem_cache*,int) ;
 scalar_t__ likely (int) ;

__attribute__((used)) static inline void __flush_cpu_slab(struct kmem_cache *s, int cpu)
{
 struct kmem_cache_cpu *c = get_cpu_slab(s, cpu);

 if (likely(c && c->page))
  flush_slab(s, c);
}
