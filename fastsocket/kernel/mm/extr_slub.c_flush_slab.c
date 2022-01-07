
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache_cpu {int page; } ;
struct kmem_cache {int dummy; } ;


 int CPUSLAB_FLUSH ;
 int deactivate_slab (struct kmem_cache*,struct kmem_cache_cpu*) ;
 int slab_lock (int ) ;
 int stat (struct kmem_cache_cpu*,int ) ;

__attribute__((used)) static inline void flush_slab(struct kmem_cache *s, struct kmem_cache_cpu *c)
{
 stat(c, CPUSLAB_FLUSH);
 slab_lock(c->page);
 deactivate_slab(s, c);
}
