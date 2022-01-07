
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xdr_netobj {int len; int data; } ;
struct TYPE_2__ {int len; int data; } ;
struct nfs4_stateowner {int so_ref; TYPE_1__ so_owner; } ;


 int GFP_KERNEL ;
 int kmalloc (int ,int ) ;
 struct nfs4_stateowner* kmem_cache_alloc (int ,int ) ;
 int kmem_cache_free (int ,struct nfs4_stateowner*) ;
 int kref_init (int *) ;
 int memcpy (int ,int ,int ) ;
 int stateowner_slab ;

__attribute__((used)) static inline struct nfs4_stateowner *
alloc_stateowner(struct xdr_netobj *owner)
{
 struct nfs4_stateowner *sop;

 if ((sop = kmem_cache_alloc(stateowner_slab, GFP_KERNEL))) {
  if ((sop->so_owner.data = kmalloc(owner->len, GFP_KERNEL))) {
   memcpy(sop->so_owner.data, owner->data, owner->len);
   sop->so_owner.len = owner->len;
   kref_init(&sop->so_ref);
   return sop;
  }
  kmem_cache_free(stateowner_slab, sop);
 }
 return ((void*)0);
}
