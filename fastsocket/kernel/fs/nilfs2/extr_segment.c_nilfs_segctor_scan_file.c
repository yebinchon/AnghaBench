
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nilfs_sc_operations {int * collect_bmap; int * collect_node; int * collect_data; } ;
struct TYPE_3__ {int flags; } ;
struct nilfs_sc_info {TYPE_1__ sc_stage; } ;
struct inode {int dummy; } ;
struct TYPE_4__ {int i_bmap; } ;


 int BUG_ON (int) ;
 int LIST_HEAD (int ) ;
 int LLONG_MAX ;
 int NILFS_CF_NODE ;
 TYPE_2__* NILFS_I (struct inode*) ;
 int data_buffers ;
 int nilfs_bmap_lookup_dirty_buffers (int ,int *) ;
 size_t nilfs_lookup_dirty_data_buffers (struct inode*,int *,size_t,int ,int ) ;
 int nilfs_lookup_dirty_node_buffers (struct inode*,int *) ;
 int nilfs_segctor_apply_buffers (struct nilfs_sc_info*,struct inode*,int *,int *) ;
 size_t nilfs_segctor_buffer_rest (struct nilfs_sc_info*) ;
 int nilfs_segctor_end_finfo (struct nilfs_sc_info*,struct inode*) ;
 int node_buffers ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int nilfs_segctor_scan_file(struct nilfs_sc_info *sci,
       struct inode *inode,
       struct nilfs_sc_operations *sc_ops)
{
 LIST_HEAD(data_buffers);
 LIST_HEAD(node_buffers);
 int err;

 if (!(sci->sc_stage.flags & NILFS_CF_NODE)) {
  size_t n, rest = nilfs_segctor_buffer_rest(sci);

  n = nilfs_lookup_dirty_data_buffers(
   inode, &data_buffers, rest + 1, 0, LLONG_MAX);
  if (n > rest) {
   err = nilfs_segctor_apply_buffers(
    sci, inode, &data_buffers,
    sc_ops->collect_data);
   BUG_ON(!err);
   goto break_or_fail;
  }
 }
 nilfs_lookup_dirty_node_buffers(inode, &node_buffers);

 if (!(sci->sc_stage.flags & NILFS_CF_NODE)) {
  err = nilfs_segctor_apply_buffers(
   sci, inode, &data_buffers, sc_ops->collect_data);
  if (unlikely(err)) {

   nilfs_segctor_apply_buffers(
    sci, inode, &node_buffers, ((void*)0));
   goto break_or_fail;
  }
  sci->sc_stage.flags |= NILFS_CF_NODE;
 }

 err = nilfs_segctor_apply_buffers(
  sci, inode, &node_buffers, sc_ops->collect_node);
 if (unlikely(err))
  goto break_or_fail;

 nilfs_bmap_lookup_dirty_buffers(NILFS_I(inode)->i_bmap, &node_buffers);
 err = nilfs_segctor_apply_buffers(
  sci, inode, &node_buffers, sc_ops->collect_bmap);
 if (unlikely(err))
  goto break_or_fail;

 nilfs_segctor_end_finfo(sci, inode);
 sci->sc_stage.flags &= ~NILFS_CF_NODE;

 break_or_fail:
 return err;
}
