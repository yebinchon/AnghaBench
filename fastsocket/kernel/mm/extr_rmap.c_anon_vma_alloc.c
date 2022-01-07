
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct anon_vma {int dummy; } ;


 int GFP_KERNEL ;
 int anon_vma_cachep ;
 struct anon_vma* kmem_cache_alloc (int ,int ) ;

__attribute__((used)) static inline struct anon_vma *anon_vma_alloc(void)
{
 return kmem_cache_alloc(anon_vma_cachep, GFP_KERNEL);
}
