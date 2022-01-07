
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct anon_vma {int dummy; } ;


 int anon_vma_cachep ;
 int kmem_cache_free (int ,struct anon_vma*) ;

void anon_vma_free(struct anon_vma *anon_vma)
{
 kmem_cache_free(anon_vma_cachep, anon_vma);
}
