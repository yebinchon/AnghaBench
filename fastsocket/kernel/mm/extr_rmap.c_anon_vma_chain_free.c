
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct anon_vma_chain {int dummy; } ;


 int anon_vma_chain_cachep ;
 int kmem_cache_free (int ,struct anon_vma_chain*) ;

void anon_vma_chain_free(struct anon_vma_chain *anon_vma_chain)
{
 kmem_cache_free(anon_vma_chain_cachep, anon_vma_chain);
}
