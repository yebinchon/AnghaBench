
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_stateid {int dummy; } ;


 int GFP_KERNEL ;
 struct nfs4_stateid* kmem_cache_alloc (int ,int ) ;
 int stateid_slab ;

__attribute__((used)) static inline struct nfs4_stateid *
nfs4_alloc_stateid(void)
{
 return kmem_cache_alloc(stateid_slab, GFP_KERNEL);
}
