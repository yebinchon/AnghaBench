
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmap_block {int rcu_head; TYPE_1__* va; } ;
struct TYPE_2__ {int va_start; } ;


 int BUG_ON (int) ;
 unsigned long addr_to_vb_idx (int ) ;
 int call_rcu (int *,int ) ;
 int free_vmap_area_noflush (TYPE_1__*) ;
 struct vmap_block* radix_tree_delete (int *,unsigned long) ;
 int rcu_free_vb ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int vmap_block_tree ;
 int vmap_block_tree_lock ;

__attribute__((used)) static void free_vmap_block(struct vmap_block *vb)
{
 struct vmap_block *tmp;
 unsigned long vb_idx;

 vb_idx = addr_to_vb_idx(vb->va->va_start);
 spin_lock(&vmap_block_tree_lock);
 tmp = radix_tree_delete(&vmap_block_tree, vb_idx);
 spin_unlock(&vmap_block_tree_lock);
 BUG_ON(tmp != vb);

 free_vmap_area_noflush(vb->va);
 call_rcu(&vb->rcu_head, rcu_free_vb);
}
