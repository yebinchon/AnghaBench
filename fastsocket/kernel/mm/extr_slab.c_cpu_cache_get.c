
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache {struct array_cache** array; } ;
struct array_cache {int dummy; } ;


 size_t smp_processor_id () ;

__attribute__((used)) static inline struct array_cache *cpu_cache_get(struct kmem_cache *cachep)
{
 return cachep->array[smp_processor_id()];
}
