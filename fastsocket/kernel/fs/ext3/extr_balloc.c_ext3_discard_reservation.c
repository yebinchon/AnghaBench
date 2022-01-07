
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_sb; } ;
struct ext3_reserve_window_node {int rsv_window; } ;
struct ext3_inode_info {struct ext3_block_alloc_info* i_block_alloc_info; } ;
struct ext3_block_alloc_info {struct ext3_reserve_window_node rsv_window_node; } ;
typedef int spinlock_t ;
struct TYPE_2__ {int s_rsv_window_lock; } ;


 struct ext3_inode_info* EXT3_I (struct inode*) ;
 TYPE_1__* EXT3_SB (int ) ;
 int rsv_is_empty (int *) ;
 int rsv_window_remove (int ,struct ext3_reserve_window_node*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trace_ext3_discard_reservation (struct inode*,struct ext3_reserve_window_node*) ;

void ext3_discard_reservation(struct inode *inode)
{
 struct ext3_inode_info *ei = EXT3_I(inode);
 struct ext3_block_alloc_info *block_i = ei->i_block_alloc_info;
 struct ext3_reserve_window_node *rsv;
 spinlock_t *rsv_lock = &EXT3_SB(inode->i_sb)->s_rsv_window_lock;

 if (!block_i)
  return;

 rsv = &block_i->rsv_window_node;
 if (!rsv_is_empty(&rsv->rsv_window)) {
  spin_lock(rsv_lock);
  if (!rsv_is_empty(&rsv->rsv_window)) {
   trace_ext3_discard_reservation(inode, rsv);
   rsv_window_remove(inode->i_sb, rsv);
  }
  spin_unlock(rsv_lock);
 }
}
