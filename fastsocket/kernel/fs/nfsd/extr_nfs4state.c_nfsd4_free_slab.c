
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache {int dummy; } ;


 int kmem_cache_destroy (struct kmem_cache*) ;

__attribute__((used)) static void
nfsd4_free_slab(struct kmem_cache **slab)
{
 if (*slab == ((void*)0))
  return;
 kmem_cache_destroy(*slab);
 *slab = ((void*)0);
}
