
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct anon_vma_chain {int dummy; } ;


 int GFP_KERNEL ;
 int anon_vma_chain_cachep ;
 struct anon_vma_chain* kmem_cache_alloc (int ,int ) ;

__attribute__((used)) static inline struct anon_vma_chain *anon_vma_chain_alloc(void)
{
 return kmem_cache_alloc(anon_vma_chain_cachep, GFP_KERNEL);
}
