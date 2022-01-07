
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {scalar_t__ vm_pgoff; } ;
struct sp_node {int dummy; } ;
struct shared_policy {int dummy; } ;
struct TYPE_2__ {int nodes; } ;
struct mempolicy {int mode; int flags; TYPE_1__ v; } ;


 int ENOMEM ;
 int kmem_cache_free (int ,struct sp_node*) ;
 int* nodes_addr (int ) ;
 int pr_debug (char*,scalar_t__,unsigned long,int,int,int) ;
 int shared_policy_replace (struct shared_policy*,scalar_t__,scalar_t__,struct sp_node*) ;
 int sn_cache ;
 struct sp_node* sp_alloc (scalar_t__,scalar_t__,struct mempolicy*) ;
 unsigned long vma_pages (struct vm_area_struct*) ;

int mpol_set_shared_policy(struct shared_policy *info,
   struct vm_area_struct *vma, struct mempolicy *npol)
{
 int err;
 struct sp_node *new = ((void*)0);
 unsigned long sz = vma_pages(vma);

 pr_debug("set_shared_policy %lx sz %lu %d %d %lx\n",
   vma->vm_pgoff,
   sz, npol ? npol->mode : -1,
   npol ? npol->flags : -1,
   npol ? nodes_addr(npol->v.nodes)[0] : -1);

 if (npol) {
  new = sp_alloc(vma->vm_pgoff, vma->vm_pgoff + sz, npol);
  if (!new)
   return -ENOMEM;
 }
 err = shared_policy_replace(info, vma->vm_pgoff, vma->vm_pgoff+sz, new);
 if (err && new)
  kmem_cache_free(sn_cache, new);
 return err;
}
