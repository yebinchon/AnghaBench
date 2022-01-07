
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache {int size; } ;



__attribute__((used)) static inline int slab_index(void *p, struct kmem_cache *s, void *addr)
{
 return (p - addr) / s->size;
}
