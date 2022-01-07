
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache {int list; } ;
typedef int gfp_t ;


 int ARCH_KMALLOC_MINALIGN ;
 unsigned int SLAB_CACHE_DMA ;
 int SLUB_DMA ;
 int kmem_cache_open (struct kmem_cache*,int,char const*,int,int ,unsigned int,int *) ;
 int list_add (int *,int *) ;
 int panic (char*,char const*,int) ;
 int slab_caches ;
 scalar_t__ sysfs_slab_add (struct kmem_cache*) ;

__attribute__((used)) static struct kmem_cache *create_kmalloc_cache(struct kmem_cache *s,
  const char *name, int size, gfp_t gfp_flags)
{
 unsigned int flags = 0;

 if (gfp_flags & SLUB_DMA)
  flags = SLAB_CACHE_DMA;





 if (!kmem_cache_open(s, gfp_flags, name, size, ARCH_KMALLOC_MINALIGN,
        flags, ((void*)0)))
  goto panic;

 list_add(&s->list, &slab_caches);

 if (sysfs_slab_add(s))
  goto panic;
 return s;

panic:
 panic("Creation of kmalloc slab %s size=%d failed.\n", name, size);
}
